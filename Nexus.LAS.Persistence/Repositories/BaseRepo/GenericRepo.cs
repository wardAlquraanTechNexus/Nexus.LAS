﻿using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence.Repositories.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Domain.Entities.Base;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Linq.Dynamic.Core;
using System.Linq.Expressions;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.Repositories.BaseRepo
{
    public class GenericRepo<T>  :  IGenericRepo<T> where T : class
    {
        protected readonly NexusLASDbContext _context;
        protected readonly DbSet<T> _dbSet;

        public GenericRepo(NexusLASDbContext context)
        {
            _context = context;
            _dbSet = _context.Set<T>();
        }

        public async Task<IReadOnlyList<T>> GetAsync()
        {
            return await _dbSet.AsNoTracking().ToListAsync();
        }

        public async Task<T?> GetAsync(object id)
        {
            var keyProp = typeof(T).GetProperties().Where(x => x.GetCustomAttribute<KeyAttribute>() != null).FirstOrDefault();

            var parameter = Expression.Parameter(typeof(T), "x");
            var propertyAccess = Expression.Property(parameter, keyProp);
            var equals = Expression.Equal(propertyAccess, Expression.Constant(id));
            var lambda = Expression.Lambda<Func<T, bool>>(equals, parameter);

            return await _dbSet.AsNoTracking().FirstOrDefaultAsync(lambda);

        }

        public async Task<IReadOnlyList<T>> GetAllAsync(IQueryCollection query)
        {
            IQueryable<T> queryable = _dbSet;

            queryable
                .SearchByProperties<T>(query)
                .Order<T>(query)
                .Paginate(query);

            return await queryable.ToListAsync();

        
        }
        public async Task<PagingResult<T>> GetAsync(IQueryCollection query)
        {
            IQueryable<T> queryable = _dbSet;
            int page;
            int pageSize;
            int totalRecords;
            int totalPages;
            queryable =queryable.SearchByProperties<T>(query);
            totalRecords = await queryable.CountAsync();

            queryable =queryable.Order<T>(query);

            queryable = queryable.Paginate(query, out page, out pageSize);
     
            totalPages = (int)Math.Ceiling((double)totalRecords / pageSize);

            var data = await queryable.ToListAsync();

            return new PagingResult<T>() { 
                Collection = data , 
                Page = page , 
                PageSize = pageSize , 
                TotalPages = totalPages , 
                TotalRecords = totalRecords
            };
        }



        public async Task<object> CreateAsync(T entity)
        {
            await _dbSet.AddAsync(entity);
            await _context.SaveChangesAsync();
            var keyProp = QueryCollectionMethods.GetKeyProperty<T>();
            return keyProp.GetValue(entity);
        }

        public async Task UpdateAsync(T entity)
        {
            _context.Entry(entity).State = EntityState.Modified; //more efficient
            await _context.SaveChangesAsync();
        }

        public async Task DeleteAsync(T entity)
        {
            _dbSet.Remove(entity);
            await _context.SaveChangesAsync();
        }

       
    }

}
