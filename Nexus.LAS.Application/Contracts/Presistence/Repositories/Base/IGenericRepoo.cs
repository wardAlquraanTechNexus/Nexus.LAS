using Microsoft.AspNetCore.Http;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.Base;
using Nexus.LAS.Domain.Entities.Base;

namespace Nexus.LAS.Application.Contracts.Presistence.Repositories.Base
{
    public interface IGenericRepo<T> where T : BaseEntity
    {
        Task<IReadOnlyList<T>> GetAsync();
        Task<T?> GetAsync(int id);
        Task<IReadOnlyList<T>> GetAllAsync(IQueryCollection query);
        Task<PagingResult<T>> GetAsync(IQueryCollection query);
        Task<int> CreateAsync(T entity);
        Task<bool> UpdateAsync(T entity);
        Task DeleteAsync(int id);
        Task<List<T>> BulkUpsertAsync(List<T> entities);
        Task<PagingResult<T>> SearhAsync<Params>(Params query) where Params : BaseParams;

    }
}
