using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyContractDTOs;
using Nexus.LAS.Application.DTOs.FPCDTOs;
using Nexus.LAS.Application.UseCases.CompanyContractUseCases.Queries.GetPaging;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODsActionUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories.FPCRepositories;

public class FPCODActionRepo : GenericRepo<FPCODAction>, IFPCODActionRepo
{
    public FPCODActionRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<PagingResult<FPCODActionDto>> SearhDtoAsync(GetPagingFPCsODsActionQuery query)
    {
        var queryable =
                    (from foa in _dbSet
                    where foa.FPCOdIdn == query.FPCOdIdn
                    select new FPCODActionDto
                    {
                        Id = foa.Id,
                        ActionDate = foa.ActionDate,
                        ActionDescription = foa.ActionDescription,
                        ActionType = foa.ActionType,
                        FPCOdIdn = foa.FPCOdIdn,
                        
                    })
                    .AsNoTracking()
                    .AsQueryable();


        var count = await queryable.CountAsync();
        queryable = queryable.Paginate(query.Page, query.PageSize);
        queryable.OrderByDescending(x => x.Id);
        var data = await queryable.ToListAsync();
        return new PagingResult<FPCODActionDto>(data, query.Page, query.PageSize, count);
    }
}