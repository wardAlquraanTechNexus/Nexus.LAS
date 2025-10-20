using Microsoft.AspNetCore.Http;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.Identity;
using Nexus.LAS.Application.UseCases.Lookup.UserUseCases.Commands;
using Nexus.LAS.Application.UseCases.Lookup.UserUseCases.Queries.GetLdStuffPerson;
using Nexus.LAS.Application.UseCases.UserUseCases.Queries;
using Nexus.LAS.Domain.Entities.RegisterEntities;
using Nexus.LAS.Domain.Entities.UserGroupEntities;
using Nexus.LAS.Identity.IdentityDbContext;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services
{
    public class UserService : GenericService<User>, IUserService
    {
        private readonly IUserRepo _repo;
        private readonly IAuthService _authService;
        private readonly NexusLASIdentityDbContext _identityDbContext;

        public UserService(NexusLASDbContext context , IAuthService authService, IUserIdentityService userIdentityService, NexusLASIdentityDbContext identityDbContext,IUserRepo repo) : base(context, userIdentityService, repo)
        {
            _authService = authService;
            _identityDbContext = identityDbContext;
            _repo = repo;
        }
        public async Task<AuthResponse> Login(AuthRequest request)
        {
            var authResponse = await _authService.Login(request);
            

            var user = await _repo.GetByUsernameAsync(authResponse.UserName);

            if (user == null) 
            {
                await _repo.CreateAsync(new User()
                {
                    Username = authResponse.UserName,
                    CreatedBy = authResponse.UserName
                });
                
                await _context.SaveChangesAsync();
            }
            return authResponse;

        }


        public async Task<PagingResult<UserDto>> GetUserDTOs(SearchUserQuery query)
        {
            return await _repo.SearchUser(query);
        }

        public async Task<bool> LinkUserWithPerson(LinkUserPersonCommand command)
        {
            return await _repo.LinkUserWithPerson(command);
        }

        public async Task<PagingResult<UserDto>> GetLdStuffPersons(GetLdStuffPersonQuery param)
        {
            return await _repo.GetLdStuffPersons(param);
        }

    }
}
