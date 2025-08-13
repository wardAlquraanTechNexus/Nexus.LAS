using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.GetGroupDTO;
using Nexus.LAS.Application.UseCases.Queries;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services
{
    public class GroupService : GenericService<Group>, IGroupService
    {
        public GroupService(NexusLASDbContext context, IUserIdentityService userIdentityService) : base(context, userIdentityService)
        {
        }

        public async Task<PagingResult<Group>> SearchGroup(SearchGroupQuery query)
        {
            GroupRepo repo = new(_context);
            return await repo.SearchGroup(query);
        }
        public async Task<PagingResult<Group>> GetGroupDTOs(GetGroupDtoQuery query)
        {
            GroupRepo repo = new(_context);
            return await repo.GetGroupDTOs(query);
        }

    }
}
