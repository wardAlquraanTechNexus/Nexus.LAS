using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class companycapitalremoveidckey : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesCapitals",
                table: "CompaniesCapitals");

            migrationBuilder.RenameColumn(
                name: "CompaniesCapitalIDC",
                table: "CompaniesCapitals",
                newName: "CompaniesCapitalIdc");

            migrationBuilder.AlterColumn<string>(
                name: "CompaniesCapitalIdc",
                table: "CompaniesCapitals",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(50)",
                oldMaxLength: 50);

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesCapitals",
                table: "CompaniesCapitals",
                column: "CompaniesCapitalIDN");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_CompaniesCapitals",
                table: "CompaniesCapitals");

            migrationBuilder.RenameColumn(
                name: "CompaniesCapitalIdc",
                table: "CompaniesCapitals",
                newName: "CompaniesCapitalIDC");

            migrationBuilder.AlterColumn<string>(
                name: "CompaniesCapitalIDC",
                table: "CompaniesCapitals",
                type: "nvarchar(50)",
                maxLength: 50,
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AddPrimaryKey(
                name: "PK_CompaniesCapitals",
                table: "CompaniesCapitals",
                columns: new[] { "CompaniesCapitalIDC", "CompaniesCapitalIDN" });
        }
    }
}
