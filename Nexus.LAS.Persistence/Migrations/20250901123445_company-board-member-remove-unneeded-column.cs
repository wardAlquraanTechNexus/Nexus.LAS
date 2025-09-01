using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class companyboardmemberremoveunneededcolumn : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Companies_IDN",
                table: "CompaniesBoardMembers");

            migrationBuilder.AlterColumn<int>(
                name: "CompaniesBoards_IDN",
                table: "CompaniesBoardMembers",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<int>(
                name: "CompaniesBoards_IDN",
                table: "CompaniesBoardMembers",
                type: "int",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AddColumn<int>(
                name: "Companies_IDN",
                table: "CompaniesBoardMembers",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }
    }
}
