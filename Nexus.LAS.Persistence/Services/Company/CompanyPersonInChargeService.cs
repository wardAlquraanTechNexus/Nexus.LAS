using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts._Repositories;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyPersonInChargeDTOs;
using Nexus.LAS.Application.UseCases.CompanyPersonInChargeUseCases.Queries;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services;

public class CompanyPersonInChargeService : GenericService<CompanyPersonInCharge> , ICompanyPersonInChargeService
{
    private readonly ICompanyPersonInChargeRepo _repo;
    public CompanyPersonInChargeService(NexusLASDbContext context, IUserIdentityService userIdentityService , ICompanyPersonInChargeRepo repo) : base(context, userIdentityService)
    {
        _repo = repo;
    }

    public async Task<PagingResult<CompanyPersonInChargeDto>> GetPaging(GetPagingCompanyPersonInChargeQuery query)
    {
        return await _repo.GetPaging(query);
    }
}
