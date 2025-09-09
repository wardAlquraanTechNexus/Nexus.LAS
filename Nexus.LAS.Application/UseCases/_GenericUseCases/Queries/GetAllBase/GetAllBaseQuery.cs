using MediatR;

namespace Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetAllBase
{
    public class GetAllBaseQuery<DTO> : IRequest<List<DTO>>
    {
    }
}
