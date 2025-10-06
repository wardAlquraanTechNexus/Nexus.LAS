using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Commands.CreatePCTransactionRegister;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts.Presistence.Services._Transaction
{
    public interface ITransactionRegisterService : IGenericService<TransactionRegister>
    {
        Task<bool> HasPrimaryRegisterAsync(string registerIdc, int transactionId, int? excludedId = null);
        Task<bool> ExistsByTransactionAndRegisterAsync(int transactionId, int registerId, string registerIdc, int? excludedId = null);
        Task<PagingResult<TransactionRegisterDto>> GetPagingByListIdcs(GetPagingTransactionRegisterByListIdcsQuery query);
        Task<int> CreatePCTransactionRegister(CreatePCTransactionRegisterCommand command);
        Task<PagingResult<TransactionRegisterDto>> GetPaging(GetPagingTransactionRegisterQuery query);
    }
}