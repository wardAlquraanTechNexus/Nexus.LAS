using AutoMapper;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries.GetBasePaging;
using Nexus.LAS.Domain.Entities.UserGroupEntities;

namespace Nexus.LAS.Application.UseCases.Lookup.UserUseCases.Queries.GetLdStuffPerson
{
    public class GetLdStuffPersonHandler : GetBasePagingHandler<UserDto, User, GetLdStuffPersonQuery, IUserService>
    {
        public GetLdStuffPersonHandler(IUserService service, IMapper mapper) : base(service, mapper)
        {
        }

        public override async Task<PagingResult<UserDto>> Handle(GetLdStuffPersonQuery request, CancellationToken cancellationToken)
        {
            return await _service.GetLdStuffPersons(request);
        }
    }
}
