using Microsoft.AspNetCore.Http;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.Identity;
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
        private readonly IAuthService _authService;
        private readonly NexusLASIdentityDbContext _identityDbContext;

        public UserService(NexusLASDbContext context , IAuthService authService, IUserIdentityService userIdentityService, NexusLASIdentityDbContext identityDbContext) : base(context, userIdentityService)
        {
            _authService = authService;
            _identityDbContext = identityDbContext;
        }
        public async Task<AuthResponse> Login(AuthRequest request)
        {
            var authResponse = await _authService.Login(request);
            
            UserRepo userRepo = new UserRepo(_context, _identityDbContext);

            var user = await userRepo.GetByUsernameAsync(authResponse.UserName);

            if (user == null) 
            {
                await userRepo.CreateAsync(new User()
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
            UserRepo userRepo = new UserRepo(_context, _identityDbContext);
            return await userRepo.SearchUser(query);
        }

    }
}
