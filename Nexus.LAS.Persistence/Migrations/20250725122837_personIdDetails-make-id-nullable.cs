using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class personIdDetailsmakeidnullable : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_PersonsIDDetails",
                table: "PersonsIDDetails");

            migrationBuilder.AlterColumn<string>(
                name: "PersonsIDDetailIDC",
                table: "PersonsIDDetails",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AddPrimaryKey(
                name: "PK_PersonsIDDetails",
                table: "PersonsIDDetails",
                column: "PersonsIDDetailIDN");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_PersonsIDDetails",
                table: "PersonsIDDetails");

            migrationBuilder.AlterColumn<string>(
                name: "PersonsIDDetailIDC",
                table: "PersonsIDDetails",
                type: "nvarchar(450)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "PK_PersonsIDDetails",
                table: "PersonsIDDetails",
                columns: new[] { "PersonsIDDetailIDC", "PersonsIDDetailIDN" });
        }
    }
}
