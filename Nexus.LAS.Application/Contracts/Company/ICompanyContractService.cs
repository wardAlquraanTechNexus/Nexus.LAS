using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.CompanyContractDTOs;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.Contracts;

public interface ICompanyContractService:IGenericService<CompanyContract>
{
    Task<CompanyContractDto?> GetDTOAsync(int id);
}
