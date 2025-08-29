using Nexus.LAS.Application.Contracts.Presistence.Repositories.Base;
using Nexus.LAS.Domain.Entities.RegisterEntities;

namespace Nexus.LAS.Application.Contracts._Repositories
{
    public interface IRegisterFileRepo : IGenericRepo<RegisterFile>
    {
        Task<List<RegisterFile>> GetByIds(string idc, int idn);
    }
}