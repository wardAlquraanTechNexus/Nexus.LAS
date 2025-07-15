using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class deletioninfo : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "Users",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "TransactionsRegisters",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "TransactionsOTFs",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "TransactionsInvoices",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "TransactionsActions",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "Transactions",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "tblFiles",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "RegistersNotes",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "RegistersCodes",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "PropertyLinks",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "PropertyDocuments",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "PropertiesStatus",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "PropertiesOwners",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "Properties",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "PersonsPhones",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "PersonsOtherDocuments",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "PersonsIDDetails",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "PersonsEmails",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "PersonsCapacities",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "PersonsAddresses",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "Persons",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "Numbers",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "Menus",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "LawFirmsPersons",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "LawFirmsExpertises",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "LawFirmsBranches",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "LawFirmsAffiliates",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "LawFirms",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "GroupsMenus",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "Groups",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "FPCsODsActions",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "FPCsODs",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "FPCs",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "DynamicLists",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "DocumentTrackingsActions",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "DocumentTrackings",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "Documents",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "DocumentReletedRegister",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "Currencies",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "Countries",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "CompaniesShareHoldersGroups",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "CompaniesShareHolders",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "CompaniesPhones",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "CompaniesPersonInCharges",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "CompaniesOtherContracts",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "CompaniesLicenses",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "CompaniesLeaseContracts",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "CompaniesLeaseContractRegisters",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "CompaniesEmails",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "CompaniesContracts",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "CompaniesChamberOfCommerces",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "CompaniesCapitals",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "CompaniesBoards",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "CompaniesBoardMembers",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "CompaniesBankAccount",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "CompaniesAuthorizedSignatories",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "CompaniesAddresses",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "CompaniesActivities",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "CompaniesAccountSignatory",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "Companies",
                type: "bit",
                nullable: false,
                defaultValue: false);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "Users");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "TransactionsRegisters");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "TransactionsOTFs");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "TransactionsInvoices");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "TransactionsActions");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "Transactions");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "tblFiles");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "RegistersNotes");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "RegistersCodes");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "PropertyLinks");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "PropertyDocuments");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "PropertiesStatus");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "PropertiesOwners");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "Properties");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "PersonsPhones");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "PersonsOtherDocuments");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "PersonsIDDetails");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "PersonsEmails");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "PersonsCapacities");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "PersonsAddresses");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "Persons");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "Numbers");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "Menus");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "LawFirmsPersons");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "LawFirmsExpertises");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "LawFirmsBranches");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "LawFirmsAffiliates");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "LawFirms");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "GroupsMenus");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "Groups");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "FPCsODsActions");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "FPCsODs");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "FPCs");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "DynamicLists");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "DocumentTrackingsActions");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "DocumentTrackings");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "Documents");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "DocumentReletedRegister");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "Currencies");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "Countries");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "CompaniesShareHoldersGroups");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "CompaniesShareHolders");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "CompaniesPhones");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "CompaniesPersonInCharges");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "CompaniesOtherContracts");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "CompaniesLicenses");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "CompaniesLeaseContracts");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "CompaniesLeaseContractRegisters");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "CompaniesEmails");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "CompaniesContracts");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "CompaniesChamberOfCommerces");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "CompaniesCapitals");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "CompaniesBoards");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "CompaniesBoardMembers");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "CompaniesBankAccount");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "CompaniesAuthorizedSignatories");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "CompaniesAddresses");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "CompaniesActivities");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "CompaniesAccountSignatory");

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "Companies");
        }
    }
}
