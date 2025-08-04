using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application;
using Nexus.LAS.Identity;
using Nexus.LAS.Infrastructure;
using Nexus.LAS.Persistence;
using Nexus.LAS.WebApi.Extensions;
using Nexus.LAS.WebApi.HealthChecks;
using Nexus.LAS.WebApi.Middlewares;
using QuestPDF.Infrastructure;
using Serilog;
using System.Text.Json.Serialization;


var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers(option =>
{
    option.CacheProfiles.Add("Default30",
        new CacheProfile()
        {
            Duration = 30
        });
})
    .AddJsonOptions(options =>
    {
        // Configure JsonSerializerOptions
        options.JsonSerializerOptions.Converters.Add(new JsonStringEnumConverter()); // Enum as strings
                                                                                     // options.JsonSerializerOptions.ReferenceHandler = ReferenceHandler.Preserve;//for Json cycle
                                                                                     // Other configuration options as needed
    });

builder.Services.AddApplicationServicesDI();
builder.Services.AddInfrastructureServiceDI(builder.Configuration);
builder.Services.AddPersistenceServicesDI(builder.Configuration);
builder.Services.AddIdentityServicesDI(builder.Configuration);

// Add Health Checks with custom checks
builder.Services.AddHealthChecks()
    .AddCheck<DatabaseHealthCheck>("database")
    .AddCheck("self", () => Microsoft.Extensions.Diagnostics.HealthChecks.HealthCheckResult.Healthy("API is running"));

// Configure Serilog
builder.Host.UseSerilog((context, loggerConfig) =>
loggerConfig.ReadFrom.Configuration(context.Configuration));

// Configure CORS
builder.Services.AddCors(options =>
{
    options.AddPolicy("all", builder => builder.AllowAnyOrigin()
    .AllowAnyHeader()
    .AllowAnyMethod());
});

// Add Response Caching
builder.Services.AddResponseCaching();

// Configure Swagger
builder.Services.AddSwaggerGen(c =>
{
    c.SwaggerDoc("v1", new Microsoft.OpenApi.Models.OpenApiInfo
    {
        Title = "Nexus LAS API",
        Version = "v1",
        Description = "Nexus Legal Advisory System API"
    });
});

builder.Services.AddEndpointsApiExplorer();

// Configure Authorization
builder.Services.AddScoped<IAuthorizationHandler, LasAuthorizeHandler>();
builder.Services.AddAuthorization(options =>
{
    options.AddPolicy("PermissionPolicy", policy =>
        policy.Requirements.Add(new LasAuthorize("CanViewPage")));
});

// Configure Global Filters
builder.Services.AddControllers(options =>
{
    options.Filters.Add<PathnameValidationFilter>();
});

// Register middleware services
builder.Services.AddScoped<RequestTimeLoggingMiddleware>();

QuestPDF.Settings.License = LicenseType.Community;

var app = builder.Build();

// Configure the HTTP request pipeline - ORDER MATTERS!

// 1. Exception handling should be first to catch all exceptions
app.UseGlobalExceptionHandling();
QuestPDF.Settings.License = LicenseType.Community;
// 2. HTTPS redirection
app.UseHttpsRedirection();

// 3. Development tools
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI(c =>
    {
        c.SwaggerEndpoint("/swagger/v1/swagger.json", "Nexus LAS API V1");
        c.RoutePrefix = string.Empty; // Serve Swagger UI at root
    });
}

// 4. Request time logging (optional, can be moved based on requirements)
app.UseRequestTimeLogging();

// 5. CORS
app.UseCors("all");

// 6. Response caching
app.UseResponseCaching();

// 7. Authentication and Authorization
app.UseAuthentication();
app.UseAuthorization();

// 8. Health checks endpoints
app.MapHealthChecks("/health");
app.MapHealthChecks("/health/ready");
app.MapHealthChecks("/health/live", new Microsoft.AspNetCore.Diagnostics.HealthChecks.HealthCheckOptions
{
    Predicate = check => check.Tags.Contains("live") || check.Name == "self"
});

// 9. Custom request middleware (if needed, uncomment)
// app.UseCustomAuthenticationCheck();

// 10. Map controllers last
app.MapControllers();

app.Run();
