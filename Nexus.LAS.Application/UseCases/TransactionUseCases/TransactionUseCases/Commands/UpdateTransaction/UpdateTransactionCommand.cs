using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Constants.Enums;
using System;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Commands.UpdateTransaction
{
    public class UpdateTransactionCommand : UpdateBaseCommand
    {
        public int Id { get; set; }
        public string TransactionCode { get; set; }
        public DateTime? TransactionDate { get; set; }
        public int? SubjectType { get; set; }
        public string? SubjectDescription { get; set; }
        public CommonStatus Status { get; set; }
        public bool Private { get; set; }
    }
}