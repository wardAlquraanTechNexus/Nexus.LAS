using Nexus.LAS.Application.DTOs.FPCDTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;

namespace Nexus.LAS.Application.UseCases.FPCUseCases.FPCsODsActionUseCases.Queries.GetPaging;

public class GetPagingFPCsODsActionQuery : GetBasePagingQuery<FPCODActionDto>
{
    public int FPCOdIdn { get; set; }
}