using Microsoft.Extensions.DependencyInjection;
using Nexus.LAS.Application.Contracts;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._LawFirmRepos;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._PersonRepos;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._TransactionRepos;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.Contracts.Presistence.Services._Company;
using Nexus.LAS.Application.Contracts.Presistence.Services._LawFirm;
using Nexus.LAS.Application.Contracts.Presistence.Services._Transaction;
using Nexus.LAS.Application.Contracts.Presistence.Services.RegisterNote;
using Nexus.LAS.Identity.Services;
using Nexus.LAS.Persistence.Repositories;
using Nexus.LAS.Persistence.Repositories.CompanyRepositories;
using Nexus.LAS.Persistence.Repositories.DocumentRepositories;
using Nexus.LAS.Persistence.Repositories.FPCRepositories;
using Nexus.LAS.Persistence.Repositories.LawFirmRepositories;
using Nexus.LAS.Persistence.Repositories.NumberRepositories;
using Nexus.LAS.Persistence.Repositories.PropertyRepositories;
using Nexus.LAS.Persistence.Repositories.RegisterFileRepositories;
using Nexus.LAS.Persistence.Repositories.RegisterNoteRepositories;
using Nexus.LAS.Persistence.Repositories.TransactionRepositories;
using Nexus.LAS.Persistence.Services;
using Nexus.LAS.Persistence.Services.CompanyServices;
using Nexus.LAS.Persistence.Services.DocumentServices;
using Nexus.LAS.Persistence.Services.FPCServices;
using Nexus.LAS.Persistence.Services.LawFirmServices;
using Nexus.LAS.Persistence.Services.NumberServices;
using Nexus.LAS.Persistence.Services.PropertyServices;
using Nexus.LAS.Persistence.Services.RegisterNoteServices;
using Nexus.LAS.Persistence.Services.TransactionServices;

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
            services.AddScoped<ICompanyBoardService, CompanyBoardService>();
            services.AddScoped<ICompanyShareHoldersGroupService, CompanyShareHoldersGroupService>();
            services.AddScoped<ICompanyLeaseContractRegisterService, CompanyLeaseContractRegisterService>();
            // Transaction services
            services.AddScoped<ITransactionService, TransactionService>();
            services.AddScoped<ITransactionRegisterService, TransactionRegisterService>();
            services.AddScoped<ITransactionOtfService, TransactionOtfService>();
            services.AddScoped<ITransactionInvoiceService, TransactionInvoiceService>();
            services.AddScoped<ITransactionActionService, TransactionActionService>();

            // LawFirm services
            services.AddScoped<ILawFirmService, LawFirmService>();
            services.AddScoped<ILawFirmPersonService, LawFirmPersonService>();
            services.AddScoped<ILawFirmAffiliateService, LawFirmAffiliateService>();
            services.AddScoped<ILawFirmBranchService, LawFirmBranchService>();
            services.AddScoped<ILawFirmExpertiseService, LawFirmExpertiseService>();
            services.AddScoped<ILawFirmCounselService, LawFirmCounselService>();


            services.AddScoped<IRegistersCodeService, RegistersCodeService>();

            services.AddScoped<IPropertyService, PropertyService>();
            services.AddScoped<IPropertyOwnerService, PropertyOwnerService>();
            services.AddScoped<IPropertyLinkService, PropertyLinkService>();
            services.AddScoped<IPropertyDocumentService, PropertyDocumentService>();
            services.AddScoped<IPropertyStatusService, PropertyStatusService>();


            services.AddScoped<IDocumentService, DocumentService>();
            services.AddScoped<IDocumentReletedRegisterService, DocumentReletedRegisterService>();
            services.AddScoped<IDocumentTrackingService, DocumentTrackingService>();
            services.AddScoped<IDocumentTrackingsActionService, DocumentTrackingsActionService>();


            services.AddScoped<IFPCService, FPCService>();
            services.AddScoped<IFPCODService, FPCODService>();
            services.AddScoped<IFPCODActionService, FPCODActionService>();
            services.AddScoped<INumberService, NumberService>();
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
            services.AddScoped<ICompanyBoardRepo, CompanyBoardRepo>();
            services.AddScoped<ICompanyShareHoldersGroupRepo, CompanyShareHoldersGroupRepo>();

            // Transaction repositories
            services.AddScoped<ITransactionRepo, TransactionRepo>();
            services.AddScoped<ITransactionRegisterRepo, TransactionRegisterRepo>();
            services.AddScoped<ITransactionOtfRepo, TransactionOtfRepo>();
            services.AddScoped<ITransactionInvoiceRepo, TransactionInvoiceRepo>();
            services.AddScoped<ITransactionActionRepo, TransactionActionRepo>();

            // LawFirm repositories
            services.AddScoped<ILawFirmRepo, LawFirmRepo>();
            services.AddScoped<ILawFirmPersonRepo, LawFirmPersonRepo>();
            services.AddScoped<ILawFirmAffiliateRepo, LawFirmAffiliateRepo>();
            services.AddScoped<ILawFirmBranchRepo, LawFirmBranchRepo>();
            services.AddScoped<ILawFirmExpertiseRepo, LawFirmExpertiseRepo>();
            services.AddScoped<ILawFirmCounselRepo, LawFirmCounselRepo>();


            services.AddScoped<ICompanyLeaseContractRegisterRepo, CompanyLeaseContractRegisterRepo>();
            services.AddScoped<IRegistersCodeRepo, RegistersCodeRepo>();
            services.AddScoped<IPropertyRepo, PropertyRepo>();
            services.AddScoped<IPropertyOwnerRepo, PropertyOwnerRepo>();
            services.AddScoped<IPropertyLinkRepo, PropertyLinkRepo>();
            services.AddScoped<IPropertyDocumentRepo, PropertyDocumentRepo>();
            services.AddScoped<IPropertyStatusRepo, PropertyStatusRepo>();
            services.AddScoped<IDocumentRepo, DocumentRepo>();
            services.AddScoped<IDocumentReletedRegisterRepo, DocumentReletedRegisterRepo>();
            services.AddScoped<IDocumentTrackingRepo, DocumentTrackingRepo>();
            services.AddScoped<IDocumentTrackingsActionRepo, DocumentTrackingsActionRepo>();
            services.AddScoped<IFPCRepo, FPCRepo>();
            services.AddScoped<IFPCsODRepo, FPCsODRepo>();
            services.AddScoped<IFPCODActionRepo, FPCODActionRepo>();
            services.AddScoped<INumberRepo, NumberRepo>();
        }
    }
}
