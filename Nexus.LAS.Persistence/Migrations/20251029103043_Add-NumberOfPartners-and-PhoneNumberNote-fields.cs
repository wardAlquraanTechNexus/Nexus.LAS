using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class AddNumberOfPartnersandPhoneNumberNotefields : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "PhoneNumberNote",
                table: "PersonsPhones",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "PhoneNumberNote",
                table: "CompaniesPhones",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "CompaniesCapitalNumberOfPartners",
                table: "CompaniesCapitals",
                type: "int",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "PhoneNumberNote",
                table: "PersonsPhones");

            migrationBuilder.DropColumn(
                name: "PhoneNumberNote",
                table: "CompaniesPhones");

            migrationBuilder.DropColumn(
                name: "CompaniesCapitalNumberOfPartners",
                table: "CompaniesCapitals");
        }
    }
}
