using DocumentFormat.OpenXml.Spreadsheet;
using EFCore.BulkExtensions;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._TransactionRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Commands.CreatePCTransactionRegister;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.Services.TransactionServices
{
    public class TransactionRegisterService : GenericService<TransactionRegister>, ITransactionRegisterService
    {
        private readonly ITransactionRegisterRepo _repo;

        public TransactionRegisterService(
            NexusLASDbContext context,
            IUserIdentityService userIdentityService,
            ITransactionRegisterRepo repo
        ) : base(context, userIdentityService, repo)
        {
            _repo = repo;
        }


        public async Task<bool> HasPrimaryRegisterAsync(string registerIdc, int transactionId, int? excludedId = null)
        {
            return await _repo.HasPrimaryRegisterAsync(registerIdc, transactionId, excludedId);
        }
        public async Task<bool> ExistsByTransactionAndRegisterAsync(int transactionId, int registerId, string registerIdc, int? excludedId = null)
        {
            return await _repo.ExistsByTransactionAndRegisterAsync(transactionId , registerId , registerIdc , excludedId);
        }

        public async Task<PagingResult<TransactionRegisterDto>> GetPagingByListIdcs(GetPagingTransactionRegisterByListIdcsQuery query)
        {
            return await _repo.GetPagingByListIdcs(query);
        }

        
        public async Task<int> CreatePCTransactionRegister(CreatePCTransactionRegisterCommand command)
        {
            using var transaction = await _context.Database.BeginTransactionAsync();

            try
            {
                var id = await _repo.CreateAsync(new TransactionRegister()
                {
                    PrimaryRegister = command.PrimaryRegister,
                    RegisterIdc = EntityIDCs.Company,
                    RegisterId = command.CompanyId,
                    TransactionId = command.TransactionId,
                    TransactionsRegisterIdc = EntityIDCs.TransactionsRegisters
                });

                await _repo.CreateAsync(new TransactionRegister()
                {
                    PrimaryRegister = command.PrimaryRegister,
                    RegisterIdc = EntityIDCs.Person,
                    RegisterId = command.PersonId,
                    TransactionId = command.TransactionId,
                    TransactionsRegisterIdc = EntityIDCs.TransactionsRegisters
                });

                await transaction.CommitAsync();
                return id;

            }
            catch
            {
                await transaction.RollbackAsync();
                throw;
            }
        }

        public async Task<PagingResult<TransactionRegisterDto>> GetPaging(GetPagingTransactionRegisterQuery query)
        {
            return await _repo.GetPaging(query);
        }
    }
}