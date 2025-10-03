using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class changepersoniddetailsetreltionship : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "PersonsIDDetailIDC",
                table: "PersonsIDDetails",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AddUniqueConstraint(
                name: "AK_PersonsIDDetails_PersonsIDDetailIDN_PersonsIDDetailIDC",
                table: "PersonsIDDetails",
                columns: new[] { "PersonsIDDetailIDN", "PersonsIDDetailIDC" });

            migrationBuilder.AddForeignKey(
                name: "FK_tblFiles_PersonsIDDetails_Registers_IDN_Registers_IDC",
                table: "tblFiles",
                columns: new[] { "Registers_IDN", "Registers_IDC" },
                principalTable: "PersonsIDDetails",
                principalColumns: new[] { "PersonsIDDetailIDN", "PersonsIDDetailIDC" });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_tblFiles_PersonsIDDetails_Registers_IDN_Registers_IDC",
                table: "tblFiles");

            migrationBuilder.DropUniqueConstraint(
                name: "AK_PersonsIDDetails_PersonsIDDetailIDN_PersonsIDDetailIDC",
                table: "PersonsIDDetails");

            migrationBuilder.AlterColumn<string>(
                name: "PersonsIDDetailIDC",
                table: "PersonsIDDetails",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");
        }
    }
}
