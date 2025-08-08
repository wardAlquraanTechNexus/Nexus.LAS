using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services
{
    public class RegisterNoteService : GenericService<RegistersNote>, IRegisterNoteService
    {
        public RegisterNoteService(NexusLASDbContext context, IUserIdentityService userIdentityService) : base(context, userIdentityService)
        {
        }
    }
}
