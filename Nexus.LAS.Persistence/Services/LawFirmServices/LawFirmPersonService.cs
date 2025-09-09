using Nexus.LAS.Application.Contracts.Presistence._Repositories._LawFirmRepos;
using Nexus.LAS.Domain.Entities.LawFirmEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;

namespace Nexus.LAS.Persistence.Services.LawFirmServices
{
    public class LawFirmPersonService : GenericService<LawFirmPerson>, ILawFirmPersonService
    {
        public LawFirmPersonService(
            NexusLASDbContext context,
            IUserIdentityService userIdentityService,
            ILawFirmPersonRepo repo
        ) : base(context, userIdentityService, repo)
        {
        }
        // Add custom methods for LawFirmPerson if needed
    }
}