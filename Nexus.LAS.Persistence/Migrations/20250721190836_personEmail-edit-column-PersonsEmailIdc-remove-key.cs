using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class personEmaileditcolumnPersonsEmailIdcremovekey : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_PersonsEmails",
                table: "PersonsEmails");

            migrationBuilder.AlterColumn<string>(
                name: "PersonsEmailIDC",
                table: "PersonsEmails",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AddPrimaryKey(
                name: "PK_PersonsEmails",
                table: "PersonsEmails",
                column: "PersonsEmailIDN");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_PersonsEmails",
                table: "PersonsEmails");

            migrationBuilder.AlterColumn<string>(
                name: "PersonsEmailIDC",
                table: "PersonsEmails",
                type: "nvarchar(450)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "PK_PersonsEmails",
                table: "PersonsEmails",
                columns: new[] { "PersonsEmailIDC", "PersonsEmailIDN" });
        }
    }
}
