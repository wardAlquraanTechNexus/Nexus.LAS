using AutoMapper;
using MediatR;
using Nexus.LAS.Application.Contracts.Logging;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CountryDTOs;
using Nexus.LAS.Domain.Entities.Lookup;

namespace Nexus.LAS.Application.UseCases.CountryUseCases.Queries.GetCountry
{
    //public class GetCountryQueryHandler(IAppLogger<GetCountryQueryHandler> _logger, IMapper _mapper, ICountryService _countryService) : IRequestHandler<GetCountryQuery, PagingResult<CountryDto>>
    //{
    //    public async Task<PagingResult<CountryDto>> Handle(GetCountryQuery request, CancellationToken cancellationToken)
    //    {
    //        PagingResult<Country> countriesPaged = await _countryService.GetAsync(request.Query);

    //        var counntriesDtos = _mapper.Map<List<CountryDto>>(countriesPaged.Collection);

    //        return new PagingResult<CountryDto>(counntriesDtos, countriesPaged.Page, countriesPaged.PageSize, countriesPaged.TotalRecords, countriesPaged.TotalPages);
            
    //    }
    //}
}
