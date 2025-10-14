using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._TransactionRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Queries.GetAll;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Constants.Enums;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;
using QuestPDF.Fluent;
using QuestPDF.Helpers;

namespace Nexus.LAS.Persistence.Services.TransactionServices
{
    public class TransactionService : GenericService<Transaction>, ITransactionService
    {
        private readonly IDynamicListRepo _dynamicListRepo;
        private readonly ITransactionRepo _repo;
        private ITransactionRegisterRepo _transactionRegisterRepo;
        public TransactionService(
            NexusLASDbContext context,
            IUserIdentityService userIdentityService,
            ITransactionRepo repo,
            IDynamicListRepo dynamicListRepo,
            ITransactionRegisterRepo transactionRegisterRepo
        ) : base(context, userIdentityService, repo)
        {
            _repo = repo;
            _dynamicListRepo = dynamicListRepo;
            _transactionRegisterRepo = transactionRegisterRepo;
        }
        public async Task<PagingResult<TransactionDto>> SearchTransactions(GetPagingTransactionQuery query)
        {
            return await _repo.SearchTransactions(query);
        }

        public async Task<int> BulkChangeStatus(List<int> ids, CommonStatus status)
        {
            return await _repo.BulkChangeStatus(ids, status);
        }

        public async Task<int> BulkChangePrivate(List<int> ids, bool privateValue)
        {
            return await _repo.BulkChangePrivate(ids, privateValue);
        }
        public async Task<List<AllTransactionDTO>> GetAllDTOs(GetAllTransactionQuery query)
        {
            return await _repo.GetAllDTOs(query);
        }

        public async Task<byte[]> ExportToPdf(int id)
        {



            var transaction = await _repo.GetAsync(id);
            if (transaction == null)
                throw new Exception("Transaction not found");

            string subjectType = string.Empty;


            if (transaction.SubjectType.HasValue)
            {
                subjectType = await _dynamicListRepo.GetNameById(transaction.SubjectType.Value);
            }

            string isPrimaryCompany = (_context.TransactionRegister.Any(tr =>
            tr.TransactionId == transaction.Id &&
            tr.PrimaryRegister == true &&
            tr.RegisterIdc == EntityIDCs.Company)) ? "Yes" : "No";


            var transactionRegistersQueryable =
                    from t in _context.TransactionRegister.AsNoTracking()
                    where t.TransactionId == transaction.Id
                    join c in _context.Companies.AsNoTracking()
                        on t.RegisterId equals c.Id into companyGroup
                    from company in companyGroup.DefaultIfEmpty()
                    join p in _context.People.AsNoTracking()
                        on t.RegisterId equals p.Id into peopleGroup
                    from person in peopleGroup.DefaultIfEmpty()
                    select new TransactionRegisterDto
                    {
                        RegisterName = t.RegisterIdc == EntityIDCs.Company
                            ? company.CompanyEnglishName
                            : person.PersonEnglishName,
                        RegisterIdc = t.RegisterIdc == EntityIDCs.Company ? "Company" : "Person",
                    };

            var transactionRegisters = await transactionRegistersQueryable.ToListAsync();


            var transactionActionsQ = _context.TransactionActions
                .Where(ta => ta.TransactionId == transaction.Id)
                .Select(ta=> new TransactionActionDto
                {
                    ActionStatus = ta.ActionStatus,
                    ClosedDate = ta.ClosedDate,
                    PersonName = ta.Person.PersonEnglishName,
                    DueDate = ta.DueDate,
                    Description = ta.Description
                })
                .AsQueryable()
                .AsNoTracking();

            var transactionActions = await transactionActionsQ.ToListAsync();

            var document = Document.Create(container =>
            {
                container.Page(page =>
                {
                    page.Margin(30);
                    page.Size(PageSizes.A4);
                    page.Content()
                        .Column(column =>
                        {
                            column.Item().Background(Colors.Black).Padding(10).AlignCenter().Text("Transaction Details")
                                            .FontSize(20)
                                            .FontColor(Colors.White)
                                            .Bold();

                            column.Item().Padding(10).Text(string.Empty);


                            column.Item().Text($"Primary Company: {isPrimaryCompany}");

                            column.Item().Text($"Subject Type: {subjectType}");
                            column.Item().Text($"Description: {transaction.SubjectDescription}");


                            column.Item().Padding(10).Text(string.Empty);

                            column.CreateTable(transactionRegisters, new List<PdfDisplayColumn>()
                                {
                                    new PdfDisplayColumn("Name", nameof(TransactionRegisterDto.RegisterName)),
                                    new PdfDisplayColumn("Register Type", nameof(TransactionRegisterDto.RegisterIdc)),
                                }, "Registers");

                            column.Item().Padding(10).Text(string.Empty);

                            column.CreateTable(transactionActions, new List<PdfDisplayColumn>()
                                {
                                    new PdfDisplayColumn("Owner", nameof(TransactionActionDto.PersonName)),
                                    new PdfDisplayColumn("Description", nameof(TransactionActionDto.Description)),
                                    new PdfDisplayColumn("Due Date", nameof(TransactionActionDto.DueDate)),
                                    new PdfDisplayColumn("Closed Date", nameof(TransactionActionDto.ClosedDate)),
                                    new PdfDisplayColumn("Status", nameof(TransactionActionDto.ActionStatus)),
                                }, "Follow Ups");

                            column.Item().Padding(10).Text(string.Empty);



                        });
                });
            });

            using var ms = new MemoryStream();
            document.GeneratePdf(ms);
            return ms.ToArray();
        }

    }
}