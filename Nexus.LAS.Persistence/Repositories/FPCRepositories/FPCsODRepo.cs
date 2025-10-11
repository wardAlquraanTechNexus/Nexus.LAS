using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.FPCDTOs;
using Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories.FPCRepositories;

public class FPCsODRepo : GenericRepo<FPCOD>, IFPCsODRepo
{
    public FPCsODRepo(NexusLASDbContext context) : base(context)
    {
    }

    public async Task<PagingResult<FPCODDto>> SearchDto(GetPagingFPCsODQuery query)
    {
        var querable = _dbSet.Where(fd =>
            query.FpcIdn == fd.FPCIdn
        )
            .AsQueryable()
            .AsNoTracking()
            .Select(doc => new FPCODDto
            {
                Description = doc.Description,
                DocType = doc.DocType,
                FPCIdn = doc.FPCIdn,
                Id = doc.Id,
            });


        var actionQuerable = (from d in querable
                              join a in _context.FPCsODsActions
                              on d.Id equals a.FPCOdIdn
                              select new { DocumentId = d.Id, ActionId = a.Id, ActionDate = a.ActionDate }
                              )
                              .OrderBy(x=>x.ActionDate)
                              .GroupBy(x => x.DocumentId)
                              .Select(x=>x.FirstOrDefault());

        var actions = await actionQuerable.ToListAsync();

        var documents = await querable.ToListAsync();

        foreach (var doc in documents)
        {
            var action = actions.FirstOrDefault(x => x.DocumentId == doc.Id);
            if (action is not null)
            {
                doc.LastActionDate = action.ActionDate;
            }
        }

        var count = await querable.CountAsync();
        return new PagingResult<FPCODDto>(documents, query.Page, query.PageSize, count);

    }
}