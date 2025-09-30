using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.ExportToExcelBase;
using Nexus.LAS.Domain.Entities.TransactionEntities;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Queries.ExportToExcel
{
    public class ExportTransactionToExcelHandler : ExportToExcelHandler<Transaction, TransactionDto, ITransactionService, ExportTransactionToExcelQuery>
    {
        public ExportTransactionToExcelHandler(ITransactionService service) : base(service)
        {
        }
    }
}