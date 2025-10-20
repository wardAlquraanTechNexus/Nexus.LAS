using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.Lookup.UserUseCases.Commands;
using Nexus.LAS.Application.UseCases.Lookup.UserUseCases.Queries.GetLdStuffPerson;
using Nexus.LAS.Application.UseCases.UserUseCases.Queries;
using Nexus.LAS.Domain.Entities.UserGroupEntities;

namespace Nexus.LAS.Application.Contracts.Presistence._Repositories
{
    public interface IUserRepo : IGenericRepo<User>
    {
        Task<User?> GetByUsernameAsync(string username);
        Task<bool> LinkUserWithPerson(LinkUserPersonCommand command);
        Task<PagingResult<UserDto>> SearchUser(SearchUserQuery query);
        Task<bool> ExistsByPersonIdAsync(int personId, string? excludeUsername = null);
        Task<PagingResult<UserDto>> GetLdStuffPersons(GetLdStuffPersonQuery param);
    }
}