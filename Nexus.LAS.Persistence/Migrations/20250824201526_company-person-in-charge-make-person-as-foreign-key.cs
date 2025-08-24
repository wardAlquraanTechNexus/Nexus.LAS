using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class companypersoninchargemakepersonasforeignkey : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesShareHoldersGroups",
                table: "CompaniesShareHoldersGroups");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesShareHolders",
                table: "CompaniesShareHolders");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesPhones",
                table: "CompaniesPhones");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesPersonInCharges",
                table: "CompaniesPersonInCharges");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesOtherContracts",
                table: "CompaniesOtherContracts");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesLicenses",
                table: "CompaniesLicenses");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesLeaseContracts",
                table: "CompaniesLeaseContracts");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesLeaseContractRegisters",
                table: "CompaniesLeaseContractRegisters");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesEmails",
                table: "CompaniesEmails");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesContracts",
                table: "CompaniesContracts");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesChamberOfCommerces",
                table: "CompaniesChamberOfCommerces");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesBoards",
                table: "CompaniesBoards");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesBoardMembers",
                table: "CompaniesBoardMembers");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesBankAccount",
                table: "CompaniesBankAccount");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesAuthorizedSignatories",
                table: "CompaniesAuthorizedSignatories");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesAddresses",
                table: "CompaniesAddresses");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesActivities",
                table: "CompaniesActivities");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesShareHoldersGroups",
                table: "CompaniesShareHoldersGroups",
                column: "CompaniesShareHoldersGroupIDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesShareHolders",
                table: "CompaniesShareHolders",
                column: "CompaniesShareHolderIDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesPhones",
                table: "CompaniesPhones",
                column: "CompaniesPhoneIDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesPersonInCharges",
                table: "CompaniesPersonInCharges",
                column: "CompaniesPersonInChargeIDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesOtherContracts",
                table: "CompaniesOtherContracts",
                column: "CompaniesOtherContractIDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesLicenses",
                table: "CompaniesLicenses",
                column: "CompaniesLicenseIDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesLeaseContracts",
                table: "CompaniesLeaseContracts",
                column: "CompaniesLeaseContractIDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesLeaseContractRegisters",
                table: "CompaniesLeaseContractRegisters",
                column: "CompaniesLeaseContracts_IDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesEmails",
                table: "CompaniesEmails",
                column: "CompaniesEmailIDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesContracts",
                table: "CompaniesContracts",
                column: "CompaniesContractIDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesChamberOfCommerces",
                table: "CompaniesChamberOfCommerces",
                column: "CompaniesChamberOfCommerceIDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesBoards",
                table: "CompaniesBoards",
                column: "CompaniesBoardIDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesBoardMembers",
                table: "CompaniesBoardMembers",
                column: "CompaniesBoardMemberIDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesBankAccount",
                table: "CompaniesBankAccount",
                column: "CompaniesBankAccountIDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesAuthorizedSignatories",
                table: "CompaniesAuthorizedSignatories",
                column: "CompaniesAuthorizedSignatoryIDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesAddresses",
                table: "CompaniesAddresses",
                column: "CompaniesAddressIDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesActivities",
                table: "CompaniesActivities",
                column: "CompaniesActivityIDN");

            migrationBuilder.CreateIndex(
                name: "IX_CompaniesPersonInCharges_Persons_IDN",
                table: "CompaniesPersonInCharges",
                column: "Persons_IDN");

            migrationBuilder.AddForeignKey(
                name: "FK_CompaniesPersonInCharges_Persons_Persons_IDN",
                table: "CompaniesPersonInCharges",
                column: "Persons_IDN",
                principalTable: "Persons",
                principalColumn: "PersonIDN",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CompaniesPersonInCharges_Persons_Persons_IDN",
                table: "CompaniesPersonInCharges");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesShareHoldersGroups",
                table: "CompaniesShareHoldersGroups");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesShareHolders",
                table: "CompaniesShareHolders");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesPhones",
                table: "CompaniesPhones");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesPersonInCharges",
                table: "CompaniesPersonInCharges");

            migrationBuilder.DropIndex(
                name: "IX_CompaniesPersonInCharges_Persons_IDN",
                table: "CompaniesPersonInCharges");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesOtherContracts",
                table: "CompaniesOtherContracts");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesLicenses",
                table: "CompaniesLicenses");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesLeaseContracts",
                table: "CompaniesLeaseContracts");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesLeaseContractRegisters",
                table: "CompaniesLeaseContractRegisters");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesEmails",
                table: "CompaniesEmails");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesContracts",
                table: "CompaniesContracts");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesChamberOfCommerces",
                table: "CompaniesChamberOfCommerces");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesBoards",
                table: "CompaniesBoards");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesBoardMembers",
                table: "CompaniesBoardMembers");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesBankAccount",
                table: "CompaniesBankAccount");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesAuthorizedSignatories",
                table: "CompaniesAuthorizedSignatories");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesAddresses",
                table: "CompaniesAddresses");

            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesActivities",
                table: "CompaniesActivities");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesShareHoldersGroups",
                table: "CompaniesShareHoldersGroups",
                columns: new[] { "CompaniesShareHoldersGroupIDC", "CompaniesShareHoldersGroupIDN" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesShareHolders",
                table: "CompaniesShareHolders",
                columns: new[] { "CompaniesShareHolderIDC", "CompaniesShareHolderIDN" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesPhones",
                table: "CompaniesPhones",
                columns: new[] { "CompaniesPhoneIDC", "CompaniesPhoneIDN" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesPersonInCharges",
                table: "CompaniesPersonInCharges",
                columns: new[] { "CompaniesPersonInChargeIDC", "CompaniesPersonInChargeIDN" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesOtherContracts",
                table: "CompaniesOtherContracts",
                columns: new[] { "CompaniesOtherContractIDC", "CompaniesOtherContractIDN" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesLicenses",
                table: "CompaniesLicenses",
                columns: new[] { "CompaniesLicenseIDC", "CompaniesLicenseIDN" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesLeaseContracts",
                table: "CompaniesLeaseContracts",
                columns: new[] { "CompaniesLeaseContractIDC", "CompaniesLeaseContractIDN" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesLeaseContractRegisters",
                table: "CompaniesLeaseContractRegisters",
                columns: new[] { "CompaniesLeaseContracts_IDN", "LeaseRegisters_IDC" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesEmails",
                table: "CompaniesEmails",
                columns: new[] { "CompaniesEmailIDC", "CompaniesEmailIDN" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesContracts",
                table: "CompaniesContracts",
                columns: new[] { "CompaniesContractIDC", "CompaniesContractIDN" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesChamberOfCommerces",
                table: "CompaniesChamberOfCommerces",
                columns: new[] { "CompaniesChamberOfCommerceIDC", "CompaniesChamberOfCommerceIDN" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesBoards",
                table: "CompaniesBoards",
                columns: new[] { "CompaniesBoardIDC", "CompaniesBoardIDN" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesBoardMembers",
                table: "CompaniesBoardMembers",
                columns: new[] { "CompaniesBoardMemberIDC", "CompaniesBoardMemberIDN" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesBankAccount",
                table: "CompaniesBankAccount",
                columns: new[] { "CompaniesBankAccountIDC", "CompaniesBankAccountIDN" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesAuthorizedSignatories",
                table: "CompaniesAuthorizedSignatories",
                columns: new[] { "CompaniesAuthorizedSignatoryIDC", "CompaniesAuthorizedSignatoryIDN" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesAddresses",
                table: "CompaniesAddresses",
                columns: new[] { "CompaniesAddressIDC", "CompaniesAddressIDN" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesActivities",
                table: "CompaniesActivities",
                columns: new[] { "CompaniesActivityIDC", "CompaniesActivityIDN" });
        }
    }
}
