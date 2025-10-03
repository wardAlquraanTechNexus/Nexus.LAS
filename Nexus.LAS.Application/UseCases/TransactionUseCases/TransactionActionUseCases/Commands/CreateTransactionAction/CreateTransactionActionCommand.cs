using Microsoft.AspNetCore.Http;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Constants.Enums;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionActionUseCases.Commands.CreateTransactionAction
{
    public class CreateTransactionActionCommand : CreateBaseCommand
    {
        public int TransactionId { get; set; }
        public int PersonId { get; set; }
        public int? Time { get; set; }
        public string Description { get; set; } = null!;
        public DateTime DueDate { get; set; }
        public DateTime? ClosedDate { get; set; }
        public TransactionActionStatus ActionStatus { get; set; }
        public List<IFormFile> Files { get; set; } = new List<IFormFile>(); 
    }
}