using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts._Repositories._CompanyRepos;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyShareHolderDTOs;
using Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases.Queries;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services;

public class CompanyShareHolderService : GenericService<CompanyShareHolder> , ICompanyShareHolderService
{
    private readonly ICompanyShareHolderRepo _repo;
    public CompanyShareHolderService(NexusLASDbContext context, IUserIdentityService userIdentityService, ICompanyShareHolderRepo repo) : base(context, userIdentityService, repo)
    {
        _repo = repo;
    }



    public async Task<PagingResult<CompanyShareHolderDto>> SearhDtoAsync(GetPagingCompanyShareHolderQuery query)
    {
        return await _repo.SearhDtoAsync(query);
    }


}
