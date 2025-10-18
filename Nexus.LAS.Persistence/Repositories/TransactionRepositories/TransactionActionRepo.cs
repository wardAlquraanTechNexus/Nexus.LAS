using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._TransactionRepos;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionActionUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories.TransactionRepositories
{
    public class TransactionActionRepo : GenericRepo<TransactionAction>, ITransactionActionRepo
    {
        public TransactionActionRepo(NexusLASDbContext context) : base(context)
        {
        }

        public async Task<PagingResult<TransactionActionDto>> GetPaging(GetPagingTransactionActionQuery query)
        {
            var queryable = _dbSet
    .Where(ta => 
    (query.TransactionId == ta.TransactionId)
    && (!query.PersonId.HasValue || query.PersonId == ta.PersonId)
    )
    .Select(ta => new TransactionActionDto
    {
        TransactionId = ta.TransactionId,
        Id = ta.Id,
        ActionStatus = ta.ActionStatus,
        ClosedDate = ta.ClosedDate,
        Description = ta.Description,
        DueDate = ta.DueDate,
        PersonId = ta.PersonId,
        Time = ta.Time,

        Files = _context.RegisterFiles
            .Where(f => f.RegistersIdn == ta.Id && f.RegistersIdc == EntityIDCs.TransactionsActions)
            .Select(f => new FileDto
            {
                FileId = f.Id,
                FileName = f.Name,
                Data = f.Data,
                ContentType = f.ContentType
            }).ToList()
    })
    .AsQueryable();


            if (!string.IsNullOrEmpty(query.OrderBy))
            {
                queryable = queryable.Order(query.OrderBy, query.OrderDir ?? "asc");
            }

            int totalRecords = await queryable.CountAsync();

            queryable = queryable.Paginate(query.Page, query.PageSize);

            var data = await queryable.ToListAsync();

            return new PagingResult<TransactionActionDto>(data, query.Page, query.PageSize, totalRecords);
        }
        
    }
}