using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.NumberEntities;

namespace Nexus.LAS.Application.UseCases.NumberUseCases.NumberUseCases.Queries.GetPaging;

public class GetPagingNumberHandler
    : GetBasePagingHandler<Number, Number, GetPagingNumberQuery, INumberService>
{
    public GetPagingNumberHandler(
        INumberService service,
        IMapper mapper
    ) : base(service, mapper)
    {
    }
}