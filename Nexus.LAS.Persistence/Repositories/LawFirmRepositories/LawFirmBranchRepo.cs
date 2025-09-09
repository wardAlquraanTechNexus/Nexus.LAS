using Nexus.LAS.Application.Contracts.Presistence._Repositories._LawFirmRepos;
using Nexus.LAS.Domain.Entities.LawFirmEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories.LawFirmRepositories
{
    public class LawFirmBranchRepo : GenericRepo<LawFirmBranch>, ILawFirmBranchRepo
    {
        public LawFirmBranchRepo(NexusLASDbContext context) : base(context)
        {
        }
        // Add custom methods for LawFirmBranch if needed
    }
}