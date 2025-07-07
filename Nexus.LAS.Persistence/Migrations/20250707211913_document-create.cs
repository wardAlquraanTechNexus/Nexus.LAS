using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class documentcreate : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "DocumentReletedRegister",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Document_IDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Document_IDN = table.Column<int>(type: "int", nullable: false),
                    Registers_IDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Registers_IDN = table.Column<int>(type: "int", nullable: false),
                    Owner = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DocumentReletedRegister", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Documents",
                columns: table => new
                {
                    DocumentIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    DocumentIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    SharepointFilename = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    DocumentPath = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    DocumentINDateReceived = table.Column<DateTime>(type: "datetime2", nullable: true),
                    DocumentINDescription = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    DocumentINReceivedFrom = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    DocumentINReason = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    DocumentOutDateCollected = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    DocumentOutCollectedBy = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    DocumentOutReason = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Documents", x => x.DocumentIDN);
                });

            migrationBuilder.CreateTable(
                name: "DocumentTrackings",
                columns: table => new
                {
                    DocumentTrackingIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    DocumentTrackingIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    DocumentTrackingCode = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    ReferenceNumber = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Persons_IDN = table.Column<int>(type: "int", nullable: false),
                    Registers_IDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Registers_IDN = table.Column<int>(type: "int", nullable: false),
                    Description = table.Column<string>(type: "nvarchar(4000)", maxLength: 4000, nullable: false),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DocumentTrackings", x => x.DocumentTrackingIDN);
                });

            migrationBuilder.CreateTable(
                name: "DocumentTrackingsActions",
                columns: table => new
                {
                    DocumentTrackingsActionIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    DocumentTrackingsActionIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    DocumentTrackings_IDN = table.Column<int>(type: "int", nullable: false),
                    ActionType = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    ActionDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ActionDescription = table.Column<string>(type: "nvarchar(4000)", maxLength: 4000, nullable: true),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DocumentTrackingsActions", x => x.DocumentTrackingsActionIDN);
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "DocumentReletedRegister");

            migrationBuilder.DropTable(
                name: "Documents");

            migrationBuilder.DropTable(
                name: "DocumentTrackings");

            migrationBuilder.DropTable(
                name: "DocumentTrackingsActions");
        }
    }
}
