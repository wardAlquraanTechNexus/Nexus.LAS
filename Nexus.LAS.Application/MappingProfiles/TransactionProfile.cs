using AutoMapper;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Commands.CreateTransactionRegister;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Commands.UpdateTransactionRegister;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Commands.CreateTransaction;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Commands.UpdateTransaction;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Domain.Entities.TransactionEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.MappingProfiles
{
    public class TransactionProfile: Profile
    {
        public TransactionProfile()
        {
            CreateMap<Transaction, TransactionDto>();
            CreateMap<CreateTransactionCommand, Transaction>();
            CreateMap<UpdateTransactionCommand, Transaction>();
            
            CreateMap<TransactionRegister, TransactionRegisterDto>();
            CreateMap<CreateTransactionRegisterCommand, TransactionRegister>();
            CreateMap<UpdateTransactionRegisterCommand, TransactionRegister>();
        }
    }
}
