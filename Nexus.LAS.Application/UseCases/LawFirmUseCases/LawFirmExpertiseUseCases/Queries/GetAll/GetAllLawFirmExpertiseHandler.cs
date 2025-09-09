using AutoMapper;
using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase;
using Nexus.LAS.Domain.Entities.LawFirmEntities;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmExpertiseUseCases.Queries.GetAll
{
    public class GetAllLawFirmExpertiseHandler : GetAllBaseHandler<LawFirmExpertiseDto, LawFirmExpertise, GetAllLawFirmExpertiseQuery, ILawFirmExpertiseService>
    {
        public GetAllLawFirmExpertiseHandler(ILawFirmExpertiseService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}