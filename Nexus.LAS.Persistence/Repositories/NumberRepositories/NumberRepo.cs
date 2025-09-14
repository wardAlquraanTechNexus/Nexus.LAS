using Nexus.LAS.Domain.Entities.NumberEntities;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using Nexus.LAS.Persistence.DatabaseContext;

namespace Nexus.LAS.Persistence.Repositories.NumberRepositories;

public class NumberRepo : GenericRepo<Number>, INumberRepo
{
    public NumberRepo(NexusLASDbContext context) : base(context)
    {
    }
}