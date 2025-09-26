using Nexus.LAS.Application.Contracts.Presistence;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.ExportToExcelBase;
using Nexus.LAS.Domain.Entities.PersonEntities;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Queries
{
    public class ExportPersonToExcelHandler:ExportToExcelHandler<Person , PersonDto , IPersonService , ExportPersonToExcelQuery>  
    {

        public ExportPersonToExcelHandler(IPersonService personService) : base(personService)
        {
        }

    }
}
