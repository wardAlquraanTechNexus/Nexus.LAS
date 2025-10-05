using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._TransactionRepos;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionInvoiceUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.Domain.ExtensionMethods;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories.TransactionRepositories
{
    public class TransactionInvoiceRepo : GenericRepo<TransactionInvoice>, ITransactionInvoiceRepo
    {

        public TransactionInvoiceRepo(NexusLASDbContext context) : base(context)
        {
        }

        public async Task<PagingResult<TransactionInvoiceDto>> GetPaging(GetPagingTransactionInvoiceQuery query)
        {
            var q =
                    (from ti in _dbSet
                    where
                        (query.LawFirmId == null || ti.LawFirmId == query.LawFirmId)
                        && (query.TransactionId == null || ti.TransactionId == query.TransactionId)
                    join rf in _context.RegisterFiles
                        on new { Idc = ti.TransactionsInvoiceIdc, Idn = ti.Id }
                        equals new { Idc = rf.RegistersIdc, Idn = rf.RegistersIdn }
                        into files
                    from rf in files.DefaultIfEmpty() // left join
                    select new TransactionInvoiceDto
                    {
                        Id = ti.Id,
                        TransactionId = ti.TransactionId,
                        LawFirmId = ti.LawFirmId,
                        Amount = ti.Amount,
                        Currency = ti.Currency,
                        Invoice = ti.Invoice,
                        InvoiceDate = ti.InvoiceDate,
                        Note = ti.Note,
                        Paid = ti.Paid,
                        TransactionNumber = $"{ti.TransactionsInvoiceIdc}{ti.Id:D4}",
                        FileId = rf != null ? rf.Id : null,
                        ContentType = rf != null ? rf.ContentType : null,
                        FileName = rf != null ? rf.Name : null,
                        Data = rf != null ? rf.Data : null
                    }).OrderByDescending(x=>x.Id).AsQueryable().AsNoTracking();

            
            var totalRecords = await q.CountAsync();

            q = q.Paginate(query.Page, query.PageSize);

            var data = await q.ToListAsync();

            return new PagingResult<TransactionInvoiceDto>(data, query.Page, query.PageSize, totalRecords);



        }
        public override async Task<PagingResult<TransactionInvoice>> SearhAsync<Params>(Params query)
        {
            return await base.SearhAsync(query);
        }
    }
}