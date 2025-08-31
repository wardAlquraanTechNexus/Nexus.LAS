using Microsoft.Extensions.DependencyInjection;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._PersonRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Identity.Services;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Services;

namespace Nexus.LAS.Persistence
{
    internal static class PresistenseServiceRegistrationHelper
    {
        public static void RegisterServices(this IServiceCollection services)
        {
            services.AddScoped<ICountryService, CountryService>();

            services.AddScoped<IUserIdentityService, UserIdentityService>();
            services.AddScoped<IUserService, UserService>();
            services.AddScoped<IUserGroupService, UserGroupService>();




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
            services.AddScoped<ICompanyAccountSignatoryService, CompanyAccountSignatoryService>();
        }

        public static void RegisterRepositories(this IServiceCollection services)
        {
            services.AddScoped<ICountryRepo, CountryRepo>();
            services.AddScoped<IDynamicListRepo, DynamicListRepo>();
            services.AddScoped<IGroupRepo, GroupRepo>();
            services.AddScoped<IMenuRepo, MenuRepo>();
            services.AddScoped<IGroupMenuRepo, GroupMenuRepo>();
            services.AddScoped<IUserGroupRepo, UserGroupRepo>();
            services.AddScoped<IUserRepo, UserRepo>();
            services.AddScoped<IRegisterFileRepo, RegisterFileRepo>();
            services.AddScoped<IRegisterNoteRepo, RegisterNoteRepo>();


            services.AddScoped<IPersonRepo, PersonRepo>();
            services.AddScoped<IPersonAddressRepo, PersonAddressRepo>();
            services.AddScoped<IPersonEmailRepo, PersonEmailRepo>();
            services.AddScoped<IPersonIdDetailRepo, PersonIdDetailRepo>();
            services.AddScoped<IPersonOtherDocumentRepo, PersonOtherDocumentRepo>();
            services.AddScoped<IPersonPhoneRepo, PersonPhoneRepo>();




            services.AddScoped<ICompanyRepo, CompanyRepo>();
            services.AddScoped<ICompanyPersonInChargeRepo, CompanyPersonInChargeRepo>();
            services.AddScoped<ICompanyChamberOfCommerceRepo, CompanyChamberOfCommerceRepo>();
            services.AddScoped<ICompanyLicenseRepo, CompanyLicenseRepo>();
            services.AddScoped<ICompanyShareHolderRepo, CompanyShareHolderRepo>();
            services.AddScoped<ICompanyActivityRepo, CompanyActivityRepo>();
            services.AddScoped<ICompanyAddressRepo, CompanyAddressRepo>();
            services.AddScoped<ICompanyBankAccountRepo, CompanyBankAccountRepo>();
            services.AddScoped<ICompanyBoardMemberRepo, CompanyBoardMemberRepo>();
            services.AddScoped<ICompanyCapitalRepo, CompanyCapitalRepo>();
            services.AddScoped<ICompanyContractRepo, CompanyContractRepo>();
            services.AddScoped<ICompanyEmailRepo, CompanyEmailRepo>();
            services.AddScoped<ICompanyLicenseRepo, CompanyLicenseRepo>();
            services.AddScoped<ICompanyOtherContractRepo, CompanyOtherContractRepo>();
            services.AddScoped<ICompanyPhoneRepo, CompanyPhoneRepo>();
            services.AddScoped<ICompanyAccountSignatoryRepo, CompanyAccountSignatoryRepo>();

        }
    }
}
