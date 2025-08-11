using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.Identity;
using Nexus.LAS.Application.UseCases.UserUseCases.Queries;
using Nexus.LAS.Domain.Entities.UserGroupEntities;

namespace Nexus.LAS.Application.Contracts.Presistence.Services
{
    public interface IUserService : IGenericService<User>
    {
        Task<AuthResponse> Login(AuthRequest request);
        Task<PagingResult<User>> GetUserDTOs(SearchUserQuery query);
    }
}
