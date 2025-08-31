using Microsoft.AspNetCore.Http;
using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Domain.Entities.RegisterEntities;

namespace Nexus.LAS.Application.Contracts.Presistence._Repositories
{
    public interface IRegisterFileRepo : IGenericRepo<RegisterFile>
    {
        Task<List<RegisterFile>> GetByIds(string idc, int idn);
        Task<int> CreateAsync(RegisterFile entity, IFormFile file);
    }
}