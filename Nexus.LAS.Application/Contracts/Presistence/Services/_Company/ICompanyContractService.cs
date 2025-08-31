using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyContractDTOs;
using Nexus.LAS.Application.UseCases.CompanyContractUseCases.Commands.CreateCompanyContract;
using Nexus.LAS.Application.UseCases.CompanyContractUseCases.Commands.UpdateCompanyContract;
using Nexus.LAS.Application.UseCases.CompanyContractUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.Contracts.Presistence.Services;

public interface ICompanyContractService:IGenericService<CompanyContract>
{
    Task<CompanyContractDto?> GetDTOAsync(int id);
    Task<int> CreateCompanyContract(CreateCompanyContractCommand command);
    Task<int> EditCompanyContract(UpdateCompanyContractCommand command);
    Task<PagingResult<CompanyContractDto>> SearhDtoAsync(GetPagingCompanyContractQuery query);
}
