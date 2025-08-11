using AutoMapper;
using Nexus.LAS.Application.UseCases.CompanyActivityUseCases.Commands.CreateCompanyActivity;
using Nexus.LAS.Application.UseCases.CompanyActivityUseCases.Commands.UpdateCompanyActivity;
using Nexus.LAS.Application.UseCases.CompanyAddressUseCases.Commands.CreateCompanyAddress;
using Nexus.LAS.Application.UseCases.CompanyAddressUseCases.Commands.UpdateCompanyAddress;
using Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases.Commands.CreateCompanyBankAccount;
using Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases.Commands.UpdateCompanyBankAccount;
using Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases.Commands.CreateCompanyBoardMember;
using Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases.Commands.UpdateCompanyBoardMember;
using Nexus.LAS.Application.UseCases.CompanyCapitalUseCases.Commands.CreateCompanyCapital;
using Nexus.LAS.Application.UseCases.CompanyCapitalUseCases.Commands.UpdateCompanyCapital;
using Nexus.LAS.Application.UseCases.CompanyChamberOfCommerceUseCases.Commands.CreateCompanyChamberOfCommerce;
using Nexus.LAS.Application.UseCases.CompanyChamberOfCommerceUseCases.Commands.UpdateCompanyChamberOfCommerce;
using Nexus.LAS.Application.UseCases.CompanyContractUseCases.Commands.CreateCompanyContract;
using Nexus.LAS.Application.UseCases.CompanyContractUseCases.Commands.UpdateCompanyContract;
using Nexus.LAS.Application.UseCases.CompanyEmailUseCases.Commands.CreateCompanyEmail;
using Nexus.LAS.Application.UseCases.CompanyEmailUseCases.Commands.UpdateCompanyEmail;
using Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Commands.CreateCompanyLicense;
using Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Commands.UpdateCompanyLicense;
using Nexus.LAS.Application.UseCases.CompanyOtherContractUseCases.Commands.CreateCompanyOtherContract;
using Nexus.LAS.Application.UseCases.CompanyOtherContractUseCases.Commands.UpdateCompanyOtherContract;
using Nexus.LAS.Application.UseCases.CompanyPersonInChargeUseCases.Commands.CreateCompanyPersonInCharge;
using Nexus.LAS.Application.UseCases.CompanyPersonInChargeUseCases.Commands.UpdateCompanyPersonInCharge;
using Nexus.LAS.Application.UseCases.CompanyPhoneUseCases.Commands.CreateCompanyPhone;
using Nexus.LAS.Application.UseCases.CompanyPhoneUseCases.Commands.UpdateCompanyPhone;
using Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases.Commands.CreateCompanyShareHolder;
using Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases.Commands.UpdateCompanyShareHolder;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.MappingProfiles;

public class CompanyEntitiesProfile : Profile
{
    public CompanyEntitiesProfile()


    {

        // CompanyActivity
        CreateMap<CreateCompanyActivityCommand, CompaniesActivity>();
        CreateMap<UpdateCompanyActivityCommand, CompaniesActivity>();

        // CompanyAddress
        CreateMap<CreateCompanyAddressCommand, CompaniesAddress>();
        CreateMap<UpdateCompanyAddressCommand, CompaniesAddress>();

        // CompanyBankAccount
        CreateMap<CreateCompanyBankAccountCommand, CompaniesBankAccount>();
        CreateMap<UpdateCompanyBankAccountCommand, CompaniesBankAccount>();

        // CompanyBoardMember
        CreateMap<CreateCompanyBoardMemberCommand, CompaniesBoardMember>();
        CreateMap<UpdateCompanyBoardMemberCommand, CompaniesBoardMember>();

        // CompanyCapital
        CreateMap<CreateCompanyCapitalCommand, CompaniesCapital>();
        CreateMap<UpdateCompanyCapitalCommand, CompaniesCapital>();

        // CompanyChamberOfCommerce
        CreateMap<CreateCompanyChamberOfCommerceCommand, CompaniesChamberOfCommerce>();
        CreateMap<UpdateCompanyChamberOfCommerceCommand, CompaniesChamberOfCommerce>();

        // CompanyContract
        CreateMap<CreateCompanyContractCommand, CompaniesContract>();
        CreateMap<UpdateCompanyContractCommand, CompaniesContract>();

        // CompanyEmail
        CreateMap<CreateCompanyEmailCommand, CompaniesEmail>();
        CreateMap<UpdateCompanyEmailCommand, CompaniesEmail>();

        // CompanyLicense
        CreateMap<CreateCompanyLicenseCommand, CompaniesLicense>();
        CreateMap<UpdateCompanyLicenseCommand, CompaniesLicense>();

        // CompanyOtherContract
        CreateMap<CreateCompanyOtherContractCommand, CompaniesOtherContract>();
        CreateMap<UpdateCompanyOtherContractCommand, CompaniesOtherContract>();

        // CompanyPersonInCharge
        CreateMap<CreateCompanyPersonInChargeCommand, CompaniesPersonInCharge>();
        CreateMap<UpdateCompanyPersonInChargeCommand, CompaniesPersonInCharge>();

        // CompanyPhone
        CreateMap<CreateCompanyPhoneCommand, CompaniesPhone>();
        CreateMap<UpdateCompanyPhoneCommand, CompaniesPhone>();

        // CompanyShareHolder
        CreateMap<CreateCompanyShareHolderCommand, CompaniesShareHolder>();
        CreateMap<UpdateCompanyShareHolderCommand, CompaniesShareHolder>();
    }
}