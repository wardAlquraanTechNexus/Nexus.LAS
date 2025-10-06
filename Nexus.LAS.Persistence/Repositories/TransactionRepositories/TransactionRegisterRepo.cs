using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._TransactionRepos;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using System.Linq;

namespace Nexus.LAS.Persistence.Repositories.TransactionRepositories
{
    public class TransactionRegisterRepo : GenericRepo<TransactionRegister>, ITransactionRegisterRepo
    {
        public TransactionRegisterRepo(NexusLASDbContext context) : base(context)
        {
        }

        public async Task<PagingResult<TransactionRegisterDto>> GetPagingByListIdcs(GetPagingTransactionRegisterByListIdcsQuery query)
        {
            var queryable = _dbSet.Where(tr =>
                (!query.TransactionId.HasValue || query.TransactionId == tr.TransactionId) &&
                (!query.RegisterIdcList.Any() || query.RegisterIdcList.Contains(tr.RegisterIdc))
                )
                .Select(x=>new TransactionRegisterDto()
                {
                    Id = x.Id,
                    TransactionId = x.TransactionId,
                    RegisterId = x.RegisterId,
                    RegisterIdc = x.RegisterIdc,
                    PrimaryRegister = x.PrimaryRegister,
                })
                .AsQueryable();

            if (!string.IsNullOrEmpty(query.OrderBy))
            {
                queryable = queryable.Order(query.OrderBy, query.OrderDir ?? "asc");
            }


            int totalRecords = await queryable.CountAsync();

            queryable = queryable.Paginate(query.Page, query.PageSize);

            var data = await queryable.ToListAsync();

            return new PagingResult<TransactionRegisterDto>(data, query.Page, query.PageSize, totalRecords);
        }
        
        public async Task<PagingResult<TransactionRegisterDto>> GetPaging(GetPagingTransactionRegisterQuery query)
        {
            var queryable = _dbSet
                .Where(tr =>
                (!query.TransactionId.HasValue || query.TransactionId == tr.TransactionId) &&
                (!query.RegisterId.HasValue || query.RegisterId == tr.RegisterId) &&
                (string.IsNullOrEmpty(query.RegisterIdc) || query.RegisterIdc == tr.RegisterIdc)
                )
                .Select(x=>new TransactionRegisterDto()
                {
                    Id = x.Id,
                    TransactionId = x.TransactionId,
                    RegisterId = x.RegisterId,
                    RegisterIdc = x.RegisterIdc,
                    PrimaryRegister = x.PrimaryRegister,
                    SubjectType = x.Transaction.SubjectType,
                    TransactionDate = x.Transaction.TransactionDate,
                    TransactionSubjectDecription = x.Transaction.SubjectDescription

                })
                .AsNoTracking()
                .AsQueryable();

            if (!string.IsNullOrEmpty(query.OrderBy))
            {
                queryable = queryable.Order(query.OrderBy, query.OrderDir ?? "asc");
            }


            int totalRecords = await queryable.CountAsync();

            queryable = queryable.Paginate(query.Page, query.PageSize);

            var data = await queryable.ToListAsync();

            return new PagingResult<TransactionRegisterDto>(data, query.Page, query.PageSize, totalRecords);
        }


        public async Task<bool> HasPrimaryRegisterAsync(string registerIdc, int transactionId, int? excludedId = null)
        {
            return await _context.TransactionRegister
                .AnyAsync(x =>
                    x.RegisterIdc == registerIdc &&
                    x.TransactionId == transactionId &&
                    x.PrimaryRegister == true &&
                    (!excludedId.HasValue || x.Id != excludedId.Value)
                );
        }

        public async Task<bool> ExistsByTransactionAndRegisterAsync(int transactionId, int registerId, string registerIdc, int? excludedId = null)
        {
            return await _context.TransactionRegister
                .AnyAsync(x =>
                    x.TransactionId == transactionId &&
                    x.RegisterId == registerId &&
                    x.RegisterIdc == registerIdc &&
                    (!excludedId.HasValue || x.Id != excludedId.Value)
                );
        }
    }
}