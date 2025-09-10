// CreateCompanyChamberOfCommerceHandler.cs
using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyChamberOfCommerceUseCases.Commands.CreateCompanyChamberOfCommerce;

public class CreateCompanyChamberOfCommerceHandler : CreateBaseCommandHandler<CompanyChamberOfCommerce, CreateCompanyChamberOfCommerceCommand, ICompanyChamberOfCommerceService>
{
    public CreateCompanyChamberOfCommerceHandler(ICompanyChamberOfCommerceService service, IMapper mapper) : base(service, mapper)
    {
    }

    public override async Task<int> Handle(CreateCompanyChamberOfCommerceCommand command, CancellationToken cancellationToken)
    {
        return await _service.CreateCompanyChamberOfCommerce(command);
    }
}