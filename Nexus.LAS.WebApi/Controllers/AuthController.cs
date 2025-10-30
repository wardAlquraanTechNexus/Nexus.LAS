using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.Exceptions;
using Nexus.LAS.Application.Identity;

namespace Nexus.LAS.WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthController(IAuthService _authenticationService, IUserIdentityService _userIdentityService, IUserService _userService , IMenuService _menuService) : ControllerBase
    {
        const string refreshTokenCookie = "refreshToken";

        [HttpPost("login")]
        public async Task<ActionResult<AuthResponse>> Login(AuthRequest request)
        {
            // Use the authentication service to get token + refresh token
            var res = await _authenticationService.Login(request);

            var menus = await _menuService.GetAllMenusByUsername(res.UserName);
            if (menus is null || menus.Count == 0)
            {
                throw new Exception("You don't have access. Please contact administrator.");
            }

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

        // Use POST for refresh to avoid CSRF issues with GET and to follow common practice
        [HttpPost(nameof(RefreshToken))]
        public async Task<ActionResult<AuthResponse>> RefreshToken()
        {
            var refreshToken = Request.Cookies[refreshTokenCookie];
            if (string.IsNullOrEmpty(refreshToken))
                return Unauthorized(new { message = "Refresh token is missing." });

            try
            {
                var response = await _authenticationService.RefreshToken(refreshToken);
                SetRefreshTokenInCookie(response.RefreshToken, response.RefreshTokenExpiration);
                return Ok(response);
            }
            catch (NotAuthorizedException)
            {
                // clear cookie on invalid token
                Response.Cookies.Delete(refreshTokenCookie);
                return Unauthorized(new { message = "Invalid or expired refresh token." });
            }
        }

        [HttpPost(nameof(RevokeToken))]
        public async Task<IActionResult> RevokeToken()
        {
            var refreshToken = Request.Cookies[refreshTokenCookie];
            if (string.IsNullOrEmpty(refreshToken))
                return BadRequest(new { message = "Refresh token is required." });

            var revoked = await _authenticationService.RevokeTokenAsync(refreshToken);
            if (!revoked)
            {
                return BadRequest(new { message = "Token revocation failed" });
            }

            // Remove cookie client-side
            Response.Cookies.Delete(refreshTokenCookie);
            return Ok(new { message = "Token revoked" });
        }

        private void SetRefreshTokenInCookie(string refreshToken, DateTime expires)
        {
            var isHttps = Request.IsHttps;

            var cookieOptions = new CookieOptions
            {
                HttpOnly = true,
                Secure = isHttps, // true for HTTPS, false for localhost
                SameSite = SameSiteMode.None , // Chrome-safe
                Path = "/",
                Expires = expires.ToUniversalTime()
            };

            Response.Cookies.Append(refreshTokenCookie, refreshToken, cookieOptions);
        }
        [HttpPost("logout")]
        public IActionResult Logout()
        {
            // Clear the refresh token cookie
            Response.Cookies.Delete(refreshTokenCookie, new CookieOptions
            {
                Path = "/",
                SameSite = SameSiteMode.Lax,
                Secure = false // Match your cookie creation settings
            });

            return Ok(new { message = "Logged out successfully" });
        }
    }
}
