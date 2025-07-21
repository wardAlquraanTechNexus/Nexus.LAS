using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.Identity;
using Nexus.LAS.Domain.Entities.UserGroupEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services.Base;

namespace Nexus.LAS.Persistence.Services
{
    public class UserService : GenericService<User>, IUserService
    {
        private readonly IAuthService _authService;
        public UserService(NexusLASDbContext context , IAuthService authService, IUserIdentityService userIdentityService) : base(context, userIdentityService)
        {
            _authService = authService;
        }
        public async Task<AuthResponse> Login(AuthRequest request)
        {
            var authResponse = await _authService.Login(request);
            
            UserRepo userRepo = new UserRepo(_context);

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
    }
}
