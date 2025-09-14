using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using Nexus.LAS.Persistence.DatabaseContext;

namespace Nexus.LAS.Persistence.Repositories.CompanyRepositories;

public class CompanyShareHoldersGroupRepo : GenericRepo<CompanyShareHoldersGroup>, ICompanyShareHoldersGroupRepo
{
    public CompanyShareHoldersGroupRepo(NexusLASDbContext context) : base(context)
    {
    }
}