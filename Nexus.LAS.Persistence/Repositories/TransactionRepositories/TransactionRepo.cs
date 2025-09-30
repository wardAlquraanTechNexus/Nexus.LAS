using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._TransactionRepos;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using System.Linq;

namespace Nexus.LAS.Persistence.Repositories.TransactionRepositories
{
    public class TransactionRepo : GenericRepo<Transaction>, ITransactionRepo
    {
        public TransactionRepo(NexusLASDbContext context) : base(context)
        {
        }

        public async Task<PagingResult<TransactionDto>> SearchTransactions(GetPagingTransactionQuery query)
        {
            var queryable =
                    from t in _dbSet
                    where
                        (!query.Privates.Any() || query.Privates.Contains(t.Private))
                        && (!query.Statuses.Any() || query.Statuses.Contains(t.Status))
                        && (
                            query.SearchBy == null
                            || (t.TransactionCode.ToLower().Contains(query.SearchBy.ToLower()))
                            || (t.SubjectDescription.ToLower().Contains(query.SearchBy.ToLower()))
                        )
                        && (string.IsNullOrEmpty(query.TransactionCode) || query.TransactionCode == t.TransactionCode)
                        && (string.IsNullOrEmpty(query.SubjectDescription) || query.SubjectDescription== t.SubjectDescription)
                        && (!query.SubjectType.HasValue || query.SubjectType == t.SubjectType)
                        && (!query.TransactionDateFrom.HasValue || query.TransactionDateFrom <= t.TransactionDate)
                        && (!query.TransactionDateTo.HasValue || query.TransactionDateTo >= t.TransactionDate)
                        select new TransactionDto
                        {
                            Id = t.Id,
                            TransactionCode = t.TransactionCode,
                            SubjectType = t.SubjectType,
                            SubjectDescription = t.SubjectDescription,
                            TransactionDate = t.TransactionDate,
                            Private = t.Private,
                            Status = t.Status,
                            CompanyId = null,
                            PersonId = null,
                            CreatedAt = t.CreatedAt,
                            CreatedBy = t.CreatedBy,
                            ModifiedAt = t.ModifiedAt,
                            ModifiedBy = t.ModifiedBy,
                        };

            int totalRecords = await queryable.CountAsync();

            queryable = queryable.Paginate(query.Page, query.PageSize);

            if (!string.IsNullOrEmpty(query.OrderBy))
            {
                queryable = queryable.Order(query.OrderBy, query.OrderDir ?? "asc");
            }

            var data = await queryable.ToListAsync();

            return new PagingResult<TransactionDto>(data, query.Page, query.PageSize, totalRecords);


        }

        public override async Task<int> CreateAsync(Transaction entity)
        {
            entity.TransactionCode = EntityIDCs.Transactions + entity.Id.ToString().PadLeft(6, '0');
            var id = await base.CreateAsync(entity);
            entity.Id = id;
            entity.TransactionCode = EntityIDCs.Transactions + entity.Id.ToString().PadLeft(6, '0');
            await _context.SaveChangesAsync();
            return id;
        }

        public async Task<int> BulkChangeStatus(List<int> ids, CommonStatus status)
        {
            var properties = await _dbSet.Where(p => ids.Contains(p.Id)).ToListAsync();
            foreach (var property in properties)
            {
                property.Status = status;
            }
            await _context.SaveChangesAsync();
            return properties.Count;
        }

        public async Task<int> BulkChangePrivate(List<int> ids, bool privateValue)
        {
            var properties = await _dbSet.Where(p => ids.Contains(p.Id)).ToListAsync();
            foreach (var property in properties)
            {
                property.Private = privateValue;
            }
            await _context.SaveChangesAsync();
            return properties.Count;
        }

    }
}