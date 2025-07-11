﻿using Microsoft.AspNetCore.Http;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Services.Base
{
    public class GenericService<T> where T : class
    {
        protected readonly NexusLASDbContext _context;
        public GenericService(NexusLASDbContext context) 
        {
            _context = context;
        }

        public async Task<IReadOnlyList<T>> GetAsync()
        {
            GenericRepo<T> repo = new GenericRepo<T>(_context);
            return await repo.GetAsync();
        }

        public async Task<T?> GetAsync(object id)
        {
            GenericRepo<T> repo = new GenericRepo<T>(_context);
            return await repo.GetAsync(id);
        }
        public async Task<IReadOnlyList<T>> GetAllAsync(IQueryCollection query)
        {
            GenericRepo<T> repo = new GenericRepo<T>(_context);
            return await repo.GetAllAsync(query);
        }

        public async Task<PagingResult<T>> GetAsync(IQueryCollection query)
        {
            GenericRepo<T> repo = new GenericRepo<T>(_context);
            return await repo.GetAsync(query);
        }

        public async Task<object> CreateAsync(T entity)
        {
            GenericRepo<T> repo = new GenericRepo<T>(_context);
            return await repo.CreateAsync(entity);
        }

        public async Task UpdateAsync(T entity)
        {
            GenericRepo<T> repo = new GenericRepo<T>(_context);
            await repo.UpdateAsync(entity);
        }
        public async Task DeleteAsync(T entity)
        {
            GenericRepo<T> repo = new GenericRepo<T>(_context);
            await repo.DeleteAsync(entity);
        }
    }
}
