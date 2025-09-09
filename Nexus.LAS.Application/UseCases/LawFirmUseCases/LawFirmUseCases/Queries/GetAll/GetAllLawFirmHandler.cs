using AutoMapper;
using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase;
using Nexus.LAS.Domain.Entities.LawFirmEntities;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Queries.GetAll
{
    public class GetAllLawFirmHandler : GetAllBaseHandler<LawFirmDto, LawFirm, GetAllLawFirmQuery, ILawFirmService>
    {
        public GetAllLawFirmHandler(ILawFirmService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}