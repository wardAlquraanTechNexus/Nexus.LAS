using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class personOtherDocumentsmakeidnullable : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_PersonsOtherDocuments",
                table: "PersonsOtherDocuments");

            migrationBuilder.AlterColumn<string>(
                name: "PersonsOtherDocumentIDC",
                table: "PersonsOtherDocuments",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AddPrimaryKey(
                name: "PK_PersonsOtherDocuments",
                table: "PersonsOtherDocuments",
                column: "PersonsOtherDocumentIDN");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_PersonsOtherDocuments",
                table: "PersonsOtherDocuments");

            migrationBuilder.AlterColumn<string>(
                name: "PersonsOtherDocumentIDC",
                table: "PersonsOtherDocuments",
                type: "nvarchar(450)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "PK_PersonsOtherDocuments",
                table: "PersonsOtherDocuments",
                columns: new[] { "PersonsOtherDocumentIDC", "PersonsOtherDocumentIDN" });
        }
    }
}
