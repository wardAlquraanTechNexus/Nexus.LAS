using AutoMapper;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._TransactionRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionActionUseCases.Commands.CreateTransactionAction;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionActionUseCases.Commands.UpdateTransactionAction;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionActionUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services.TransactionServices
{
    public class TransactionActionService : GenericService<TransactionAction>, ITransactionActionService
    {
        private readonly ITransactionActionRepo _repo;
        private readonly IRegisterFileRepo _registerFileRepo;
        private readonly IMapper _mapper;
        public TransactionActionService(
            NexusLASDbContext context,
            IUserIdentityService userIdentityService,
            ITransactionActionRepo repo,
            IRegisterFileRepo registerFileRepo,
            IMapper mapper
        ) : base(context, userIdentityService, repo)
        {
            _repo = repo;
            _registerFileRepo = registerFileRepo;
            _mapper = mapper;
        }

        public async Task<PagingResult<TransactionActionDto>> GetPaging(GetPagingTransactionActionQuery query)
        {
            return await _repo.GetPaging(query);
        }

        public async Task<int> CreateTransactionAction(CreateTransactionActionCommand command)
        {
            using (var transaction = await _context.Database.BeginTransactionAsync())
            {
                try
                {
                    var transactionAction = _mapper.Map<TransactionAction>(command);
                    var transactionActionId = await _repo.CreateAsync(transactionAction);

                    if (command.Files.Any())
                    {
                        foreach (var file in command.Files)
                        {
                            RegisterFile registerFile = new RegisterFile
                            {
                                RegistersIdc = EntityIDCs.TransactionsActions,
                                RegistersIdn = transactionActionId,
                                ContentType = file.ContentType,
                                Name = file.FileName,
                            };
                            await _registerFileRepo.CreateAsync(registerFile, file);
                        }
                    }

                    await transaction.CommitAsync();
                    return transactionActionId;
                }
                catch
                {
                    await transaction.RollbackAsync();
                    throw;
                }
            }
        }



        public async Task<int> UpdateTransactionAction(UpdateTransactionActionCommand command)
        {
            using (var transaction = await _context.Database.BeginTransactionAsync())
            {
                try
                {
                    // Fetch existing entity
                    var transactionAction = await _repo.GetAsync(command.Id);
                    if (transactionAction == null)
                        throw new KeyNotFoundException("Transaction action not found.");

                    // Map updated fields from command (excluding ID and files)
                    _mapper.Map(command, transactionAction);

                    // Update the main entity
                    await _repo.UpdateAsync(transactionAction);

                    // Handle files
                    if (command.Files.Any())
                    {
                        foreach (var file in command.Files)
                        {
                            // Optional: you can check if file already exists (by name or ID)
                            RegisterFile registerFile = new RegisterFile
                            {
                                RegistersIdc = EntityIDCs.TransactionsActions,
                                RegistersIdn = transactionAction.Id,
                                ContentType = file.ContentType,
                                Name = file.FileName,
                            };
                            await _registerFileRepo.CreateAsync(registerFile, file);
                        }
                    }

                    // Optional: remove files marked for deletion
                    if (command.FileIdsToRemove.Any())
                    {
                        foreach (var fileId in command.FileIdsToRemove)
                        {
                            await _registerFileRepo.DeleteAsync(fileId);
                        }
                    }

                    await transaction.CommitAsync();
                    return transactionAction.Id;
                }
                catch
                {
                    await transaction.RollbackAsync();
                    throw;
                }
            }
        }



    }

}
