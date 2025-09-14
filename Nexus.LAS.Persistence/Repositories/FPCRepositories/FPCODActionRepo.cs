using Nexus.LAS.Domain.Entities;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using Nexus.LAS.Persistence.DatabaseContext;

namespace Nexus.LAS.Persistence.Repositories.FPCRepositories;

public class FPCODActionRepo : GenericRepo<FPCODAction>, IFPCODActionRepo
{
    public FPCODActionRepo(NexusLASDbContext context) : base(context)
    {
    }
}