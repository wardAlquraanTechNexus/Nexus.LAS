using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class changeonproperydt : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_PropertyLinks",
                table: "PropertyLinks");

            migrationBuilder.DropPrimaryKey(
                name: "PK_PropertyDocuments",
                table: "PropertyDocuments");

            migrationBuilder.DropPrimaryKey(
                name: "PK_PropertiesOwners",
                table: "PropertiesOwners");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Properties",
                table: "Properties");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Documents",
                table: "Documents");

            migrationBuilder.DropPrimaryKey(
                name: "PK_DocumentReletedRegister",
                table: "DocumentReletedRegister");

            migrationBuilder.DropColumn(
                name: "PropertiesLocationArea",
                table: "Properties");

            migrationBuilder.DropColumn(
                name: "PropertiesLocationCity",
                table: "Properties");

            migrationBuilder.DropColumn(
                name: "PropertiesLocationCountry",
                table: "Properties");

            migrationBuilder.DropColumn(
                name: "PropertyStatus",
                table: "Properties");

            migrationBuilder.AlterColumn<string>(
                name: "PropertyLinksIdc",
                table: "PropertyLinks",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AlterColumn<string>(
                name: "PropertyDocumentsIdc",
                table: "PropertyDocuments",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AlterColumn<string>(
                name: "PropertiesOwnerIDC",
                table: "PropertiesOwners",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AlterColumn<int>(
                name: "PropertiesType",
                table: "Properties",
                type: "int",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "PropertiesPurpose",
                table: "Properties",
                type: "int",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "PropertiesLocationCountryIdn",
                table: "Properties",
                type: "int",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "PropertiesLocationCityIdn",
                table: "Properties",
                type: "int",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "PropertiesLocationAreaIdn",
                table: "Properties",
                type: "int",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "PropertyIDC",
                table: "Properties",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AddPrimaryKey(
                name: "PK_PropertyLinks",
                table: "PropertyLinks",
                column: "PropertyLinksIdn");

            migrationBuilder.AddPrimaryKey(
                name: "PK_PropertyDocuments",
                table: "PropertyDocuments",
                column: "PropertyDocumentsIdn");

            migrationBuilder.AddPrimaryKey(
                name: "PK_PropertiesOwners",
                table: "PropertiesOwners",
                column: "PropertiesOwnerIDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Properties",
                table: "Properties",
                column: "PropertyIDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Documents",
                table: "Documents",
                column: "DocumentIDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_DocumentReletedRegister",
                table: "DocumentReletedRegister",
                column: "Document_IDN");

            migrationBuilder.CreateIndex(
                name: "IX_CompaniesPersonInCharges_Companies_IDN",
                table: "CompaniesPersonInCharges",
                column: "Companies_IDN");

            migrationBuilder.CreateIndex(
                name: "IX_CompaniesBoardMembers_Companies_IDN",
                table: "CompaniesBoardMembers",
                column: "Companies_IDN");

            migrationBuilder.CreateIndex(
                name: "IX_CompaniesBoardMembers_Person_IDN",
                table: "CompaniesBoardMembers",
                column: "Person_IDN");

            migrationBuilder.AddForeignKey(
                name: "FK_CompaniesBoardMembers_Companies_Companies_IDN",
                table: "CompaniesBoardMembers",
                column: "Companies_IDN",
                principalTable: "Companies",
                principalColumn: "CompanyIdn ",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_CompaniesBoardMembers_Persons_Person_IDN",
                table: "CompaniesBoardMembers",
                column: "Person_IDN",
                principalTable: "Persons",
                principalColumn: "PersonIDN",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_CompaniesPersonInCharges_Companies_Companies_IDN",
                table: "CompaniesPersonInCharges",
                column: "Companies_IDN",
                principalTable: "Companies",
                principalColumn: "CompanyIdn ",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CompaniesBoardMembers_Companies_Companies_IDN",
                table: "CompaniesBoardMembers");

            migrationBuilder.DropForeignKey(
                name: "FK_CompaniesBoardMembers_Persons_Person_IDN",
                table: "CompaniesBoardMembers");

            migrationBuilder.DropForeignKey(
                name: "FK_CompaniesPersonInCharges_Companies_Companies_IDN",
                table: "CompaniesPersonInCharges");

            migrationBuilder.DropPrimaryKey(
                name: "PK_PropertyLinks",
                table: "PropertyLinks");

            migrationBuilder.DropPrimaryKey(
                name: "PK_PropertyDocuments",
                table: "PropertyDocuments");

            migrationBuilder.DropPrimaryKey(
                name: "PK_PropertiesOwners",
                table: "PropertiesOwners");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Properties",
                table: "Properties");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Documents",
                table: "Documents");

            migrationBuilder.DropPrimaryKey(
                name: "PK_DocumentReletedRegister",
                table: "DocumentReletedRegister");

            migrationBuilder.DropIndex(
                name: "IX_CompaniesPersonInCharges_Companies_IDN",
                table: "CompaniesPersonInCharges");

            migrationBuilder.DropIndex(
                name: "IX_CompaniesBoardMembers_Companies_IDN",
                table: "CompaniesBoardMembers");

            migrationBuilder.DropIndex(
                name: "IX_CompaniesBoardMembers_Person_IDN",
                table: "CompaniesBoardMembers");

            migrationBuilder.AlterColumn<string>(
                name: "PropertyLinksIdc",
                table: "PropertyLinks",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "PropertyDocumentsIdc",
                table: "PropertyDocuments",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "PropertiesOwnerIDC",
                table: "PropertiesOwners",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "PropertyIDC",
                table: "Properties",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "PropertiesType",
                table: "Properties",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "PropertiesPurpose",
                table: "Properties",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "PropertiesLocationCountryIdn",
                table: "Properties",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "PropertiesLocationCityIdn",
                table: "Properties",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "PropertiesLocationAreaIdn",
                table: "Properties",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AddColumn<string>(
                name: "PropertiesLocationArea",
                table: "Properties",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "PropertiesLocationCity",
                table: "Properties",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "PropertiesLocationCountry",
                table: "Properties",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "PropertyStatus",
                table: "Properties",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddPrimaryKey(
                name: "PK_PropertyLinks",
                table: "PropertyLinks",
                columns: new[] { "PropertyLinksIdc", "PropertyLinksIdn" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_PropertyDocuments",
                table: "PropertyDocuments",
                columns: new[] { "PropertyDocumentsIdc", "PropertyDocumentsIdn" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_PropertiesOwners",
                table: "PropertiesOwners",
                columns: new[] { "PropertiesOwnerIDC", "PropertiesOwnerIDN" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_Properties",
                table: "Properties",
                columns: new[] { "PropertyIDC", "PropertyIDN" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_Documents",
                table: "Documents",
                columns: new[] { "DocumentIDC", "DocumentIDN" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_DocumentReletedRegister",
                table: "DocumentReletedRegister",
                columns: new[] { "Document_IDC", "Document_IDN", "Registers_IDC", "Registers_IDN", "Owner" });
        }
    }
}
