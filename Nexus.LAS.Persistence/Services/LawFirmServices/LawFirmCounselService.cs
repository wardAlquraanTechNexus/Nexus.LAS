using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._LawFirmRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Domain.Entities.LawFirmEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.Services.LawFirmServices
{
    public class LawFirmCounselService : GenericService<LawFirmCounsel>, ILawFirmCounselService
    {
        private readonly ILawFirmCounselRepo _repo;

        public LawFirmCounselService(NexusLASDbContext context, IUserIdentityService userIdentityService , ILawFirmCounselRepo repo)
            : base(context, userIdentityService, repo)
        {
            _repo = repo;
        }

        
    }
}