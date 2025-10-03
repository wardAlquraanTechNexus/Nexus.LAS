using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionActionUseCases.Commands.CreateTransactionAction;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionActionUseCases.Commands.UpdateTransactionAction;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionActionUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.TransactionEntities;

namespace Nexus.LAS.Application.Contracts.Presistence.Services._Transaction
{
    public interface ITransactionActionService : IGenericService<TransactionAction>
    {
        Task<int> CreateTransactionAction(CreateTransactionActionCommand command);
        Task<PagingResult<TransactionActionDto>> GetPaging(GetPagingTransactionActionQuery query);
        Task<int> UpdateTransactionAction(UpdateTransactionActionCommand command);
    }
}