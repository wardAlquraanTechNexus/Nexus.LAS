using AutoMapper;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyUseCases.Commands
{
    public class UpdateCompanyCommandHandler : UpdateBaseCommandHandler<Company, UpdateBaseCommand, ICompanyService>
    {
        public UpdateCompanyCommandHandler(ICompanyService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}
