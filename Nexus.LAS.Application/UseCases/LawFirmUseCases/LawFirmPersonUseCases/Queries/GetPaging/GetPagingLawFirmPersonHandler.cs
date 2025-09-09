using AutoMapper;
using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.LawFirmEntities;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmPersonUseCases.Queries.GetPaging
{
    public class GetPagingLawFirmPersonHandler : GetBasePagingHandler<LawFirmPersonDto, LawFirmPerson, GetPagingLawFirmPersonQuery, ILawFirmPersonService>
    {
        public GetPagingLawFirmPersonHandler(ILawFirmPersonService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}