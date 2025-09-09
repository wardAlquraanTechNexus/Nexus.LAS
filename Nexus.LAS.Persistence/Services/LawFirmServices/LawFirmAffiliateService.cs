using Nexus.LAS.Application.Contracts.Presistence._Repositories._LawFirmRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Domain.Entities.LawFirmEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;
using Nexus.LAS.Application.Contracts.Identity;

namespace Nexus.LAS.Persistence.Services.LawFirmServices
{
    public class LawFirmAffiliateService : GenericService<LawFirmAffiliate>, ILawFirmAffiliateService
    {
        public LawFirmAffiliateService(
            NexusLASDbContext context,
            IUserIdentityService userIdentityService,
            ILawFirmAffiliateRepo repo
        ) : base(context, userIdentityService, repo)
        {
        }
        // Add custom methods for LawFirmAffiliate if needed
    }
}