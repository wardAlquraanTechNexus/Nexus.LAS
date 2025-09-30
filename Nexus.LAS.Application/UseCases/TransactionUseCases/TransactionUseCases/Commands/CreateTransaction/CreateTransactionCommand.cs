using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Constants.Enums;
using System;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Commands.CreateTransaction
{
    public class CreateTransactionCommand : CreateBaseCommand
    {
        public DateTime? TransactionDate { get; set; }
        public int? SubjectType { get; set; }
        public string? SubjectDescription { get; set; }
        public bool Private { get; set; }
    }
}