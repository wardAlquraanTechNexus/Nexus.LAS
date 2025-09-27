using Nexus.LAS.Application.Contracts.Presistence._Repositories._LawFirmRepos;
using Nexus.LAS.Domain.Entities.LawFirmEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using Microsoft.EntityFrameworkCore;
using System.Threading;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.Repositories.LawFirmRepositories
{
    public class LawFirmBranchRepo : GenericRepo<LawFirmBranch>, ILawFirmBranchRepo
    {
        public LawFirmBranchRepo(NexusLASDbContext context) : base(context)
        {
        }

        public async Task<bool> HasPrimaryBranchAsync(int lawFirmId, int? excludedId = null)
        {
            return await _dbSet.AnyAsync(b => 
            b.LawFirmId == lawFirmId && b.BranchPrimary && 
            (!excludedId.HasValue || b.Id == excludedId));
        }
    }
}