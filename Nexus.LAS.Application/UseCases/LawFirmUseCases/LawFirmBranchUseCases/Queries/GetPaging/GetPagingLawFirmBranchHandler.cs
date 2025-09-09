using AutoMapper;
using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.LawFirmEntities;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmBranchUseCases.Queries.GetPaging
{
    public class GetPagingLawFirmBranchHandler : GetBasePagingHandler<LawFirmBranchDto, LawFirmBranch, GetPagingLawFirmBranchQuery, ILawFirmBranchService>
    {
        public GetPagingLawFirmBranchHandler(ILawFirmBranchService service, IMapper mapper)
            : base(service, mapper)
        {
        }
    }
}