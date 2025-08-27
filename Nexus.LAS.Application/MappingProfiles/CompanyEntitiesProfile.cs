using AutoMapper;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.UseCases.CompanyActivityUseCases;
using Nexus.LAS.Application.UseCases.CompanyActivityUseCases.Commands.CreateCompanyActivity;
using Nexus.LAS.Application.UseCases.CompanyActivityUseCases.Commands.UpdateCompanyActivity;
using Nexus.LAS.Application.UseCases.CompanyAddressUseCases;
using Nexus.LAS.Application.UseCases.CompanyAddressUseCases.Commands.CreateCompanyAddress;
using Nexus.LAS.Application.UseCases.CompanyAddressUseCases.Commands.UpdateCompanyAddress;
using Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases;
using Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases.Commands.CreateCompanyBankAccount;
using Nexus.LAS.Application.UseCases.CompanyBankAccountUseCases.Commands.UpdateCompanyBankAccount;
using Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases;
using Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases.Commands.CreateCompanyBoardMember;
using Nexus.LAS.Application.UseCases.CompanyBoardMemberUseCases.Commands.UpdateCompanyBoardMember;
using Nexus.LAS.Application.UseCases.CompanyCapitalUseCases;
using Nexus.LAS.Application.UseCases.CompanyCapitalUseCases.Commands.CreateCompanyCapital;
using Nexus.LAS.Application.UseCases.CompanyCapitalUseCases.Commands.UpdateCompanyCapital;
using Nexus.LAS.Application.UseCases.CompanyChamberOfCommerceUseCases;
using Nexus.LAS.Application.UseCases.CompanyChamberOfCommerceUseCases.Commands.CreateCompanyChamberOfCommerce;
using Nexus.LAS.Application.UseCases.CompanyChamberOfCommerceUseCases.Commands.UpdateCompanyChamberOfCommerce;
using Nexus.LAS.Application.UseCases.CompanyContractUseCases;
using Nexus.LAS.Application.UseCases.CompanyContractUseCases.Commands.CreateCompanyContract;
using Nexus.LAS.Application.UseCases.CompanyContractUseCases.Commands.UpdateCompanyContract;
using Nexus.LAS.Application.UseCases.CompanyEmailUseCases;
using Nexus.LAS.Application.UseCases.CompanyEmailUseCases.Commands.CreateCompanyEmail;
using Nexus.LAS.Application.UseCases.CompanyEmailUseCases.Commands.UpdateCompanyEmail;
using Nexus.LAS.Application.UseCases.CompanyLicenseUseCases;
using Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Commands.CreateCompanyLicense;
using Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Commands.UpdateCompanyLicense;
using Nexus.LAS.Application.UseCases.CompanyOtherContractUseCases;
using Nexus.LAS.Application.UseCases.CompanyOtherContractUseCases.Commands.CreateCompanyOtherContract;
using Nexus.LAS.Application.UseCases.CompanyOtherContractUseCases.Commands.UpdateCompanyOtherContract;
using Nexus.LAS.Application.UseCases.CompanyPersonInChargeUseCases;
using Nexus.LAS.Application.UseCases.CompanyPersonInChargeUseCases.Commands.CreateCompanyPersonInCharge;
using Nexus.LAS.Application.UseCases.CompanyPersonInChargeUseCases.Commands.UpdateCompanyPersonInCharge;
using Nexus.LAS.Application.UseCases.CompanyPhoneUseCases;
using Nexus.LAS.Application.UseCases.CompanyPhoneUseCases.Commands.CreateCompanyPhone;
using Nexus.LAS.Application.UseCases.CompanyPhoneUseCases.Commands.UpdateCompanyPhone;
using Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases;
using Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases.Commands.CreateCompanyShareHolder;
using Nexus.LAS.Application.UseCases.CompanyShareHolderUseCases.Commands.UpdateCompanyShareHolder;
using Nexus.LAS.Application.UseCases.CompanyUseCases.Commands;
using Nexus.LAS.Domain.Entities.CompanyEntities;

namespace Nexus.LAS.Application.MappingProfiles;

public class CompanyEntitiesProfile : Profile
{
    public CompanyEntitiesProfile()


    {
        CreateMap<Company, GetCompanyDto>();
        CreateMap<PagingResult<Company>, PagingResult<GetCompanyDto>>();

        CreateMap<CreateCompanyCommand, Company>();
        CreateMap<Company, CreateCompanyCommand>();
        CreateMap<Company, UpdateCompanyCommand>();
        CreateMap<UpdateCompanyCommand, Company>();


        // CompanyActivity
        CreateMap<CreateCompanyActivityCommand, CompanyActivity>();
        CreateMap<UpdateCompanyActivityCommand, CompanyActivity>();


        // CompanyAddress
        CreateMap<CreateCompanyAddressCommand, CompanyAddress>();
        CreateMap<UpdateCompanyAddressCommand, CompanyAddress>();

        // CompanyBankAccount
        CreateMap<CreateCompanyBankAccountCommand, CompaniesBankAccount>();
        CreateMap<UpdateCompanyBankAccountCommand, CompaniesBankAccount>();
        CreateMap<UpsertCompanyBankAccountCommand, CompaniesBankAccount>()
    .ForMember(dest => dest.Id, opt => opt.Condition(src => src.Id.HasValue));

        // CompanyBoardMember
        CreateMap<CreateCompanyBoardMemberCommand, CompaniesBoardMember>();
        CreateMap<UpdateCompanyBoardMemberCommand, CompaniesBoardMember>();
        CreateMap<UpsertCompanyBoardMemberCommand, CompaniesBoardMember>()
    .ForMember(dest => dest.Id, opt => opt.Condition(src => src.Id.HasValue));

        // CompanyCapital
        CreateMap<CreateCompanyCapitalCommand, CompanyCapital>();
        CreateMap<UpdateCompanyCapitalCommand, CompanyCapital>();
        CreateMap<UpsertCompanyCapitalCommand, CompanyCapital>()
    .ForMember(dest => dest.Id, opt => opt.Condition(src => src.Id.HasValue));

        // CompanyChamberOfCommerce
        CreateMap<CreateCompanyChamberOfCommerceCommand, CompanyChamberOfCommerce>();
        CreateMap<UpdateCompanyChamberOfCommerceCommand, CompanyChamberOfCommerce>();
        CreateMap<UpsertCompanyChamberOfCommerceCommand, CompanyChamberOfCommerce>()
    .ForMember(dest => dest.Id, opt => opt.Condition(src => src.Id.HasValue));

        // CompanyContract
        CreateMap<CreateCompanyContractCommand, CompaniesContract>();
        CreateMap<UpdateCompanyContractCommand, CompaniesContract>();
        CreateMap<UpsertCompanyContractCommand, CompaniesContract>()
    .ForMember(dest => dest.Id, opt => opt.Condition(src => src.Id.HasValue));

        // CompanyEmail
        CreateMap<CreateCompanyEmailCommand, CompanyEmail>();
        CreateMap<UpdateCompanyEmailCommand, CompanyEmail>();
        CreateMap<UpsertCompanyEmailCommand, CompanyEmail>()
    .ForMember(dest => dest.Id, opt => opt.Condition(src => src.Id.HasValue));

        // CompanyLicense
        CreateMap<CreateCompanyLicenseCommand, CompanyLicense>();
        CreateMap<UpdateCompanyLicenseCommand, CompanyLicense>();
        CreateMap<UpsertCompanyLicenseCommand, CompanyLicense>()
    .ForMember(dest => dest.Id, opt => opt.Condition(src => src.Id.HasValue));

        // CompanyOtherContract
        CreateMap<CreateCompanyOtherContractCommand, CompaniesOtherContract>();
        CreateMap<UpdateCompanyOtherContractCommand, CompaniesOtherContract>();
        CreateMap<UpsertCompanyOtherContractCommand, CompaniesOtherContract>()
    .ForMember(dest => dest.Id, opt => opt.Condition(src => src.Id.HasValue));

        // CompanyPersonInCharge
        CreateMap<CreateCompanyPersonInChargeCommand, CompanyPersonInCharge>();
        CreateMap<UpdateCompanyPersonInChargeCommand, CompanyPersonInCharge>();
        CreateMap<UpsertCompanyPersonInChargeCommand, CompanyPersonInCharge>()
    .ForMember(dest => dest.Id, opt => opt.Condition(src => src.Id.HasValue));

        // CompanyPhone
        CreateMap<CreateCompanyPhoneCommand, CompanyPhone>();
        CreateMap<UpdateCompanyPhoneCommand, CompanyPhone>();
        CreateMap<UpsertCompanyPhoneCommand, CompanyPhone>()
    .ForMember(dest => dest.Id, opt => opt.Condition(src => src.Id.HasValue));

        // CompanyShareHolder
        CreateMap<CreateCompanyShareHolderCommand, CompanyShareHolder>();
        CreateMap<UpdateCompanyShareHolderCommand, CompanyShareHolder>();
        CreateMap<UpsertCompanyShareHolderCommand, CompanyShareHolder>()
    .ForMember(dest => dest.Id, opt => opt.Condition(src => src.Id.HasValue));


    }
}