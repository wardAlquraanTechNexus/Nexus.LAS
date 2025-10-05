using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Commands.CreatePCTransactionRegister
{
    public class CreatePCTransactionRegisterCommand : CreateBaseCommand
    {
        public int TransactionId { get; set; }
        public int CompanyId { get; set; }
        public int PersonId { get; set; }
        public bool? PrimaryRegister { get; set; }
    }
}
