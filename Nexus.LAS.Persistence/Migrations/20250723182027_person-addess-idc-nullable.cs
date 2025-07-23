using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class personaddessidcnullable : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_PersonsAddresses",
                table: "PersonsAddresses");

            migrationBuilder.AlterColumn<string>(
                name: "PersonsAddressIDC",
                table: "PersonsAddresses",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AddPrimaryKey(
                name: "PK_PersonsAddresses",
                table: "PersonsAddresses",
                column: "PersonsAddressIDN");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_PersonsAddresses",
                table: "PersonsAddresses");

            migrationBuilder.AlterColumn<string>(
                name: "PersonsAddressIDC",
                table: "PersonsAddresses",
                type: "nvarchar(450)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "PK_PersonsAddresses",
                table: "PersonsAddresses",
                columns: new[] { "PersonsAddressIDC", "PersonsAddressIDN" });
        }
    }
}
