using Nexus.LAS.Domain.Entities;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;

namespace Nexus.LAS.Persistence.Repositories.FPCRepositories;

public class FPCRepo : GenericRepo<FPC>, IFPCRepo
{
    public FPCRepo(NexusLASDbContext context) : base(context)
    {
    }
}