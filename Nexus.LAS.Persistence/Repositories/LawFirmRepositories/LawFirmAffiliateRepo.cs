using Nexus.LAS.Application.Contracts.Presistence._Repositories._LawFirmRepos;
using Nexus.LAS.Domain.Entities.LawFirmEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories.LawFirmRepositories
{
    public class LawFirmAffiliateRepo : GenericRepo<LawFirmAffiliate>, ILawFirmAffiliateRepo
    {
        public LawFirmAffiliateRepo(NexusLASDbContext context) : base(context)
        {
        }
        // Add custom methods for LawFirmAffiliate if needed
    }
}