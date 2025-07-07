using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.IdentityModel.Tokens;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Identity;
using Nexus.LAS.Domain.Entities;
using Nexus.LAS.Identity.IdentityDbContext;
using Nexus.LAS.Identity.Services;
using System.Text;

namespace Nexus.LAS.Identity
{
    public static class IdentityServicesRegistration
    {
        public static IServiceCollection AddIdentityServicesDI(this IServiceCollection services, IConfiguration configuration)
        {
            services.Configure<JwtSettings>(configuration.GetSection("JwtSettings") ?? throw new Exception("JwtSettings is not set"));
            var connectionStr = configuration.GetConnectionString("NexusLASConnectionString");
            services.AddDbContext<NexusLASIdentityDbContext>(options => {
                options.UseSqlServer(connectionStr ?? throw new Exception("NexusLASConnectionString is not set"),
                      sqlOptions => sqlOptions.MigrationsAssembly("Nexus.LAS.Identity"))
                     .LogTo(Console.WriteLine, Microsoft.Extensions.Logging.LogLevel.Information);

            });

            services
            //.AddIdentity<ApplicationUser, IdentityRole>()
            .AddIdentityApiEndpoints<ApplicationUser>() //for default Identity Api
            .AddRoles<IdentityRole>()//for default Identity Api
            .AddEntityFrameworkStores<NexusLASIdentityDbContext>()
            .AddDefaultTokenProviders();


            services.Configure<IdentityOptions>(options => {
                options.Password.RequiredLength = 6;
                options.Password.RequireDigit = false;
                options.Password.RequireNonAlphanumeric = false;

                options.Lockout.MaxFailedAccessAttempts = 5;
                options.Lockout.DefaultLockoutTimeSpan = TimeSpan.FromSeconds(5);

                options.SignIn.RequireConfirmedEmail = false;
            });

            services.AddTransient<IAuthService, AuthService>();
            services.AddTransient<IUserService, UserService>();


            services.AddAuthentication(options =>
            {
                options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme; //= string "bearer"
                options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
            }).AddJwtBearer(o => //how Jwt will be validated in the system , what the parameter are for valid token
            {
                o.TokenValidationParameters = new TokenValidationParameters
                {
                    ValidateIssuerSigningKey = true,
                    ValidateIssuer = true,
                    ValidateAudience = true,
                    ValidateLifetime = true,
                    ClockSkew = TimeSpan.Zero,//no additional time after invalidation of the token
                    ValidIssuer = configuration["JwtSettings:Issuer"],
                    ValidAudience = configuration["JwtSettings:Audience"],
                    IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(configuration["JwtSettings:Key"] ?? string.Empty))
                };
            });


            return services;
        }
    }
}
