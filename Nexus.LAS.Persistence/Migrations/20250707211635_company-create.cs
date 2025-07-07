using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class companycreate : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Companies",
                columns: table => new
                {
                    CompanyIdn = table.Column<int>(type: "int", nullable: false)
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
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
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
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesAccountSignatory", x => x.CompaniesAccountSignatoryIDN);
                });

            migrationBuilder.CreateTable(
                name: "CompaniesActivities",
                columns: table => new
                {
                    CompaniesActivityIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CompaniesActivityIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    Activity = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesActivities", x => x.CompaniesActivityIDN);
                });

            migrationBuilder.CreateTable(
                name: "CompaniesAddresses",
                columns: table => new
                {
                    CompaniesAddressIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CompaniesAddressIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    AddressPrimary = table.Column<bool>(type: "bit", nullable: false),
                    AddressLine1 = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    AddressLine2 = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    AddressLine3 = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    POBoxumber = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    POBoxCity = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    POBoxCountry = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesAddresses", x => x.CompaniesAddressIDN);
                });

            migrationBuilder.CreateTable(
                name: "CompaniesAuthorizedSignatories",
                columns: table => new
                {
                    CompaniesAuthorizedSignatoryIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CompaniesAuthorizedSignatoryIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    Persons_IDN = table.Column<int>(type: "int", nullable: true),
                    POAType = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    POATypeDetails = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesAuthorizedSignatories", x => x.CompaniesAuthorizedSignatoryIDN);
                });

            migrationBuilder.CreateTable(
                name: "CompaniesBankAccount",
                columns: table => new
                {
                    CompaniesBankAccountIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CompaniesBankAccountIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    BankName = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    AccountNumber = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Note = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    BankAccountDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    BankAccountActive = table.Column<bool>(type: "bit", nullable: false),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesBankAccount", x => x.CompaniesBankAccountIDN);
                });

            migrationBuilder.CreateTable(
                name: "CompaniesBoardMembers",
                columns: table => new
                {
                    CompaniesBoardMemberIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CompaniesBoardMemberIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompaniesBoards_IDN = table.Column<int>(type: "int", nullable: true),
                    Person_IDN = table.Column<int>(type: "int", nullable: false),
                    BoardMemberPosition = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    BoardMemberActive = table.Column<bool>(type: "bit", nullable: true),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesBoardMembers", x => x.CompaniesBoardMemberIDN);
                });

            migrationBuilder.CreateTable(
                name: "CompaniesBoards",
                columns: table => new
                {
                    CompaniesBoardIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CompaniesBoardIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    BoardDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    BoardActive = table.Column<bool>(type: "bit", nullable: false),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesBoards", x => x.CompaniesBoardIDN);
                });

            migrationBuilder.CreateTable(
                name: "CompaniesCapitals",
                columns: table => new
                {
                    CompaniesCapitalIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CompaniesCapitalIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    CompaniesCapitalDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    CompaniesCapitalAmount = table.Column<double>(type: "float", nullable: true),
                    CompaniesCapitalNumberOfShares = table.Column<long>(type: "bigint", nullable: true),
                    CompaniesCapitalAuthorized = table.Column<double>(type: "float", nullable: true),
                    CompaniesCapitalPaid = table.Column<double>(type: "float", nullable: true),
                    CompaniesCapitalIssuedShares = table.Column<long>(type: "bigint", nullable: true),
                    CompaniesCapitalCurrency = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompaniesCapitalActive = table.Column<bool>(type: "bit", nullable: false),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesCapitals", x => x.CompaniesCapitalIDN);
                });

            migrationBuilder.CreateTable(
                name: "CompaniesChamberOfCommerces",
                columns: table => new
                {
                    CompaniesChamberOfCommerceIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CompaniesChamberOfCommerceIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    CCINumber = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CCIIssueDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    CCIExpiryDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    CCIExpiryActiveReminder = table.Column<bool>(type: "bit", nullable: true),
                    CCIUsername = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CCIPassword = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesChamberOfCommerces", x => x.CompaniesChamberOfCommerceIDN);
                });

            migrationBuilder.CreateTable(
                name: "CompaniesContracts",
                columns: table => new
                {
                    CompaniesContractIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CompaniesContractIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    ContractType = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    DocumentDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    CommencementDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    ContractExpiryDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    ContractExpiryActiveReminder = table.Column<bool>(type: "bit", nullable: true),
                    ContractDescription = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ContractStatus = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesContracts", x => x.CompaniesContractIDN);
                });

            migrationBuilder.CreateTable(
                name: "CompaniesEmails",
                columns: table => new
                {
                    CompaniesEmailIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CompaniesEmailIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    EmailPrimary = table.Column<bool>(type: "bit", nullable: false),
                    Email = table.Column<string>(type: "nvarchar(150)", maxLength: 150, nullable: false),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesEmails", x => x.CompaniesEmailIDN);
                });

            migrationBuilder.CreateTable(
                name: "CompaniesLeaseContractRegisters",
                columns: table => new
                {
                    CompaniesLeaseContracts_IDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    LeaseRegisters_IDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    LeaseRegisters_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesLeaseContractRegisters", x => x.CompaniesLeaseContracts_IDN);
                });

            migrationBuilder.CreateTable(
                name: "CompaniesLeaseContracts",
                columns: table => new
                {
                    CompaniesLeaseContractIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CompaniesLeaseContractIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    CommencementDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    LeaseContractExpiryDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    LeaseContractExpiryActiveReminder = table.Column<bool>(type: "bit", nullable: true),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesLeaseContracts", x => x.CompaniesLeaseContractIDN);
                });

            migrationBuilder.CreateTable(
                name: "CompaniesLicenses",
                columns: table => new
                {
                    CompaniesLicenseIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CompaniesLicenseIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    LicensePrimary = table.Column<bool>(type: "bit", nullable: false),
                    LicenseStatus = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    LicenseClassification = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    LicenseNumber = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    LicenseIssueDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    LicenseExpiryDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    LicenseExpiryActiveReminder = table.Column<bool>(type: "bit", nullable: true),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesLicenses", x => x.CompaniesLicenseIDN);
                });

            migrationBuilder.CreateTable(
                name: "CompaniesOtherContracts",
                columns: table => new
                {
                    CompaniesOtherContractIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CompaniesOtherContractIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    ContractDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    ContractDescription = table.Column<string>(type: "nvarchar(4000)", maxLength: 4000, nullable: false),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesOtherContracts", x => x.CompaniesOtherContractIDN);
                });

            migrationBuilder.CreateTable(
                name: "CompaniesPersonInCharges",
                columns: table => new
                {
                    CompaniesPersonInChargeIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CompaniesPersonInChargeIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    Persons_IDN = table.Column<int>(type: "int", nullable: false),
                    Designation = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Notes = table.Column<string>(type: "nvarchar(4000)", maxLength: 4000, nullable: false),
                    PersonInChargeDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    PersonInChargeActive = table.Column<bool>(type: "bit", nullable: true),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesPersonInCharges", x => x.CompaniesPersonInChargeIDN);
                });

            migrationBuilder.CreateTable(
                name: "CompaniesPhones",
                columns: table => new
                {
                    CompaniesPhoneIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CompaniesPhoneIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Companies_IDN = table.Column<int>(type: "int", nullable: true),
                    PhonePrimary = table.Column<bool>(type: "bit", nullable: true),
                    PhoneType = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    PhoneNumber = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesPhones", x => x.CompaniesPhoneIDN);
                });

            migrationBuilder.CreateTable(
                name: "CompaniesShareHolders",
                columns: table => new
                {
                    CompaniesShareHolderIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CompaniesShareHolderIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CompaniesShareHoldersGroups_IDN = table.Column<int>(type: "int", nullable: true),
                    Registers_IDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Registers_IDN = table.Column<int>(type: "int", nullable: false),
                    ShareHolderNumbersOfShares = table.Column<long>(type: "bigint", nullable: true),
                    ShareHolderDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    ShareHolderActive = table.Column<bool>(type: "bit", nullable: true),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesShareHolders", x => x.CompaniesShareHolderIDN);
                });

            migrationBuilder.CreateTable(
                name: "CompaniesShareHoldersGroups",
                columns: table => new
                {
                    CompaniesShareHoldersGroupIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    CompaniesShareHoldersGroupIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Companies_IDN = table.Column<int>(type: "int", nullable: false),
                    ShareHolderGroupDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ShareHolderGroupActive = table.Column<bool>(type: "bit", nullable: false),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CompaniesShareHoldersGroups", x => x.CompaniesShareHoldersGroupIDN);
                });
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
        }
    }
}
