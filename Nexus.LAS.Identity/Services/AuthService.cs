using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Logging;
using Nexus.LAS.Application.Exceptions;
using Nexus.LAS.Application.Identity;
using Nexus.LAS.Domain.Constants;
using Nexus.LAS.Domain.Entities;
using Nexus.LAS.Identity.IdentityDbContext;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace Nexus.LAS.Identity.Services
{
    public class AuthService:IAuthService
    {
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly SignInManager<ApplicationUser> _signInManager;
        private readonly RoleManager<IdentityRole> _roleManager;
        private readonly JwtSettings _jwtSettings;
        private readonly IAppLogger<AuthService> _logger;
        public AuthService(
            UserManager<ApplicationUser> userManager,
            RoleManager<IdentityRole> roleManager,
            IOptions<JwtSettings> jwtSettings,
            SignInManager<ApplicationUser> signInManager,
            IAppLogger<AuthService> logger
            )
        {
            _userManager = userManager;
            _jwtSettings = jwtSettings.Value;
            _signInManager = signInManager;
            _roleManager = roleManager;
            _logger = logger;
        }


        public async Task<AuthResponse> Login(AuthRequest request)
        {
            var user = await _userManager.FindByNameAsync(request.Email);
            if (user == null)
            {
                user = await _userManager.FindByEmailAsync(request.Email);
                if(user is null)
                    throw new BadRequestException($"Name with {request.Email} not found.");
            }
            //if (!user.EmailConfirmed)
            //{
            //    throw new BadRequestException("Email address is not confirmed. Please confirm your email before logging in.");
            //}
            var result = await _signInManager.CheckPasswordSignInAsync(user, request.Password, false);
            if (result.Succeeded == false)
            {
                throw new BadRequestException($"Credentials for User Name '{request.Email} aren't valid'.");
            }

            JwtSecurityToken jwtSecurityToken = await GenerateToken(user);

            var response = new AuthResponse
            {
                Id = user.Id,
                Token = new JwtSecurityTokenHandler().WriteToken(jwtSecurityToken),
                Email = user.Email ?? string.Empty,
                UserName = user.UserName ?? string.Empty
            };

            return response;

        }

        public async Task<RegistrationResponse> Register(RegistrationRequest request)
        {
            var user = new ApplicationUser
            {
                Email = request.Email,
                FirstName = request.FirstName,
                LastName = request.LastName,
                UserName = request.UserName,
                PhoneNumber = request.PhoneNumber,
                EmailConfirmed = false
            };
            string role = UserRoles.General;
            var isRoleExist = await _roleManager.RoleExistsAsync(role);
            if (!isRoleExist)
            {
                throw new BadRequestException("Role not found");
            }

            var result = await _userManager.CreateAsync(user, request.Password);
            if (result.Succeeded)
            {
                await _userManager.AddToRoleAsync(user, role);
                return new RegistrationResponse() { UserId = user.Id };
            }
            else
            {
                StringBuilder str = new StringBuilder();
                foreach (var err in result.Errors)
                {
                    str.AppendFormat("•{0}\n", err.Description);
                }

                throw new BadRequestException($"{str}");
            }
        }

        private async Task<JwtSecurityToken> GenerateToken(ApplicationUser user)
        {
            var userClaims = await _userManager.GetClaimsAsync(user);
            var roles = await _userManager.GetRolesAsync(user);

            var roleClaims = roles.Select(q => new Claim(ClaimTypes.Role, q)).ToList();

            var claims = new[]
            {
            new Claim(JwtRegisteredClaimNames.Sub, user.FirstName + " " + user.LastName),
            new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString()),
            new Claim(JwtRegisteredClaimNames.Email, user.Email ?? string.Empty),
            new Claim("uid", user.Id),
            new Claim("FirstName", user.FirstName),
            new Claim("LastName", user.LastName ?? string.Empty),
            new Claim("PhoneNumber", user.PhoneNumber?? string.Empty),
            new Claim("ProfilePicture", user.ProfilePicture?? string.Empty),
            new Claim("Username", user.UserName?? string.Empty),

            }
            .Union(userClaims)
            .Union(roleClaims);

            var symmetricSecurityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_jwtSettings.Key));

            var signingCredentials = new SigningCredentials(symmetricSecurityKey, SecurityAlgorithms.HmacSha256);

            var jwtSecurityToken = new JwtSecurityToken(
               issuer: _jwtSettings.Issuer,
               audience: _jwtSettings.Audience,
               claims: claims,
               expires: DateTime.UtcNow.AddMinutes(_jwtSettings.DurationInMinutes),
               signingCredentials: signingCredentials);
            return jwtSecurityToken;
        }

    }
}
