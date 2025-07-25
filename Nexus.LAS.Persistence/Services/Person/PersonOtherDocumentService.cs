using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services
{
    public class PersonOtherDocumentService : GenericService<PersonsOtherDocument>, IPersonOtherDocumentService
    {
        public PersonOtherDocumentService(NexusLASDbContext context, IUserIdentityService userIdentityService) : base(context, userIdentityService)
        {
        }
    }
}
