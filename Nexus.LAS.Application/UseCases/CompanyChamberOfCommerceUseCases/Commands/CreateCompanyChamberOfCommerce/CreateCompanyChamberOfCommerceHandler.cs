// CreateCompanyChamberOfCommerceHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyChamberOfCommerceUseCases.Commands.CreateCompanyChamberOfCommerce;

public class CreateCompanyChamberOfCommerceHandler : CreateBaseCommandHandler<CompanyChamberOfCommerce, CreateCompanyChamberOfCommerceCommand, ICompanyChamberOfCommerceService>
{
    public CreateCompanyChamberOfCommerceHandler(ICompanyChamberOfCommerceService service, IMapper mapper) : base(service, mapper)
    {
    }
}