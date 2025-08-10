using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence.Repositories;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Identity.Services;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services;

namespace Nexus.LAS.Persistence
{
    public static class PersistenceServiceRegistration
    {
        public static IServiceCollection AddPersistenceServicesDI(this IServiceCollection services,
        IConfiguration configuration)
        {
            services.AddScoped<ICountryRepo, CountryRepo>();
            services.AddScoped<ICountryService, CountryService>();

            services.AddScoped<IUserIdentityService, UserIdentityService>();
            services.AddScoped<IUserService, UserService>();


          

            services.AddScoped<IMenuService, MenuService>();
            services.AddScoped<IGroupMenuService, GroupMenuService>();
            services.AddScoped<IGroupService, GroupService>();
            services.AddScoped<IDynamicListService, DynamicListService>();

            services.AddScoped<IPersonService, PersonService>();
            services.AddScoped<IPersonEmailService, PersonEmailService>();
            services.AddScoped<IPersonPhoneService, PersonPhoneService>();
            services.AddScoped<IPersonAddressService, PersonAddressService>();
            services.AddScoped<IPersonIdDetailService, PersonIdDetailService>();
            services.AddScoped<IPersonOtherDocumentService, PersonOtherDocumentService>();

            services.AddScoped<IRegisterNoteService, RegisterNoteService>();

            services.AddScoped<ICompanyService, CompanyService>();
            services.AddScoped<ICompanyActivityService, CompanyActivityService>();
            services.AddScoped<ICompanyAddressService, CompanyAddressService>();
            services.AddScoped<ICompanyBankAccountService, CompanyBankAccountService>();
            services.AddScoped<ICompanyBoardMemberService, CompanyBoardMemberService>();
            services.AddScoped<ICompanyCapitalService, CompanyCapitalService>();
            services.AddScoped<ICompanyChamberOfCommerceService, CompanyChamberOfCommerceService>();
            services.AddScoped<ICompanyContractService, CompanyContractService>();
            services.AddScoped<ICompanyEmailService, CompanyEmailService>();
            services.AddScoped<ICompanyLicenseService, CompanyLicenseService>();
            services.AddScoped<ICompanyOtherContractService, CompanyOtherContractService>();
            services.AddScoped<ICompanyPersonInChargeService, CompanyPersonInChargeService>();
            services.AddScoped<ICompanyPhoneService, CompanyPhoneService>();
            services.AddScoped<ICompanyShareHolderService, CompanyShareHolderService>();



            var connectionStr = configuration.GetConnectionString("NexusLASConnectionString");
            services.AddDbContext<NexusLASDbContext>(options => {
                options.UseSqlServer(connectionStr ?? throw new Exception("NexusLASConnectionString is not set"),
                        sqlOptions => sqlOptions.MigrationsAssembly("Nexus.LAS.Persistence"))
                       .LogTo(Console.WriteLine, Microsoft.Extensions.Logging.LogLevel.Information);
            });




            return services;
        }
    }
}
