using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class test : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateIndex(
                name: "IX_CompaniesShareHolders_Companies_IDN",
                table: "CompaniesShareHolders",
                column: "Companies_IDN");

            migrationBuilder.AddForeignKey(
                name: "FK_CompaniesShareHolders_Companies_Companies_IDN",
                table: "CompaniesShareHolders",
                column: "Companies_IDN",
                principalTable: "Companies",
                principalColumn: "CompanyIdn ",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CompaniesShareHolders_Companies_Companies_IDN",
                table: "CompaniesShareHolders");

            migrationBuilder.DropIndex(
                name: "IX_CompaniesShareHolders_Companies_IDN",
                table: "CompaniesShareHolders");
        }
    }
}
