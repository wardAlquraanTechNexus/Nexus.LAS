using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyAccountSignatoryUseCases.Commands.Create
{
    internal class CreateCompanyAccountSignatoryHandler : CreateBaseCommandHandler<CompanyAccountSignatory, CreateCompanyAccountSignatoryCommand, ICompanyAccountSignatoryService>
    {
        public CreateCompanyAccountSignatoryHandler(ICompanyAccountSignatoryService service, AutoMapper.IMapper mapper) : base(service, mapper)
        {
        }
    }
    
}
