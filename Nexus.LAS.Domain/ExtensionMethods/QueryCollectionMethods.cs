using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Http.Internal;
using Microsoft.Extensions.Primitives;
using System.ComponentModel.DataAnnotations;
using System.Linq.Dynamic.Core;
using System.Reflection;

namespace Nexus.LAS.Domain.ExtensionMethods;

public static class QueryCollectionMethods
{
    public static IQueryCollection ToQueryCollection<T>(T request)
    {
        var dict = new Dictionary<string, StringValues>();
        foreach (var prop in request.GetType().GetProperties(BindingFlags.Public | BindingFlags.Instance))
        {
            var value = prop.GetValue(request);
            if (value == null) continue;

            switch (value)
            {
                case string s:
                    dict[prop.Name] = new StringValues(s);
                    break;
                case IEnumerable<string> stringEnumerable:
                    dict[prop.Name] = new StringValues(stringEnumerable.ToArray());
                    break;
                case IEnumerable<object> objEnumerable:
                    dict[prop.Name] = new StringValues(objEnumerable.Select(x => x?.ToString() ?? "").ToArray());
                    break;
                default:
                    dict[prop.Name] = new StringValues(value.ToString() ?? "");
                    break;
            }
        }

        return new QueryCollection(dict);
    }

    public static IQueryable<T> SearchByProperties<T>(this IQueryable<T> queryable, IQueryCollection query)
    {
        foreach (var param in query)
        {
            string key = param.Key;
            string value = param.Value;

            if (string.IsNullOrWhiteSpace(value))
                continue;

            if (key.Equals("orderBy", StringComparison.OrdinalIgnoreCase) ||
                key.Equals("orderDir", StringComparison.OrdinalIgnoreCase) ||
                key.Equals("page", StringComparison.OrdinalIgnoreCase) ||
                key.Equals("pageSize", StringComparison.OrdinalIgnoreCase))
                continue;

            var prop = typeof(T).GetProperties()
           .FirstOrDefault(p => p.Name.Equals(key, StringComparison.OrdinalIgnoreCase));

            if (prop != null)
            {
                // Apply filter as: propName.Contains(value) for strings, or == for others
                if (prop.PropertyType == typeof(string))
                {
                    queryable = queryable.Where($"{prop.Name} == @0", value);
                }
                else
                {
                    var targetType = Nullable.GetUnderlyingType(prop.PropertyType) ?? prop.PropertyType;
                    var typedValue = Convert.ChangeType(value, targetType);

                    queryable = queryable.Where($"{prop.Name} == @0", typedValue);
                }
            }
        }

        return queryable;
    }
    public static IQueryable<T> SearchByParams<T, Params>(this IQueryable<T> queryable, Params @params) where Params : class
    {
        foreach (var paramProp in @params.GetType().GetProperties(BindingFlags.Public | BindingFlags.Instance))
        {
            string key = paramProp.Name;
            object? objValue = paramProp.GetValue(@params);
            string value = objValue?.ToString()?.Trim() ?? "";

            if (string.IsNullOrWhiteSpace(value))
                continue;

            // Skip pagination and ordering properties
            if (key.Equals("orderBy", StringComparison.OrdinalIgnoreCase) ||
                key.Equals("orderDir", StringComparison.OrdinalIgnoreCase) ||
                key.Equals("page", StringComparison.OrdinalIgnoreCase) ||
                key.Equals("pageSize", StringComparison.OrdinalIgnoreCase))
                continue;

            var prop = typeof(T).GetProperty(key, BindingFlags.Public | BindingFlags.Instance | BindingFlags.IgnoreCase);
            if (prop == null || value is null)
                continue;

            if (prop.PropertyType == typeof(string))
            {
                if (string.IsNullOrEmpty(value))
                    continue;
                queryable = queryable.Where($"{prop.Name}.Contains(@0)", value);
            }
            else
            {
                var targetType = Nullable.GetUnderlyingType(prop.PropertyType) ?? prop.PropertyType;
                try
                {
                    var typedValue = Convert.ChangeType(value, targetType);
                    queryable = queryable.Where($"{prop.Name} == @0", typedValue);
                }
                catch
                {
                    // Skip invalid conversions
                    continue;
                }
            }
        }

        return queryable;
    }


    public static IQueryable<T> Order<T>(this IQueryable<T> queryable, IQueryCollection query)
    {
        string orderBy = query.TryGetValue("orderBy", out var ob) ? ob.ToString() : null;
        string orderDir = query.TryGetValue("orderDir", out var od) ? od.ToString().ToLower() : "asc";

        if (!string.IsNullOrEmpty(orderBy))
        {
            return queryable.OrderBy(orderBy, orderDir);
        }
        return queryable;
    }
    public static IQueryable<T> Order<T, Params>(this IQueryable<T> queryable, Params @params)
    {
        var orderByProp = @params.GetType().GetProperty("orderBy", BindingFlags.Public | BindingFlags.Instance | BindingFlags.IgnoreCase);
        var orderDirProp = @params.GetType().GetProperty("orderDir", BindingFlags.Public | BindingFlags.Instance | BindingFlags.IgnoreCase);

        string? orderBy = orderByProp?.GetValue(@params)?.ToString();
        if (string.IsNullOrEmpty(orderBy))
            return queryable; // no ordering if orderBy is missing

        string? orderDir = orderDirProp?.GetValue(@params)?.ToString()?.ToLower();
        if (orderDir != "desc")
            orderDir = "asc"; // default to ascending

        return queryable.OrderBy($"{orderBy} {orderDir}");
    }


    public static IQueryable<T> Order<T>(this IQueryable<T> queryable, string orderBy, string orderDir = "asc")
    {

        if (!string.IsNullOrEmpty(orderBy))
        {
            var orderByProp = typeof(T).GetProperties()
                .FirstOrDefault(p => p.Name.Equals(orderBy, StringComparison.OrdinalIgnoreCase));

            if (orderByProp != null)
            {
                var direction = orderDir == "desc" ? "descending" : "ascending";
                queryable = queryable.OrderBy($"{orderByProp.Name} {direction}");
            }
        }
        return queryable;
    }
    public static IQueryable<T> Paginate<T>(this IQueryable<T> queryable, IQueryCollection query, out int page, out int pageSize)
    {
        page = query.TryGetValue("page", out var pVal) && int.TryParse(pVal, out var pNum) ? pNum : 0;
        pageSize = query.TryGetValue("pageSize", out var psVal) && int.TryParse(psVal, out var psNum) ? psNum : 10;

        queryable = queryable.Skip((page) * pageSize).Take(pageSize);
        return queryable;
    }
    public static IQueryable<T> Paginate<T, Params>(this IQueryable<T> queryable, Params @params, out int page, out int pageSize)
    {
        page = 1;      // default page
        pageSize = 10; // default page size

        // Get "page" property
        var pageProp = typeof(Params).GetProperty("page", BindingFlags.Public | BindingFlags.Instance | BindingFlags.IgnoreCase);
        if (pageProp != null)
        {
            var pageValue = pageProp.GetValue(@params)?.ToString();
            if (int.TryParse(pageValue, out var pNum) && pNum > 0)
                page = pNum;
        }

        // Get "pageSize" property
        var pageSizeProp = typeof(Params).GetProperty("pageSize", BindingFlags.Public | BindingFlags.Instance | BindingFlags.IgnoreCase);
        if (pageSizeProp != null)
        {
            var pageSizeValue = pageSizeProp.GetValue(@params)?.ToString();
            if (int.TryParse(pageSizeValue, out var pgNum) && pgNum > 0)
                pageSize = pgNum;
        }

        queryable = queryable.Skip((page - 1) * pageSize).Take(pageSize);
        return queryable;
    }
    public static IQueryable<T> Paginate<T>(this IQueryable<T> queryable, IQueryCollection query)
    {
        int page = query.TryGetValue("page", out var pVal) && int.TryParse(pVal, out var pNum) ? pNum : 0;
        int pageSize = query.TryGetValue("pageSize", out var psVal) && int.TryParse(psVal, out var psNum) ? psNum : 10;

        queryable = queryable.Skip((page) * pageSize).Take(pageSize);
        return queryable;
    }
    public static IQueryable<T> Paginate<T>(this IQueryable<T> queryable, int page, int pageSize)
    {
        queryable = queryable.Skip((page) * pageSize).Take(pageSize);
        return queryable;
    }

    public static PropertyInfo GetKeyProperty<T>()
    {
        return typeof(T).GetProperties().Where(x => x.GetCustomAttribute<KeyAttribute>() != null).FirstOrDefault();
    }
}
