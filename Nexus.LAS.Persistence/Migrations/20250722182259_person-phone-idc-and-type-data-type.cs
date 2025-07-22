using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class personphoneidcandtypedatatype : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_PersonsPhones",
                table: "PersonsPhones");

            migrationBuilder.AlterColumn<int>(
                name: "PhoneType",
                table: "PersonsPhones",
                type: "int",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "PersonsPhoneIDC",
                table: "PersonsPhones",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AddPrimaryKey(
                name: "PK_PersonsPhones",
                table: "PersonsPhones",
                column: "PersonsPhoneIDN");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_PersonsPhones",
                table: "PersonsPhones");

            migrationBuilder.AlterColumn<string>(
                name: "PhoneType",
                table: "PersonsPhones",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "PersonsPhoneIDC",
                table: "PersonsPhones",
                type: "nvarchar(450)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "PK_PersonsPhones",
                table: "PersonsPhones",
                columns: new[] { "PersonsPhoneIDC", "PersonsPhoneIDN" });
        }
    }
}
