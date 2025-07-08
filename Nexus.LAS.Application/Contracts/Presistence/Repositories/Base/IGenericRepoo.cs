using Microsoft.AspNetCore.Http;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Domain.Entities.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Dynamic.Core;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts.Presistence.Repositories.Base
{
    public interface IGenericRepo<T> where T : class
    {
        Task<IReadOnlyList<T>> GetAsync();
        Task<T?> GetAsync(object id);
        Task<IReadOnlyList<T>> GetAllAsync(IQueryCollection query);
        Task<PagingResult<T>> GetAsync(IQueryCollection query);
        Task<object> CreateAsync(T entity);
        Task UpdateAsync(T entity);
        Task DeleteAsync(T entity);


    }
}
