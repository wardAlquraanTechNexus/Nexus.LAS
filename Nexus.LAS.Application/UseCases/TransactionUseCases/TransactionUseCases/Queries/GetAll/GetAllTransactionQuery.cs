using MediatR;
using Nexus.LAS.Application.DTOs.TransactionDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase;
using System.Collections.Generic;

namespace Nexus.LAS.Application.UseCases.TransactionUseCases.TransactionUseCases.Queries.GetAll
{
    public class GetAllTransactionQuery : GetAllBaseQuery<AllTransactionDTO>
    {
        public string? TransactionCode { get; set; }
    }
}