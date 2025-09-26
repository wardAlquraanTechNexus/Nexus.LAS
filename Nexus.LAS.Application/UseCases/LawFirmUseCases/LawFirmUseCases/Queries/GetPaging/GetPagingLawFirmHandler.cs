using AutoMapper;
using Nexus.LAS.Application.DTOs.LawFirmDTOs;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.LawFirmEntities;
using Nexus.LAS.Application.DTOs.Base;

namespace Nexus.LAS.Application.UseCases.LawFirmUseCases.LawFirmUseCases.Queries.GetPaging
{
    internal class GetPagingLawFirmHandler : GetBasePagingHandler<LawFirmDto, LawFirm, GetPagingLawFirmQuery, ILawFirmService>
    {
        public GetPagingLawFirmHandler(ILawFirmService service, IMapper mapper)
            : base(service, mapper)
        {
        }

        public override async Task<PagingResult<LawFirmDto>> Handle(GetPagingLawFirmQuery request, CancellationToken cancellationToken)
        {
            var data = await _service.GetPagingLawFirms(request);
            return new PagingResult<LawFirmDto>(data.Collection.Select(item => _mapper.Map<LawFirmDto>(item)).ToList(), data.Page, data.PageSize, data.TotalRecords);
        }
    }
}