using AutoMapper;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._TransactionRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionInvoiceUseCases.Commands.CreateTransactionInvoice;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionInvoiceUseCases.Commands.UpdateTransactionInvoice;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionInvoiceUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services.TransactionServices
{
    public class TransactionInvoiceService : GenericService<TransactionInvoice>, ITransactionInvoiceService
    {
        private readonly ITransactionInvoiceRepo _repo;
        private readonly IRegisterFileRepo _registerFileRepo;
        private readonly IMapper _mapper;
        public TransactionInvoiceService(
            NexusLASDbContext context,
            IUserIdentityService userIdentityService,
            ITransactionInvoiceRepo repo,
            IRegisterFileRepo registerFileRepo,
            IMapper mapper
        ) : base(context, userIdentityService, repo)
        {
            _repo = repo;
            _registerFileRepo = registerFileRepo;
            _mapper = mapper;
        }


        public async Task<int> CreateTransactionInvoice(CreateTransactionInvoiceCommand command)
        {
            using (var transaction = await _context.Database.BeginTransactionAsync())
            {
                try
                {
                    var transactionInvoice = _mapper.Map<TransactionInvoice>(command);
                    var transactionInvoiceId = await _repo.CreateAsync(transactionInvoice);

                    if (command.File != null)
                    {

                        RegisterFile registerFile = new RegisterFile
                        {
                            RegistersIdc = EntityIDCs.TransactionsInvoices,
                            RegistersIdn = transactionInvoiceId,
                            ContentType = command.File.ContentType,
                            Name = command.File.FileName,
                        };
                        await _registerFileRepo.CreateAsync(registerFile, command.File);

                    }
                    await transaction.CommitAsync();
                    return transactionInvoiceId;
                }
                catch
                {
                    await transaction.RollbackAsync();
                    throw;
                }
            }
        }

        public async Task<bool> UpdateTransactionInvoice(UpdateTransactionInvoiceCommand command)
        {
            using (var transaction = await _context.Database.BeginTransactionAsync())
            {
                try
                {
                    var transactionInvoice = _mapper.Map<TransactionInvoice>(command);
                    await _repo.UpdateAsync(transactionInvoice);

                    if (command.File is not null)
                    {


                        await _registerFileRepo.DeleteAsync(EntityIDCs.TransactionsInvoices, command.Id);

                        // Add new file
                        byte[] bytes;
                        using (var memoryStream = new MemoryStream())
                        {
                            await command.File.CopyToAsync(memoryStream);
                            bytes = memoryStream.ToArray();
                        }

                        RegisterFile registerFile = new RegisterFile
                        {
                            RegistersIdc = EntityIDCs.TransactionsInvoices,
                            RegistersIdn = command.Id,
                            Data = bytes,
                            ContentType = command.File.ContentType,
                            Name = command.File.FileName,
                        };

                        await _registerFileRepo.CreateAsync(registerFile);
                    }
                    else if (command.RemoveFile && command.File is null)
                    {
                        await _registerFileRepo.DeleteAsync(EntityIDCs.TransactionsInvoices, command.Id);

                    }

                    await transaction.CommitAsync();
                    return true;
                }
                catch
                {
                    await transaction.RollbackAsync();
                    throw;
                }
            }
        }


        public async Task<PagingResult<TransactionInvoiceDto>> GetPaging(GetPagingTransactionInvoiceQuery query)
        {
            return await _repo.GetPaging(query);
        }
    }
}