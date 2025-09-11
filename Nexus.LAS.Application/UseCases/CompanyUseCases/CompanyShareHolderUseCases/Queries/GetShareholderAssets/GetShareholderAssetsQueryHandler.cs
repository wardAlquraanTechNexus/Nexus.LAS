using MediatR;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.DTOs.CompanyShareHolderDTOs;
using Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases.Queries;

namespace Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases.Handlers
{
    public class GetShareholderAssetsQueryHandler : IRequestHandler<GetShareholderAssetsQuery, PagingResult<AssetsShareholderDto>>
    {
        private readonly ICompanyShareHolderService _service;

        public GetShareholderAssetsQueryHandler(ICompanyShareHolderService service)
        {
            _service = service;
        }

        public async Task<PagingResult<AssetsShareholderDto>> Handle(GetShareholderAssetsQuery request, CancellationToken cancellationToken)
        {
            return await _service.GetShareholderAssets(request);
        }
    }
}