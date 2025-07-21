using Microsoft.AspNetCore.Http;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts.Presistence.Services.Base
{
    public interface IGenericService<T> where T : BaseEntity
    {
        Task<IReadOnlyList<T>> GetAsync();
        Task<T?> GetAsync(int id);
        Task<IReadOnlyList<T>> GetAllAsync(IQueryCollection query);
        Task<PagingResult<T>> GetAsync(IQueryCollection query);
        Task<int> CreateAsync(T entity);
        Task UpdateAsync(T entity);
        Task DeleteAsync(int entity);
        Task<List<T>> BulkUpsertAsync(List<T> entities);
    }
}
