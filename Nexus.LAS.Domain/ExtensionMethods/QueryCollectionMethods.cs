using Microsoft.AspNetCore.Http;
using System.ComponentModel.DataAnnotations;
using System.Linq.Dynamic.Core;
using System.Reflection;

namespace Nexus.LAS.Domain.ExtensionMethods;

public static class QueryCollectionMethods
{
    public static IQueryable<T> SearchByProperties<T>(this IQueryable<T> queryable ,  IQueryCollection query)
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


    public static IQueryable<T> Order<T>(this IQueryable<T> queryable, IQueryCollection query)
    {
        string orderBy = query.TryGetValue("orderBy", out var ob) ? ob.ToString() : null;
        string orderDir = query.TryGetValue("orderDir", out var od) ? od.ToString().ToLower() : "asc";

        if (!string.IsNullOrEmpty(orderBy))
        {
            return queryable.OrderBy(orderBy , orderDir);
        }
        return queryable;
    }
    public static IQueryable<T> Order<T>(this IQueryable<T> queryable, string orderBy , string orderDir = "asc")
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
    public static IQueryable<T> Paginate<T>(this IQueryable<T> queryable, IQueryCollection query , out int page , out int pageSize)
    {
        page = query.TryGetValue("page", out var pVal) && int.TryParse(pVal, out var pNum) ? pNum : 0;
        pageSize = query.TryGetValue("pageSize", out var psVal) && int.TryParse(psVal, out var psNum) ? psNum : 10;

        queryable = queryable.Skip((page) * pageSize).Take(pageSize);
        return queryable;
    }
    public static IQueryable<T> Paginate<T>(this IQueryable<T> queryable, IQueryCollection query)
    {
        int page = query.TryGetValue("page", out var pVal) && int.TryParse(pVal, out var pNum) ? pNum : 0;
        int pageSize = query.TryGetValue("pageSize", out var psVal) && int.TryParse(psVal, out var psNum) ? psNum : 10;

        queryable = queryable.Skip((page) * pageSize).Take(pageSize);
        return queryable;
    }
    public static IQueryable<T> Paginate<T>(this IQueryable<T> queryable, int page , int pageSize)
    {
        queryable = queryable.Skip((page) * pageSize).Take(pageSize);
        return queryable;
    }

    public static PropertyInfo GetKeyProperty<T>()
    {
        return typeof(T).GetProperties().Where(x => x.GetCustomAttribute<KeyAttribute>() != null).FirstOrDefault();
    }
}
