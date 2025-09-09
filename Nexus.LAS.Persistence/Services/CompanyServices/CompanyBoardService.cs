using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services
{
    public class CompanyBoardService : GenericService<CompanyBoard>, ICompanyBoardService
    {
        private readonly ICompanyBoardRepo _repo;
        public CompanyBoardService(NexusLASDbContext context, IUserIdentityService userIdentityService, ICompanyBoardRepo repo) : base(context, userIdentityService, repo)
        {
            _repo = repo;
        }


        public async Task<bool> ExistsActiveBoardAsync(int companyId , int? execludedId = null)
        {
            return await _repo.ExistsActiveBoardAsync(companyId, execludedId);
        }
    }
}
