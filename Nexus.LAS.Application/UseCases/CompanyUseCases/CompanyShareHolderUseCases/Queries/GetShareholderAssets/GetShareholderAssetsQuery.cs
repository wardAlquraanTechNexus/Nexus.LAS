using MediatR;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.DTOs.CompanyShareHolderDTOs;
using Nexus.LAS.Application.UseCases.Base;

namespace Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases.Queries
{
    public class GetShareholderAssetsQuery : BaseParams , IRequest<PagingResult<AssetsShareholderDto>>
    {
        public string? RegistersIdc { get; set; }
        public int? RegistersIdn { get; set; }
    }
}