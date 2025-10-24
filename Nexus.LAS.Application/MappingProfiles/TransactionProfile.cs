using AutoMapper;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionActionUseCases.Commands.CreateTransactionAction;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionActionUseCases.Commands.UpdateTransactionAction;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionInvoiceUseCases.Commands.CreateTransactionInvoice;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionInvoiceUseCases.Commands.UpdateTransactionInvoice;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Commands.CreateTransactionRegister;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionRegisterUseCases.Commands.UpdateTransactionRegister;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Commands.CreateTransaction;
using Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Commands.UpdateTransaction;
using Nexus.LAS.Domain.Entities.TransactionEntities;

namespace Nexus.LAS.Application.MappingProfiles;

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
        
        CreateMap<TransactionAction, TransactionActionDto>();
        CreateMap<CreateTransactionActionCommand, TransactionAction>();
        CreateMap<UpdateTransactionActionCommand, TransactionAction>();

        CreateMap<TransactionInvoice, TransactionInvoiceDto>();
        CreateMap<CreateTransactionInvoiceCommand, TransactionInvoice>();
        CreateMap<UpdateTransactionInvoiceCommand, TransactionInvoice>();
    }
}
