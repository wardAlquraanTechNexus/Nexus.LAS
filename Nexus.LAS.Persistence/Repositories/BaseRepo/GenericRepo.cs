using EFCore.BulkExtensions;
using Microsoft.AspNetCore.Http;
using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence.Repositories.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Domain.Entities.Base;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;
using System.Data.SqlTypes;
using System.Linq.Dynamic.Core;

namespace Nexus.LAS.Persistence.Repositories.BaseRepo
{
    public class GenericRepo<T> : IGenericRepo<T> where T : BaseEntity
    {
        protected readonly NexusLASDbContext _context;
        protected readonly DbSet<T> _dbSet;

        public GenericRepo(NexusLASDbContext context)
        {
            _context = context;
            _dbSet = _context.Set<T>();
        }

        public virtual async Task<IReadOnlyList<T>> GetAsync()
        {
            return await _dbSet.AsNoTracking().ToListAsync();
        }

        public virtual async Task<T?> GetAsync(int id)
        {
            var res = await _dbSet.AsNoTracking().FirstOrDefaultAsync(x => x.Id == id);
            return res;

        }

        public virtual async Task<IReadOnlyList<T>> GetAllAsync(IQueryCollection query)
        {
            IQueryable<T> queryable = _dbSet;

            queryable = queryable
                .SearchByProperties<T>(query);
            
            queryable = queryable
                .Order<T>(query);

            

            return await queryable.ToListAsync();


        }
        public virtual async Task<PagingResult<T>> GetAsync(IQueryCollection query)
        {
            IQueryable<T> queryable = _dbSet;
            int page;
            int pageSize;
            int totalRecords;
            int totalPages;
            queryable = queryable.SearchByProperties<T>(query);
            totalRecords = await queryable.CountAsync();

            queryable = queryable.Order<T>(query);

            queryable = queryable.Paginate(query, out page, out pageSize);

            totalPages = (int)Math.Ceiling((double)totalRecords / pageSize);
            List<T> data = new();
            try
            {
                data = await queryable.ToListAsync();
            }
            catch (SqlNullValueException ex)
            {
                //ignore
            }
            catch(Exception ex)
            {
                throw;
            }
            return new PagingResult<T>()
            {
                Collection = data,
                Page = page,
                PageSize = pageSize,
                TotalPages = totalPages,
                TotalRecords = totalRecords
            };
        }



        public virtual async Task<int> CreateAsync(T entity)
        {
            await _dbSet.AddAsync(entity);
            await _context.SaveChangesAsync();

            return entity.Id;
        }

        public virtual async Task UpdateAsync(T entity)
        {
            _context.Entry(entity).State = EntityState.Modified;
            await _context.SaveChangesAsync();
        }

        public virtual async Task DeleteAsync(int id)
        {
            var entity = _dbSet.FirstOrDefault(x=>x.Id == id);
            if(entity != null)
            {
                entity.IsDeleted = true;
                await _context.SaveChangesAsync();

            }
        }

        public async Task<List<T>> BulkUpsertAsync(List<T> entities)
        {
            using var transaction = await _context.Database.BeginTransactionAsync();

            try
            {
                await _context.BulkInsertOrUpdateAsync(entities);

                await transaction.CommitAsync();
                return entities;

            }
            catch
            {
                await transaction.RollbackAsync();
                throw;
            }
        }

    }

}
