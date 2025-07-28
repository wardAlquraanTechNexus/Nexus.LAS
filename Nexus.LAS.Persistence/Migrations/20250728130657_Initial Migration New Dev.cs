using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class InitialMigrationNewDev : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Companies",
                columns: table => new
                {
                    CompanyIdn = table.Column<int>(name: "CompanyIdn ", type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CompanyIdc = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompanyCode = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    IncorporationDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    CompanyEnglishName = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    CompanyArabicName = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    CompanyShortName = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompanyTypeIdn = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompanyType = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompanyClassIdn = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompanyClass = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    GroupCompany = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    RelevantCompany = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    LegalType = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CciNumber = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CciIssueDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    CciExpiryDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    CciExpiryActiveReminder = table.Column<bool>(type: "bit", nullable: true),
                    PlaceOfRegistrationMainIdn = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    PlaceOfRegistrationMain = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    PlaceOfRegistrationSubIdn = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    PlaceOfRegistrationSub = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CapitalAmount = table.Column<decimal>(type: "decimal(18,2)", nullable: true),
                    TotalShares = table.Column<long>(type: "bigint", nullable: true),
                    NumberOfPartners = table.Column<int>(type: "int", nullable: true),
                    UpdateDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    UpdateDescription = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Persons_IDN = table.Column<int>(type: "int", nullable: true),
                    CompanyStatus = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Private = table.Column<bool>(type: "bit", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Companies", x => x.CompanyIdn);
                });

            migrationBuilder.CreateTable(
                name: "CompaniesAccountSignatory",
                columns: table => new
                {
                    CompaniesAccountSignatoryIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CompaniesAccountSignatoryIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompaniesBankAccount_IDN = table.Column<int>(type: "int", nullable: false),
                    AccountSignatoryPerson_IDN = table.Column<int>(type: "int", nullable: false),
                    AccountSignatoryRule = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    FromAmount = table.Column<long>(type: "bigint", nullable: false),
                    ToAmount = table.Column<long>(type: "bigint", nullable: false),
                    Description = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    AccountSignatoryDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    AccountSignatoryActive = table.Column<bool>(type: "bit", nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesAccountSignatory", x => x.CompaniesAccountSignatoryIDN);
                });

            migrationBuilder.CreateTable(
                name: "CompaniesActivities",
                columns: table => new
                {
                    CompaniesActivityIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompaniesActivityIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    Activity = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesActivities", x => new { x.CompaniesActivityIDC, x.CompaniesActivityIDN });
                });

            migrationBuilder.CreateTable(
                name: "CompaniesAddresses",
                columns: table => new
                {
                    CompaniesAddressIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompaniesAddressIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    AddressPrimary = table.Column<bool>(type: "bit", nullable: false),
                    AddressLine1 = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    AddressLine2 = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    AddressLine3 = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    POBoxumber = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    POBoxCity = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    POBoxCountry = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesAddresses", x => new { x.CompaniesAddressIDC, x.CompaniesAddressIDN });
                });

            migrationBuilder.CreateTable(
                name: "CompaniesAuthorizedSignatories",
                columns: table => new
                {
                    CompaniesAuthorizedSignatoryIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompaniesAuthorizedSignatoryIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    Persons_IDN = table.Column<int>(type: "int", nullable: true),
                    POAType = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    POATypeDetails = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesAuthorizedSignatories", x => new { x.CompaniesAuthorizedSignatoryIDC, x.CompaniesAuthorizedSignatoryIDN });
                });

            migrationBuilder.CreateTable(
                name: "CompaniesBankAccount",
                columns: table => new
                {
                    CompaniesBankAccountIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompaniesBankAccountIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    BankName = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    AccountNumber = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Note = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    BankAccountDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    BankAccountActive = table.Column<bool>(type: "bit", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesBankAccount", x => new { x.CompaniesBankAccountIDC, x.CompaniesBankAccountIDN });
                });

            migrationBuilder.CreateTable(
                name: "CompaniesBoardMembers",
                columns: table => new
                {
                    CompaniesBoardMemberIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompaniesBoardMemberIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CompaniesBoards_IDN = table.Column<int>(type: "int", nullable: true),
                    Person_IDN = table.Column<int>(type: "int", nullable: false),
                    BoardMemberPosition = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    BoardMemberActive = table.Column<bool>(type: "bit", nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesBoardMembers", x => new { x.CompaniesBoardMemberIDC, x.CompaniesBoardMemberIDN });
                });

            migrationBuilder.CreateTable(
                name: "CompaniesBoards",
                columns: table => new
                {
                    CompaniesBoardIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompaniesBoardIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    BoardDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    BoardActive = table.Column<bool>(type: "bit", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesBoards", x => new { x.CompaniesBoardIDC, x.CompaniesBoardIDN });
                });

            migrationBuilder.CreateTable(
                name: "CompaniesCapitals",
                columns: table => new
                {
                    CompaniesCapitalIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompaniesCapitalIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    CompaniesCapitalDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    CompaniesCapitalAmount = table.Column<double>(type: "float", nullable: true),
                    CompaniesCapitalNumberOfShares = table.Column<long>(type: "bigint", nullable: true),
                    CompaniesCapitalAuthorized = table.Column<double>(type: "float", nullable: true),
                    CompaniesCapitalPaid = table.Column<double>(type: "float", nullable: true),
                    CompaniesCapitalIssuedShares = table.Column<long>(type: "bigint", nullable: true),
                    CompaniesCapitalCurrency = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompaniesCapitalActive = table.Column<bool>(type: "bit", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesCapitals", x => new { x.CompaniesCapitalIDC, x.CompaniesCapitalIDN });
                });

            migrationBuilder.CreateTable(
                name: "CompaniesChamberOfCommerces",
                columns: table => new
                {
                    CompaniesChamberOfCommerceIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompaniesChamberOfCommerceIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    CCINumber = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CCIIssueDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    CCIExpiryDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    CCIExpiryActiveReminder = table.Column<bool>(type: "bit", nullable: true),
                    CCIUsername = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CCIPassword = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesChamberOfCommerces", x => new { x.CompaniesChamberOfCommerceIDC, x.CompaniesChamberOfCommerceIDN });
                });

            migrationBuilder.CreateTable(
                name: "CompaniesContracts",
                columns: table => new
                {
                    CompaniesContractIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompaniesContractIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    ContractType = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    DocumentDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    CommencementDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    ContractExpiryDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    ContractExpiryActiveReminder = table.Column<bool>(type: "bit", nullable: true),
                    ContractDescription = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ContractStatus = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesContracts", x => new { x.CompaniesContractIDC, x.CompaniesContractIDN });
                });

            migrationBuilder.CreateTable(
                name: "CompaniesEmails",
                columns: table => new
                {
                    CompaniesEmailIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompaniesEmailIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    EmailPrimary = table.Column<bool>(type: "bit", nullable: false),
                    Email = table.Column<string>(type: "nvarchar(150)", maxLength: 150, nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesEmails", x => new { x.CompaniesEmailIDC, x.CompaniesEmailIDN });
                });

            migrationBuilder.CreateTable(
                name: "CompaniesLeaseContractRegisters",
                columns: table => new
                {
                    CompaniesLeaseContracts_IDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    LeaseRegisters_IDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    LeaseRegisters_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesLeaseContractRegisters", x => new { x.CompaniesLeaseContracts_IDN, x.LeaseRegisters_IDC });
                });

            migrationBuilder.CreateTable(
                name: "CompaniesLeaseContracts",
                columns: table => new
                {
                    CompaniesLeaseContractIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompaniesLeaseContractIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    CommencementDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    LeaseContractExpiryDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    LeaseContractExpiryActiveReminder = table.Column<bool>(type: "bit", nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesLeaseContracts", x => new { x.CompaniesLeaseContractIDC, x.CompaniesLeaseContractIDN });
                });

            migrationBuilder.CreateTable(
                name: "CompaniesLicenses",
                columns: table => new
                {
                    CompaniesLicenseIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompaniesLicenseIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    LicensePrimary = table.Column<bool>(type: "bit", nullable: false),
                    LicenseStatus = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    LicenseClassification = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    LicenseNumber = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    LicenseIssueDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    LicenseExpiryDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    LicenseExpiryActiveReminder = table.Column<bool>(type: "bit", nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesLicenses", x => new { x.CompaniesLicenseIDC, x.CompaniesLicenseIDN });
                });

            migrationBuilder.CreateTable(
                name: "CompaniesOtherContracts",
                columns: table => new
                {
                    CompaniesOtherContractIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompaniesOtherContractIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    ContractDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    ContractDescription = table.Column<string>(type: "nvarchar(4000)", maxLength: 4000, nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesOtherContracts", x => new { x.CompaniesOtherContractIDC, x.CompaniesOtherContractIDN });
                });

            migrationBuilder.CreateTable(
                name: "CompaniesPersonInCharges",
                columns: table => new
                {
                    CompaniesPersonInChargeIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompaniesPersonInChargeIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    Persons_IDN = table.Column<int>(type: "int", nullable: false),
                    Designation = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Notes = table.Column<string>(type: "nvarchar(4000)", maxLength: 4000, nullable: false),
                    PersonInChargeDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    PersonInChargeActive = table.Column<bool>(type: "bit", nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesPersonInCharges", x => new { x.CompaniesPersonInChargeIDC, x.CompaniesPersonInChargeIDN });
                });

            migrationBuilder.CreateTable(
                name: "CompaniesPhones",
                columns: table => new
                {
                    CompaniesPhoneIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompaniesPhoneIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Companies_IDN = table.Column<int>(type: "int", nullable: true),
                    PhonePrimary = table.Column<bool>(type: "bit", nullable: true),
                    PhoneType = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    PhoneNumber = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesPhones", x => new { x.CompaniesPhoneIDC, x.CompaniesPhoneIDN });
                });

            migrationBuilder.CreateTable(
                name: "CompaniesShareHolders",
                columns: table => new
                {
                    CompaniesShareHolderIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompaniesShareHolderIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CompaniesShareHoldersGroups_IDN = table.Column<int>(type: "int", nullable: true),
                    Registers_IDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Registers_IDN = table.Column<int>(type: "int", nullable: false),
                    ShareHolderNumbersOfShares = table.Column<long>(type: "bigint", nullable: true),
                    ShareHolderDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    ShareHolderActive = table.Column<bool>(type: "bit", nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesShareHolders", x => new { x.CompaniesShareHolderIDC, x.CompaniesShareHolderIDN });
                });

            migrationBuilder.CreateTable(
                name: "CompaniesShareHoldersGroups",
                columns: table => new
                {
                    CompaniesShareHoldersGroupIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompaniesShareHoldersGroupIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    ShareHolderGroupDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ShareHolderGroupActive = table.Column<bool>(type: "bit", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesShareHoldersGroups", x => new { x.CompaniesShareHoldersGroupIDC, x.CompaniesShareHoldersGroupIDN });
                });

            migrationBuilder.CreateTable(
                name: "Countries",
                columns: table => new
                {
                    CountryId = table.Column<int>(type: "int", nullable: false),
                    CountryName = table.Column<string>(type: "nvarchar(500)", maxLength: 500, nullable: true),
                    FIPS104 = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    ISO2 = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    ISO3 = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    ISON = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Internet = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Capital = table.Column<string>(type: "nvarchar(500)", maxLength: 500, nullable: true),
                    MapReference = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    NationalitySingular = table.Column<string>(type: "nvarchar(500)", maxLength: 500, nullable: true),
                    NationalityPlural = table.Column<string>(type: "nvarchar(500)", maxLength: 500, nullable: true),
                    Currency = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    CurrencyCode = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Population = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Title = table.Column<string>(type: "nvarchar(500)", maxLength: 500, nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Countries", x => x.CountryId);
                });

            migrationBuilder.CreateTable(
                name: "Currencies",
                columns: table => new
                {
                    id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Entity = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    Currency = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    AlphabeticCode = table.Column<string>(type: "nvarchar(3)", maxLength: 3, nullable: false),
                    NumericCode = table.Column<string>(type: "nvarchar(3)", maxLength: 3, nullable: true),
                    MinorUnit = table.Column<string>(type: "nvarchar(1)", maxLength: 1, nullable: true),
                    IsFundYesNo = table.Column<bool>(type: "bit", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Currencies", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "DocumentReletedRegister",
                columns: table => new
                {
                    Document_IDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Document_IDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Registers_IDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Registers_IDN = table.Column<int>(type: "int", nullable: false),
                    Owner = table.Column<bool>(type: "bit", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DocumentReletedRegister", x => new { x.Document_IDC, x.Document_IDN, x.Registers_IDC, x.Registers_IDN, x.Owner });
                });

            migrationBuilder.CreateTable(
                name: "Documents",
                columns: table => new
                {
                    DocumentIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    DocumentIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    SharepointFilename = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    DocumentPath = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    DocumentINDateReceived = table.Column<DateTime>(type: "datetime2", nullable: true),
                    DocumentINDescription = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    DocumentINReceivedFrom = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    DocumentINReason = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    DocumentOutDateCollected = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    DocumentOutCollectedBy = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    DocumentOutReason = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Documents", x => new { x.DocumentIDC, x.DocumentIDN });
                });

            migrationBuilder.CreateTable(
                name: "DocumentTrackings",
                columns: table => new
                {
                    DocumentTrackingIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    DocumentTrackingIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    DocumentTrackingCode = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    ReferenceNumber = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Persons_IDN = table.Column<int>(type: "int", nullable: false),
                    Registers_IDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Registers_IDN = table.Column<int>(type: "int", nullable: false),
                    Description = table.Column<string>(type: "nvarchar(4000)", maxLength: 4000, nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DocumentTrackings", x => x.DocumentTrackingIDN);
                });

            migrationBuilder.CreateTable(
                name: "DocumentTrackingsActions",
                columns: table => new
                {
                    DocumentTrackingsActionIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    DocumentTrackingsActionIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    DocumentTrackings_IDN = table.Column<int>(type: "int", nullable: false),
                    ActionType = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    ActionDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ActionDescription = table.Column<string>(type: "nvarchar(4000)", maxLength: 4000, nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DocumentTrackingsActions", x => x.DocumentTrackingsActionIDN);
                });

            migrationBuilder.CreateTable(
                name: "DynamicLists",
                columns: table => new
                {
                    DynamicListIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    DynamicListIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    LinkedCategory = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    MainListID = table.Column<int>(type: "int", nullable: true),
                    MenuCategory = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    MenuValue = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Active = table.Column<bool>(type: "bit", nullable: true),
                    Rank = table.Column<int>(type: "int", nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DynamicLists", x => new { x.DynamicListIDC, x.DynamicListIDN });
                });

            migrationBuilder.CreateTable(
                name: "FPCs",
                columns: table => new
                {
                    FPCIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    FPCIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    FPCCode = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Registers_IDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Registers_IDN = table.Column<int>(type: "int", nullable: false),
                    FPCStatus = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Private = table.Column<bool>(type: "bit", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_FPCs", x => new { x.FPCIDC, x.FPCIDN });
                });

            migrationBuilder.CreateTable(
                name: "FPCsODs",
                columns: table => new
                {
                    FPCsODIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    FPCsODIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    FPCs_IDN = table.Column<int>(type: "int", nullable: false),
                    DocType = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Description = table.Column<string>(type: "nvarchar(4000)", maxLength: 4000, nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_FPCsODs", x => new { x.FPCsODIDC, x.FPCsODIDN });
                });

            migrationBuilder.CreateTable(
                name: "FPCsODsActions",
                columns: table => new
                {
                    FPCsODsActionIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    FPCsODsActionIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    FPCsODs_IDN = table.Column<int>(type: "int", nullable: false),
                    ActionType = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    ActionDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ActionDescription = table.Column<string>(type: "nvarchar(4000)", maxLength: 4000, nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_FPCsODsActions", x => new { x.FPCsODsActionIDC, x.FPCsODsActionIDN });
                });

            migrationBuilder.CreateTable(
                name: "Groups",
                columns: table => new
                {
                    id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    GroupName = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Description = table.Column<string>(type: "nvarchar(200)", maxLength: 200, nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Groups", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "LawFirms",
                columns: table => new
                {
                    LawFirmIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    LawFirmIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    LawFirmCode = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    LawFirmEnglishName = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    LawFirmArabicName = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    LawFirmShortName = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    LawFirmStatus = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    LawFirmLASDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    LawFirmEstYear = table.Column<int>(type: "int", nullable: true),
                    LawFirmWebsite = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Private = table.Column<bool>(type: "bit", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_LawFirms", x => x.LawFirmIDN);
                });

            migrationBuilder.CreateTable(
                name: "LawFirmsAffiliates",
                columns: table => new
                {
                    LawFirmsAffiliateIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    LawFirmsAffiliateIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    LawFirms_IDN = table.Column<int>(type: "int", nullable: true),
                    AffiliateName = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_LawFirmsAffiliates", x => x.LawFirmsAffiliateIDN);
                });

            migrationBuilder.CreateTable(
                name: "LawFirmsBranches",
                columns: table => new
                {
                    LawFirmsBranchIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    LawFirmsBranchIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    LawFirms_IDN = table.Column<int>(type: "int", nullable: true),
                    BranchName = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Country = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    City = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Phone1 = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Phone2 = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Phone3 = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Fax = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Email1 = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Email2 = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    BranchPrimary = table.Column<bool>(type: "bit", nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_LawFirmsBranches", x => x.LawFirmsBranchIDN);
                });

            migrationBuilder.CreateTable(
                name: "LawFirmsExpertises",
                columns: table => new
                {
                    LawFirmsExpertiseIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    LawFirmsExpertiseIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    LawFirms_IDN = table.Column<int>(type: "int", nullable: false),
                    ExpertiseName = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_LawFirmsExpertises", x => x.LawFirmsExpertiseIDN);
                });

            migrationBuilder.CreateTable(
                name: "LawFirmsPersons",
                columns: table => new
                {
                    StaffID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    LawFirms_IDN = table.Column<int>(type: "int", nullable: false),
                    StaffLevel = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    Name = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    Practice = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    Email = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    Phone = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    StaffStatus = table.Column<bool>(type: "bit", nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_LawFirmsPersons", x => x.StaffID);
                });

            migrationBuilder.CreateTable(
                name: "Menus",
                columns: table => new
                {
                    id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ParentID = table.Column<int>(type: "int", nullable: true),
                    Name = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Path = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Rank = table.Column<int>(type: "int", nullable: true),
                    Description = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    IconClass = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    InDashboard = table.Column<bool>(type: "bit", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Menus", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "Numbers",
                columns: table => new
                {
                    NumberValue = table.Column<int>(type: "int", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Numbers", x => x.NumberValue);
                });

            migrationBuilder.CreateTable(
                name: "Persons",
                columns: table => new
                {
                    PersonIDC = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    PersonIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    PersonCode = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    PersonEnglishName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PersonArabicName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PersonShortName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Website = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PersonStatus = table.Column<int>(type: "int", nullable: false),
                    Private = table.Column<bool>(type: "bit", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Persons", x => x.PersonIDN);
                });

            migrationBuilder.CreateTable(
                name: "PersonsAddresses",
                columns: table => new
                {
                    PersonsAddressIDC = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PersonsAddressIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Persons_IDN = table.Column<int>(type: "int", nullable: false),
                    AddressPrimary = table.Column<bool>(type: "bit", nullable: false),
                    AddressLine1 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    AddressLine2 = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    AddressLine3 = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    POBoxumber = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    POBoxCity = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    POBoxCountry = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PersonsAddresses", x => x.PersonsAddressIDN);
                });

            migrationBuilder.CreateTable(
                name: "PersonsCapacities",
                columns: table => new
                {
                    PersonsCapacityIDC = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    PersonsCapacityIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Persons_IDN = table.Column<int>(type: "int", nullable: false),
                    CapacityName = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CapacityOther = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CapacityHourRate = table.Column<double>(type: "float", nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PersonsCapacities", x => new { x.PersonsCapacityIDC, x.PersonsCapacityIDN });
                });

            migrationBuilder.CreateTable(
                name: "PersonsEmails",
                columns: table => new
                {
                    PersonsEmailIDC = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PersonsEmailIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Persons_IDN = table.Column<int>(type: "int", nullable: false),
                    EmailPrimary = table.Column<bool>(type: "bit", nullable: false),
                    Email = table.Column<string>(type: "nvarchar(150)", maxLength: 150, nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PersonsEmails", x => x.PersonsEmailIDN);
                });

            migrationBuilder.CreateTable(
                name: "PersonsIDDetails",
                columns: table => new
                {
                    PersonsIDDetailIDC = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    PersonsIDDetailIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Persons_IDN = table.Column<int>(type: "int", nullable: true),
                    IDPrimary = table.Column<bool>(type: "bit", nullable: true),
                    IDType = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    IDNationality = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    IDPlaceOfIssue = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    IDNumber = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    IDIssueDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IDExpiryDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IDExpiryActiveReminder = table.Column<bool>(type: "bit", nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PersonsIDDetails", x => x.PersonsIDDetailIDN);
                });

            migrationBuilder.CreateTable(
                name: "PersonsOtherDocuments",
                columns: table => new
                {
                    PersonsOtherDocumentIDC = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PersonsOtherDocumentIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Persons_IDN = table.Column<int>(type: "int", nullable: false),
                    DocumentType = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    DocumentDescription = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PersonsOtherDocuments", x => x.PersonsOtherDocumentIDN);
                });

            migrationBuilder.CreateTable(
                name: "PersonsPhones",
                columns: table => new
                {
                    PersonsPhoneIDC = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PersonsPhoneIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Persons_IDN = table.Column<int>(type: "int", nullable: true),
                    PhonePrimary = table.Column<bool>(type: "bit", nullable: true),
                    PhoneType = table.Column<int>(type: "int", nullable: true),
                    PhoneNumber = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PersonsPhones", x => x.PersonsPhoneIDN);
                });

            migrationBuilder.CreateTable(
                name: "Properties",
                columns: table => new
                {
                    PropertyIDC = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    PropertyIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    PropertyCode = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    PropertiesTypeOfTitle = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertiesGrantor = table.Column<bool>(type: "bit", nullable: true),
                    PropertiesGrantorAddress = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertiesGrantorTitleCommencementDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    PropertiesGrantorTitleExpiryDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    PropertiesGrantorTitleExpiryActiveReminder = table.Column<bool>(type: "bit", nullable: true),
                    PropertiesGrantorDescription = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertiesLocationCountryIdn = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertiesLocationCountry = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertiesLocationCityIdn = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertiesLocationCity = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertiesLocationAreaIdn = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertiesLocationArea = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertiesLocationDetails = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertiesType = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertiesPurpose = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertiesStatus = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertyStatus = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Private = table.Column<bool>(type: "bit", nullable: false),
                    PropertiesPlot = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    FArea = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    MArea = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertyFArea = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertyMArea = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Properties", x => new { x.PropertyIDC, x.PropertyIDN });
                });

            migrationBuilder.CreateTable(
                name: "PropertiesOwners",
                columns: table => new
                {
                    PropertiesOwnerIDC = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    PropertiesOwnerIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Properties_IDN = table.Column<int>(type: "int", nullable: false),
                    Registers_IDC = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Registers_IDN = table.Column<int>(type: "int", nullable: false),
                    Relation = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OwnStartDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    OwnFinishDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    OwnActive = table.Column<bool>(type: "bit", nullable: true),
                    Remarks = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PropertiesOwners", x => new { x.PropertiesOwnerIDC, x.PropertiesOwnerIDN });
                });

            migrationBuilder.CreateTable(
                name: "PropertiesStatus",
                columns: table => new
                {
                    id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Property_IDN = table.Column<int>(type: "int", nullable: true),
                    Property_Code = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Status = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PropertiesStatus", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "PropertyDocuments",
                columns: table => new
                {
                    PropertyDocumentsIdc = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    PropertyDocumentsIdn = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Property_IDN = table.Column<int>(type: "int", nullable: true),
                    DocumentType = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DocumentPlaceOfIssue = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DocumentIssueDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    DocumentExpiryDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    DocumentExpiryActiveReminder = table.Column<bool>(type: "bit", nullable: true),
                    Description = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PropertyDocuments", x => new { x.PropertyDocumentsIdc, x.PropertyDocumentsIdn });
                });

            migrationBuilder.CreateTable(
                name: "PropertyLinks",
                columns: table => new
                {
                    PropertyLinksIdc = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    PropertyLinksIdn = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Registers_IDC = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Registers_IDN = table.Column<int>(type: "int", nullable: false),
                    PropertyLinksValue = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    PropertyLinksRemarks = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PropertyLinks", x => new { x.PropertyLinksIdc, x.PropertyLinksIdn });
                });

            migrationBuilder.CreateTable(
                name: "RegistersCodes",
                columns: table => new
                {
                    Code = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    CodeCounter = table.Column<int>(type: "int", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_RegistersCodes", x => x.Code);
                });

            migrationBuilder.CreateTable(
                name: "RegistersNotes",
                columns: table => new
                {
                    RegistersNoteIDC = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    RegistersNoteIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Registers_IDC = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Registers_IDN = table.Column<int>(type: "int", nullable: false),
                    RegistersNotes = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    NoteDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_RegistersNotes", x => new { x.RegistersNoteIDC, x.RegistersNoteIDN });
                });

            migrationBuilder.CreateTable(
                name: "tblFiles",
                columns: table => new
                {
                    FileID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Registers_IDC = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Registers_IDN = table.Column<int>(type: "int", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ContentType = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Data = table.Column<byte[]>(type: "varbinary(max)", nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_tblFiles", x => x.FileID);
                });

            migrationBuilder.CreateTable(
                name: "Transactions",
                columns: table => new
                {
                    TransactionIDC = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    TransactionIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    TransactionDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    TransactionCode = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    TransactionSubjectType = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    TransactionSubjectDescription = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    TransactionStatus = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Private = table.Column<bool>(type: "bit", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Transactions", x => new { x.TransactionIDC, x.TransactionIDN });
                });

            migrationBuilder.CreateTable(
                name: "TransactionsActions",
                columns: table => new
                {
                    TransactionsActionIDC = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    TransactionsActionIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Transactions_IDN = table.Column<int>(type: "int", nullable: false),
                    Persons_IDN = table.Column<int>(type: "int", nullable: false),
                    Time = table.Column<int>(type: "int", nullable: true),
                    Description = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    DueDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ClosedDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    ActionStatus = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TransactionsActions", x => new { x.TransactionsActionIDC, x.TransactionsActionIDN });
                });

            migrationBuilder.CreateTable(
                name: "TransactionsInvoices",
                columns: table => new
                {
                    TransactionsInvoiceIDC = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    TransactionsInvoiceIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Transactions_IDN = table.Column<int>(type: "int", nullable: false),
                    LawFirms_IDN = table.Column<int>(type: "int", nullable: false),
                    Invoice = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    InvoiceDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    Amount = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Paid = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Currency = table.Column<int>(type: "int", nullable: true),
                    Note = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TransactionsInvoices", x => new { x.TransactionsInvoiceIDC, x.TransactionsInvoiceIDN });
                });

            migrationBuilder.CreateTable(
                name: "TransactionsOTFs",
                columns: table => new
                {
                    TransactionsOTFIDC = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    TransactionsOTFIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Transactions_IDN = table.Column<int>(type: "int", nullable: false),
                    OTFRegisters_IDC = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    OTFRegisters_IDN = table.Column<int>(type: "int", nullable: false),
                    id = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TransactionsOTFs", x => new { x.TransactionsOTFIDC, x.TransactionsOTFIDN });
                });

            migrationBuilder.CreateTable(
                name: "TransactionsRegisters",
                columns: table => new
                {
                    TransactionsRegisterIDC = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    TransactionsRegisterIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Transactions_IDN = table.Column<int>(type: "int", nullable: false),
                    Registers_IDC = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Registers_IDN = table.Column<int>(type: "int", nullable: false),
                    PrimaryRegister = table.Column<bool>(type: "bit", nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TransactionsRegisters", x => new { x.TransactionsRegisterIDC, x.TransactionsRegisterIDN });
                });

            migrationBuilder.CreateTable(
                name: "UserGroups",
                columns: table => new
                {
                    UserId = table.Column<int>(type: "int", nullable: false),
                    GroupId = table.Column<int>(type: "int", nullable: false),
                    id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UserGroups", x => new { x.UserId, x.GroupId });
                });

            migrationBuilder.CreateTable(
                name: "Users",
                columns: table => new
                {
                    id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Username = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    LoginName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    NTLogin = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Persons_IDN = table.Column<int>(type: "int", nullable: true),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Users", x => x.id);
                });

            migrationBuilder.CreateTable(
                name: "GroupsMenus",
                columns: table => new
                {
                    GroupID = table.Column<int>(type: "int", nullable: false),
                    MenuID = table.Column<int>(type: "int", nullable: false),
                    Access = table.Column<int>(type: "int", nullable: true),
                    CanInsert = table.Column<int>(type: "int", nullable: true),
                    CanUpdate = table.Column<int>(type: "int", nullable: true),
                    CanDelete = table.Column<int>(type: "int", nullable: true),
                    Admin = table.Column<int>(type: "int", nullable: true),
                    id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedAt = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ModefiedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ModifiedAt = table.Column<DateTime>(type: "datetime2", nullable: true),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedAt = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_GroupsMenus", x => new { x.GroupID, x.MenuID });
                    table.ForeignKey(
                        name: "FK_GroupsMenus_Groups_GroupID",
                        column: x => x.GroupID,
                        principalTable: "Groups",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_GroupsMenus_Menus_MenuID",
                        column: x => x.MenuID,
                        principalTable: "Menus",
                        principalColumn: "id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_GroupsMenus_MenuID",
                table: "GroupsMenus",
                column: "MenuID");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Companies");

            migrationBuilder.DropTable(
                name: "CompaniesAccountSignatory");

            migrationBuilder.DropTable(
                name: "CompaniesActivities");

            migrationBuilder.DropTable(
                name: "CompaniesAddresses");

            migrationBuilder.DropTable(
                name: "CompaniesAuthorizedSignatories");

            migrationBuilder.DropTable(
                name: "CompaniesBankAccount");

            migrationBuilder.DropTable(
                name: "CompaniesBoardMembers");

            migrationBuilder.DropTable(
                name: "CompaniesBoards");

            migrationBuilder.DropTable(
                name: "CompaniesCapitals");

            migrationBuilder.DropTable(
                name: "CompaniesChamberOfCommerces");

            migrationBuilder.DropTable(
                name: "CompaniesContracts");

            migrationBuilder.DropTable(
                name: "CompaniesEmails");

            migrationBuilder.DropTable(
                name: "CompaniesLeaseContractRegisters");

            migrationBuilder.DropTable(
                name: "CompaniesLeaseContracts");

            migrationBuilder.DropTable(
                name: "CompaniesLicenses");

            migrationBuilder.DropTable(
                name: "CompaniesOtherContracts");

            migrationBuilder.DropTable(
                name: "CompaniesPersonInCharges");

            migrationBuilder.DropTable(
                name: "CompaniesPhones");

            migrationBuilder.DropTable(
                name: "CompaniesShareHolders");

            migrationBuilder.DropTable(
                name: "CompaniesShareHoldersGroups");

            migrationBuilder.DropTable(
                name: "Countries");

            migrationBuilder.DropTable(
                name: "Currencies");

            migrationBuilder.DropTable(
                name: "DocumentReletedRegister");

            migrationBuilder.DropTable(
                name: "Documents");

            migrationBuilder.DropTable(
                name: "DocumentTrackings");

            migrationBuilder.DropTable(
                name: "DocumentTrackingsActions");

            migrationBuilder.DropTable(
                name: "DynamicLists");

            migrationBuilder.DropTable(
                name: "FPCs");

            migrationBuilder.DropTable(
                name: "FPCsODs");

            migrationBuilder.DropTable(
                name: "FPCsODsActions");

            migrationBuilder.DropTable(
                name: "GroupsMenus");

            migrationBuilder.DropTable(
                name: "LawFirms");

            migrationBuilder.DropTable(
                name: "LawFirmsAffiliates");

            migrationBuilder.DropTable(
                name: "LawFirmsBranches");

            migrationBuilder.DropTable(
                name: "LawFirmsExpertises");

            migrationBuilder.DropTable(
                name: "LawFirmsPersons");

            migrationBuilder.DropTable(
                name: "Numbers");

            migrationBuilder.DropTable(
                name: "Persons");

            migrationBuilder.DropTable(
                name: "PersonsAddresses");

            migrationBuilder.DropTable(
                name: "PersonsCapacities");

            migrationBuilder.DropTable(
                name: "PersonsEmails");

            migrationBuilder.DropTable(
                name: "PersonsIDDetails");

            migrationBuilder.DropTable(
                name: "PersonsOtherDocuments");

            migrationBuilder.DropTable(
                name: "PersonsPhones");

            migrationBuilder.DropTable(
                name: "Properties");

            migrationBuilder.DropTable(
                name: "PropertiesOwners");

            migrationBuilder.DropTable(
                name: "PropertiesStatus");

            migrationBuilder.DropTable(
                name: "PropertyDocuments");

            migrationBuilder.DropTable(
                name: "PropertyLinks");

            migrationBuilder.DropTable(
                name: "RegistersCodes");

            migrationBuilder.DropTable(
                name: "RegistersNotes");

            migrationBuilder.DropTable(
                name: "tblFiles");

            migrationBuilder.DropTable(
                name: "Transactions");

            migrationBuilder.DropTable(
                name: "TransactionsActions");

            migrationBuilder.DropTable(
                name: "TransactionsInvoices");

            migrationBuilder.DropTable(
                name: "TransactionsOTFs");

            migrationBuilder.DropTable(
                name: "TransactionsRegisters");

            migrationBuilder.DropTable(
                name: "UserGroups");

            migrationBuilder.DropTable(
                name: "Users");

            migrationBuilder.DropTable(
                name: "Groups");

            migrationBuilder.DropTable(
                name: "Menus");
        }
    }
}
