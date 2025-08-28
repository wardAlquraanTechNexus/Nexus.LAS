using Nexus.LAS.Application.Contracts._Repositories;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.Queries.GetDynamicListDto;
using Nexus.LAS.Domain.Entities.Lookup;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services;

public class DynamicListService : GenericService<DynamicList>, IDynamicListService
{
    public DynamicListService(NexusLASDbContext context, IUserIdentityService userIdentityService,IDynamicListRepo repo) : base(context, userIdentityService, repo)
    {
    }

    public async Task<PagingResult<DynamicList>> GetListAsync(GetDynamicListDTOQuery param)
    {
        DynamicListRepo repo = new(_context);
        return await repo.GetListAsync(param);
    }

    public async Task<List<DynamicList>> GetParents(int id)
    {
        DynamicListRepo repo = new(_context);
        return await repo.GetParents(id);
    }

    public override async Task DeleteAsync(int id)
    {
        using(var trans = _context.Database.BeginTransaction())
        {
            try
            {
                DynamicListRepo repo = new(_context);
                await repo.DeleteAsync(id);
                await trans.CommitAsync();

            }
            catch (Exception)
            {
                await trans.RollbackAsync();
                throw;
            }

            
        }
    }

    public async Task<bool> CheckMenuValueExist(string menuValue, int? mainListId, int? currentId = null)
    {
        DynamicListRepo repo = new(_context);
        return await repo.CheckMenuValueExist(menuValue, mainListId, currentId);
    }
}
