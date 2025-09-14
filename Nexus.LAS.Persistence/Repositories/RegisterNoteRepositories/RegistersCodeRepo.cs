using Nexus.LAS.Domain.Entities.RegisterEntities;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using Nexus.LAS.Persistence.DatabaseContext;

namespace Nexus.LAS.Persistence.Repositories.RegisterNoteRepositories;

public class RegistersCodeRepo : GenericRepo<RegistersCode>, IRegistersCodeRepo
{
    public RegistersCodeRepo(NexusLASDbContext context) : base(context)
    {
    }
}