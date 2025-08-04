using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class newChanges : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "Users",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "UserGroups",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "TransactionsRegisters",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "TransactionsOTFs",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "TransactionsInvoices",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "TransactionsActions",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "Transactions",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "tblFiles",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "RegistersNotes",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "RegistersCodes",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "PropertyLinks",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "PropertyDocuments",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "PropertiesStatus",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "PropertiesOwners",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "Properties",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "PersonsPhones",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "PersonsOtherDocuments",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "PersonsIDDetails",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "PersonsEmails",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "PersonsCapacities",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "PersonsAddresses",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "Persons",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "Numbers",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "Menus",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "LawFirmsPersons",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "LawFirmsExpertises",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "LawFirmsBranches",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "LawFirmsAffiliates",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "LawFirms",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "GroupsMenus",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "Groups",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "FPCsODsActions",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "FPCsODs",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "FPCs",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "DynamicLists",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "DocumentTrackingsActions",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "DocumentTrackings",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "Documents",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "DocumentReletedRegister",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "Currencies",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "Countries",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "CompaniesShareHoldersGroups",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "CompaniesShareHolders",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "CompaniesPhones",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "CompaniesPersonInCharges",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "CompaniesOtherContracts",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "CompaniesLicenses",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "CompaniesLeaseContracts",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "CompaniesLeaseContractRegisters",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "CompaniesEmails",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "CompaniesContracts",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "CompaniesChamberOfCommerces",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "CompaniesCapitals",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "CompaniesBoards",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "CompaniesBoardMembers",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "CompaniesBankAccount",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "CompaniesAuthorizedSignatories",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "CompaniesAddresses",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "CompaniesActivities",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "CompaniesAccountSignatory",
                newName: "ModifiedBy");

            migrationBuilder.RenameColumn(
                name: "ModefiedBy",
                table: "Companies",
                newName: "ModifiedBy");

            migrationBuilder.AlterColumn<string>(
                name: "PersonShortName",
                table: "Persons",
                type: "nvarchar(100)",
                maxLength: 100,
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "PersonEnglishName",
                table: "Persons",
                type: "nvarchar(200)",
                maxLength: 200,
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "PersonArabicName",
                table: "Persons",
                type: "nvarchar(200)",
                maxLength: 200,
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Persons_PersonArabicName_Unique",
                table: "Persons",
                column: "PersonArabicName",
                unique: true,
                filter: "[PersonArabicName] IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_Persons_PersonEnglishName_Unique",
                table: "Persons",
                column: "PersonEnglishName",
                unique: true,
                filter: "[PersonEnglishName] IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_Persons_PersonShortName_Unique",
                table: "Persons",
                column: "PersonShortName",
                unique: true,
                filter: "[PersonShortName] IS NOT NULL");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_Persons_PersonArabicName_Unique",
                table: "Persons");

            migrationBuilder.DropIndex(
                name: "IX_Persons_PersonEnglishName_Unique",
                table: "Persons");

            migrationBuilder.DropIndex(
                name: "IX_Persons_PersonShortName_Unique",
                table: "Persons");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "Users",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "UserGroups",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "TransactionsRegisters",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "TransactionsOTFs",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "TransactionsInvoices",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "TransactionsActions",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "Transactions",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "tblFiles",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "RegistersNotes",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "RegistersCodes",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "PropertyLinks",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "PropertyDocuments",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "PropertiesStatus",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "PropertiesOwners",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "Properties",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "PersonsPhones",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "PersonsOtherDocuments",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "PersonsIDDetails",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "PersonsEmails",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "PersonsCapacities",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "PersonsAddresses",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "Persons",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "Numbers",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "Menus",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "LawFirmsPersons",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "LawFirmsExpertises",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "LawFirmsBranches",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "LawFirmsAffiliates",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "LawFirms",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "GroupsMenus",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "Groups",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "FPCsODsActions",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "FPCsODs",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "FPCs",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "DynamicLists",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "DocumentTrackingsActions",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "DocumentTrackings",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "Documents",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "DocumentReletedRegister",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "Currencies",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "Countries",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "CompaniesShareHoldersGroups",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "CompaniesShareHolders",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "CompaniesPhones",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "CompaniesPersonInCharges",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "CompaniesOtherContracts",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "CompaniesLicenses",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "CompaniesLeaseContracts",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "CompaniesLeaseContractRegisters",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "CompaniesEmails",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "CompaniesContracts",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "CompaniesChamberOfCommerces",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "CompaniesCapitals",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "CompaniesBoards",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "CompaniesBoardMembers",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "CompaniesBankAccount",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "CompaniesAuthorizedSignatories",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "CompaniesAddresses",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "CompaniesActivities",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "CompaniesAccountSignatory",
                newName: "ModefiedBy");

            migrationBuilder.RenameColumn(
                name: "ModifiedBy",
                table: "Companies",
                newName: "ModefiedBy");

            migrationBuilder.AlterColumn<string>(
                name: "PersonShortName",
                table: "Persons",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(100)",
                oldMaxLength: 100,
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "PersonEnglishName",
                table: "Persons",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(200)",
                oldMaxLength: 200,
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "PersonArabicName",
                table: "Persons",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(200)",
                oldMaxLength: 200,
                oldNullable: true);
        }
    }
}
