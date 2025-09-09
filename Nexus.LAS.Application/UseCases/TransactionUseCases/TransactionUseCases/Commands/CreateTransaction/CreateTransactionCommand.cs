using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using System;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Commands.CreateTransaction
{
    public class CreateTransactionCommand : CreateBaseCommand
    {
        public DateTime? TransactionDate { get; set; }
        public string TransactionCode { get; set; }
        public string SubjectType { get; set; }
        public string? SubjectDescription { get; set; }
        public string? Status { get; set; }
        public bool Private { get; set; }
    }
}