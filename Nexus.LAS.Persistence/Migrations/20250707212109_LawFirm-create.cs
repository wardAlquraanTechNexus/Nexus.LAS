using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class LawFirmcreate : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "LawFirms",
                columns: table => new
                {
                    LawFirmIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    LawFirmIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    LawFirmCode = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    LawFirmEnglishName = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    LawFirmArabicName = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
                    LawFirmShortName = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    LawFirmStatus = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    LawFirmLASDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    LawFirmEstYear = table.Column<int>(type: "int", nullable: true),
                    LawFirmWebsite = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Private = table.Column<bool>(type: "bit", nullable: false),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_LawFirms", x => x.LawFirmIDN);
                });

            migrationBuilder.CreateTable(
                name: "LawFirmsAffiliates",
                columns: table => new
                {
                    LawFirmsAffiliateIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    LawFirmsAffiliateIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    LawFirms_IDN = table.Column<int>(type: "int", nullable: true),
                    AffiliateName = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_LawFirmsAffiliates", x => x.LawFirmsAffiliateIDN);
                });

            migrationBuilder.CreateTable(
                name: "LawFirmsBranches",
                columns: table => new
                {
                    LawFirmsBranchIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    LawFirmsBranchIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    LawFirms_IDN = table.Column<int>(type: "int", nullable: true),
                    BranchName = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Country = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    City = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Phone1 = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Phone2 = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Phone3 = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Fax = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Email1 = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    Email2 = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
                    BranchPrimary = table.Column<bool>(type: "bit", nullable: true),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_LawFirmsBranches", x => x.LawFirmsBranchIDN);
                });

            migrationBuilder.CreateTable(
                name: "LawFirmsExpertises",
                columns: table => new
                {
                    LawFirmsExpertiseIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    LawFirmsExpertiseIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    LawFirms_IDN = table.Column<int>(type: "int", nullable: false),
                    ExpertiseName = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_LawFirmsExpertises", x => x.LawFirmsExpertiseIDN);
                });

            migrationBuilder.CreateTable(
                name: "LawFirmsPersons",
                columns: table => new
                {
                    StaffID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    LawFirms_IDN = table.Column<int>(type: "int", nullable: false),
                    StaffLevel = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    Name = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    Practice = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    Email = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    Phone = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    StaffStatus = table.Column<bool>(type: "bit", nullable: true),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_LawFirmsPersons", x => x.StaffID);
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "LawFirms");

            migrationBuilder.DropTable(
                name: "LawFirmsAffiliates");

            migrationBuilder.DropTable(
                name: "LawFirmsBranches");

            migrationBuilder.DropTable(
                name: "LawFirmsExpertises");

            migrationBuilder.DropTable(
                name: "LawFirmsPersons");
        }
    }
}
