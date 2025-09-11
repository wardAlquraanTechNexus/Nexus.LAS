using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.Exceptions;
using Nexus.LAS.Application.Identity;

namespace Nexus.LAS.WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthController(IAuthService _authenticationService, IUserIdentityService _userIdentityService, IUserService _userService) : ControllerBase
    {
        const string refreshTokenCookie = "refreshToken";

        [HttpPost("login")]
        public async Task<ActionResult<AuthResponse>> Login(AuthRequest request)
        {
            var res = await _userService.Login(request);
            SetRefreshTokenInCookie(res.RefreshToken, res.RefreshTokenExpiration);
            return Ok(res);
        }

        [HttpPost("register")]
        public async Task<ActionResult<RegistrationResponse>> Register(RegistrationRequest request)
        {
            var validationResult = await _userIdentityService.FindUserByEmailOrUsename(request.Email);
            if (validationResult != null)
            {
                throw new BadRequestException("Email already exists");

            }

            var response = await _authenticationService.Register(request);

            return Ok(response);

        }

        [HttpGet(nameof(RefreshToken))]
        public async Task<ActionResult<AuthResponse>> RefreshToken()
        {
            var refreshToken = Request.Cookies[refreshTokenCookie];
            var response = await _authenticationService.RefreshToken(refreshToken);
            SetRefreshTokenInCookie(response.RefreshToken, response.RefreshTokenExpiration);
            return Ok(response);
        }
        [HttpGet(nameof(RevokeToken))]
        public async Task<IActionResult> RevokeToken()
        {
            var refreshToken = Request.Cookies[refreshTokenCookie];
            var res = await _authenticationService.RevokeTokenAsync(refreshToken);
            if (!res)
            {
                return BadRequest(new { message = "Token revocation failed" });
            }
            return Ok(res);
        }
        private void SetRefreshTokenInCookie(string refreshToken, DateTime expires)
        {
            var cookieOption = new CookieOptions()
            {
                HttpOnly = true, 
                Expires = expires,
            };

            Response.Cookies.Append(refreshTokenCookie, refreshToken, cookieOption);
        }

    }
}
