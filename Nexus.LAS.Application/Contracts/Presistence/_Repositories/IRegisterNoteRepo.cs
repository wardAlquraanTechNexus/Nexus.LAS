using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Domain.Entities.RegisterEntities;

namespace Nexus.LAS.Application.Contracts.Presistence._Repositories
{
    public interface IRegisterNoteRepo : IGenericRepo<RegistersNote>
    {
        Task<List<RegistersNote>> GetNotesByRegisterIdcAndId(string registerIdc, int registerId);
    }
}