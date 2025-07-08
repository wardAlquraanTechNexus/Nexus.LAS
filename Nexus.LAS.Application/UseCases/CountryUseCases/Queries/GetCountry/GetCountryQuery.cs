using MediatR;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CountryDTOs;
using Nexus.LAS.Application.UseCases.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Dynamic.Core;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.CountryUseCases.Queries.GetCountry
{
    public class GetCountryQuery:GetBaseQuery , IRequest<PagingResult<CountryDto>>
    {

    }
}
