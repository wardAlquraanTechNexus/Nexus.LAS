using AutoMapper;
using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase;
using Nexus.LAS.Domain.Entities.LawFirmEntities;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmPersonUseCases.Queries.GetAll
{
    public class GetAllLawFirmPersonHandler : GetAllBaseHandler<LawFirmPersonDto, LawFirmPerson, GetAllLawFirmPersonQuery, ILawFirmPersonService>
    {
        public GetAllLawFirmPersonHandler(ILawFirmPersonService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}