using AutoMapper;
using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase;
using Nexus.LAS.Domain.Entities.LawFirmEntities;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmBranchUseCases.Queries.GetAll
{
    public class GetAllLawFirmBranchHandler : GetAllBaseHandler<LawFirmBranchDto, LawFirmBranch, GetAllLawFirmBranchQuery, ILawFirmBranchService>
    {
        public GetAllLawFirmBranchHandler(ILawFirmBranchService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}