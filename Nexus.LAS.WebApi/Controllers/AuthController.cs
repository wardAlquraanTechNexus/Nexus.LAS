using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Exceptions;
using Nexus.LAS.Application.Identity;

namespace Nexus.LAS.WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthController(IAuthService _authenticationService, IUserService _userService) : ControllerBase
    {
        [HttpPost("login")]
        public async Task<ActionResult<AuthResponse>> Login(AuthRequest request)
        {
            return Ok(await _authenticationService.Login(request));
        }

        [HttpPost("register")]
        public async Task<ActionResult<RegistrationResponse>> Register(RegistrationRequest request)
        {
            var validationResult = await _userService.FindUserByEmailOrUsename(request.Email);
            if (validationResult != null)
            {
                throw new BadRequestException("Email already exists");

            }

            var response = await _authenticationService.Register(request);

            return Ok(response);

        }
    }
}
