using Microsoft.AspNetCore.Http;
using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Domain.Entities.Base;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Services.Base
{
    public class GenericService<T> : IGenericService<T> where T : BaseEntity
    {
        protected readonly NexusLASDbContext _context;
        public GenericService(NexusLASDbContext context)
        {
            _context = context;
        }

        public virtual async Task<IReadOnlyList<T>> GetAsync()
        {
            GenericRepo<T> repo = new GenericRepo<T>(_context);
            return await repo.GetAsync();
        }

        public virtual async Task<T?> GetAsync(int id)
        {
            GenericRepo<T> repo = new GenericRepo<T>(_context);
            return await repo.GetAsync(id);
        }
        public virtual async Task<IReadOnlyList<T>> GetAllAsync(IQueryCollection query)
        {
            GenericRepo<T> repo = new GenericRepo<T>(_context);
            return await repo.GetAllAsync(query);
        }

        public virtual async Task<PagingResult<T>> GetAsync(IQueryCollection query)
        {
            GenericRepo<T> repo = new GenericRepo<T>(_context);
            return await repo.GetAsync(query);
        }

        public virtual async Task<int> CreateAsync(T entity)
        {
            GenericRepo<T> repo = new GenericRepo<T>(_context);
            return await repo.CreateAsync(entity);
        }

        public virtual async Task UpdateAsync(T entity)
        {
            GenericRepo<T> repo = new GenericRepo<T>(_context);
            await repo.UpdateAsync(entity);
        }
        public virtual async Task DeleteAsync(int id)
        {
            GenericRepo<T> repo = new GenericRepo<T>(_context);
            await repo.DeleteAsync(id);
        }
    }
}
