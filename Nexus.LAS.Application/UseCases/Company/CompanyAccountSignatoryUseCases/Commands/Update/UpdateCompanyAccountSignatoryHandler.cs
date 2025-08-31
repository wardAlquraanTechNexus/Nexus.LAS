using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Application.UseCases.CompanyAccountSignatoryUseCases.Commands.Update;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.UseCases.CompanyAccountSignatoryUseCases.Commands.Update
{
    public class UpdateCompanyAccountSignatoryHandler:UpdateBaseCommandHandler<CompanyAccountSignatory, UpdateCompanyAccountSignatoryCommand, ICompanyAccountSignatoryService>
    {
        public UpdateCompanyAccountSignatoryHandler(ICompanyAccountSignatoryService service, AutoMapper.IMapper mapper) : base(service, mapper)
        {
        }
    }
    
}
