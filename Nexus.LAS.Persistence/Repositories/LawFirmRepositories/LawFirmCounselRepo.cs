using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Domain.Entities.LawFirmEntities;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._LawFirmRepos;
using System.Threading;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.Repositories.LawFirmRepositories
{
    public class LawFirmCounselRepo : GenericRepo<LawFirmCounsel>, ILawFirmCounselRepo
    {
        public LawFirmCounselRepo(NexusLASDbContext context) : base(context)
        {
        }
    }
}