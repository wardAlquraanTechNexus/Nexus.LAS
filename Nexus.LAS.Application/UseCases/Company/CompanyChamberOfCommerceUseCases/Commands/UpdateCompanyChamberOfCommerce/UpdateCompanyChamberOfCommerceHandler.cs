// UpdateCompanyChamberOfCommerceHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyChamberOfCommerceUseCases.Commands.UpdateCompanyChamberOfCommerce;

public class UpdateCompanyChamberOfCommerceHandler : UpdateBaseCommandHandler<CompanyChamberOfCommerce, UpdateCompanyChamberOfCommerceCommand, ICompanyChamberOfCommerceService>
{
    public UpdateCompanyChamberOfCommerceHandler(ICompanyChamberOfCommerceService service, IMapper mapper) : base(service, mapper)
    {
    }
}