using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class usersetpersonasfk : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateIndex(
                name: "IX_Users_Persons_IDN",
                table: "Users",
                column: "Persons_IDN");

            migrationBuilder.CreateIndex(
                name: "IX_DocumentTrackings_Persons_IDN",
                table: "DocumentTrackings",
                column: "Persons_IDN");

            migrationBuilder.AddForeignKey(
                name: "FK_DocumentTrackings_Persons_Persons_IDN",
                table: "DocumentTrackings",
                column: "Persons_IDN",
                principalTable: "Persons",
                principalColumn: "PersonIDN",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Users_Persons_Persons_IDN",
                table: "Users",
                column: "Persons_IDN",
                principalTable: "Persons",
                principalColumn: "PersonIDN");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_DocumentTrackings_Persons_Persons_IDN",
                table: "DocumentTrackings");

            migrationBuilder.DropForeignKey(
                name: "FK_Users_Persons_Persons_IDN",
                table: "Users");

            migrationBuilder.DropIndex(
                name: "IX_Users_Persons_IDN",
                table: "Users");

            migrationBuilder.DropIndex(
                name: "IX_DocumentTrackings_Persons_IDN",
                table: "DocumentTrackings");
        }
    }
}
