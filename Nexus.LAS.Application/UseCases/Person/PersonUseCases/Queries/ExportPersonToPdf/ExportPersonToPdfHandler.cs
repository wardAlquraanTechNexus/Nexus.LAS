using MediatR;
using Nexus.LAS.Application.Contracts.Presistence;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.PersonDTOs;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Queries
{
    public class ExportPersonToPdfHandler : IRequestHandler<ExportPersonToPdfQuery, ExportPersonToPdfDto>
    {
        public readonly IPersonService _personService;

        public ExportPersonToPdfHandler(IPersonService personService)
        {
            _personService = personService;
        }

        public async Task<ExportPersonToPdfDto> Handle(ExportPersonToPdfQuery query, CancellationToken cancellationToken)
        {
            var props = typeof(GetPersonsDto).GetProperties();
            var res = await _personService.ExportToPdf(query.Id);
            return new ExportPersonToPdfDto()
            {
                Data = res,
                FileName = "Person Report"
            };
        }
    }

}
