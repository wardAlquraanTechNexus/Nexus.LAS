using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.UseCases.CompanyAccountSignatoryUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services
{
    public class CompanyAccountSignatoryService : GenericService<CompanyAccountSignatory> , ICompanyAccountSignatoryService
    {
        private readonly ICompanyAccountSignatoryRepo _repo;
        public CompanyAccountSignatoryService(NexusLASDbContext context, IUserIdentityService userIdentityService, ICompanyAccountSignatoryRepo repo) : base(context, userIdentityService, repo)
        {
            _repo = repo;
        }

        public Task<PagingResult<CompanyAccountSignatoryDTO>> SearchDtoAsync(GetPagingAcccountSignatoryQuery query)
        {
            return _repo.SearchDtoAsync(query);
        }
    }
}
