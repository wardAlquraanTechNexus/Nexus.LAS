using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CompanyBoardUseCases.Commands.Create
{
    internal class UpdateCompanyBoardHandler : UpdateBaseCommandHandler<CompanyBoard, UpdateCompanyBoardCommand, ICompanyBoardService>
    {
        public UpdateCompanyBoardHandler(ICompanyBoardService service, IMapper mapper) : base(service, mapper)
        {
        }
    }
}
