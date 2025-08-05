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


// Set QuestPDF license once at the start
QuestPDF.Settings.License = LicenseType.Community;

var builder = WebApplication.CreateBuilder(args);

// Configure Serilog first
builder.Host.UseSerilog((context, loggerConfig) =>
    loggerConfig.ReadFrom.Configuration(context.Configuration));

// Add controllers with configuration
builder.Services.AddControllers(options =>
{
    // Add cache profile
    options.CacheProfiles.Add("Default30", new CacheProfile()
    {
        Duration = 30
    });
    
    // Add global filters
    options.Filters.Add<PathnameValidationFilter>();
})
.AddJsonOptions(options =>
{
    // Configure JSON serialization
    options.JsonSerializerOptions.Converters.Add(new JsonStringEnumConverter());
    options.JsonSerializerOptions.PropertyNamingPolicy = System.Text.Json.JsonNamingPolicy.CamelCase;
    options.JsonSerializerOptions.DefaultIgnoreCondition = JsonIgnoreCondition.WhenWritingNull;
});

// Add application services
builder.Services.AddApplicationServicesDI();
builder.Services.AddInfrastructureServiceDI(builder.Configuration);
builder.Services.AddPersistenceServicesDI(builder.Configuration);
builder.Services.AddIdentityServicesDI(builder.Configuration);

// Add Health Checks
builder.Services.AddHealthChecks()
    .AddCheck<DatabaseHealthCheck>("database")
    .AddCheck("self", () => Microsoft.Extensions.Diagnostics.HealthChecks.HealthCheckResult.Healthy("API is running"));

// Configure CORS
builder.Services.AddCors(options =>
{
    options.AddPolicy("all", policy => policy
        .AllowAnyOrigin()
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

// Register middleware services - FIX: Add proper registration for IMiddleware
builder.Services.AddScoped<RequestTimeLoggingMiddleware>();

var app = builder.Build();

// Configure the HTTP request pipeline - ORDER MATTERS!

// 1. Exception handling first
app.UseGlobalExceptionHandling();

// 2. HTTPS redirection
app.UseHttpsRedirection();

// 3. Development tools
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI(c =>
    {
        c.SwaggerEndpoint("/swagger/v1/swagger.json", "Nexus LAS API V1");
        c.RoutePrefix = string.Empty; // Serve Swagger UI at root (/)
        c.DocumentTitle = "Nexus LAS API Documentation";
        c.DisplayRequestDuration();
    });
}

// 4. Request time logging
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

// 9. Map controllers
app.MapControllers();

// Run the application
try
{
    Log.Information("Starting Nexus LAS API...");
    Log.Information("Swagger UI available at: {BaseUrl}", app.Environment.IsDevelopment() ? "https://localhost:7210 or http://localhost:5195" : "Not available in production");
    app.Run();
}
catch (Exception ex)
{
    Log.Fatal(ex, "Application terminated unexpectedly");
}
finally
{
    Log.CloseAndFlush();
}
