using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application;
using Nexus.LAS.Identity;
using Nexus.LAS.Infrastructure;
using Nexus.LAS.Persistence;
using Nexus.LAS.WebApi.Middlewares;
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


builder.Host.UseSerilog((context, loggerConfig) =>
loggerConfig.ReadFrom.Configuration(context.Configuration));

builder.Services.AddCors(options =>
{
    options.AddPolicy("all", builder => builder.AllowAnyOrigin()
    .AllowAnyHeader()
    .AllowAnyMethod());
});

builder.Services.AddResponseCaching();

builder.Services.AddSwaggerGen(c =>
{
    c.SwaggerDoc("v1", new Microsoft.OpenApi.Models.OpenApiInfo
    {
        Title = "Nexus LAS API",
        Version = "v1"
    });
});


builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddScoped<IAuthorizationHandler, LasAuthorizeHandler>();
builder.Services.AddAuthorization(options =>
{
    options.AddPolicy("PermissionPolicy", policy =>
        policy.Requirements.Add(new LasAuthorize("CanViewPage")));
});



builder.Services.AddScoped<RequestTimeLoggingMiddleware>();

var app = builder.Build();


// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseCors("all");

app.UseHttpsRedirection();

app.UseAuthorization();
app.UseMiddleware<ExceptionMiddleware>();
//app.UseMiddleware<CheckRequestMiddleware>();

app.MapControllers();

app.Run();
