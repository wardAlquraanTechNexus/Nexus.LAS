using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class FPCcreate : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "FPCs",
                columns: table => new
                {
                    FPCIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    FPCIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    FPCCode = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Registers_IDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Registers_IDN = table.Column<int>(type: "int", nullable: false),
                    FPCStatus = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
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
                    table.PrimaryKey("PK_FPCs", x => x.FPCIDN);
                });

            migrationBuilder.CreateTable(
                name: "FPCsODs",
                columns: table => new
                {
                    FPCsODIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    FPCsODIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    FPCs_IDN = table.Column<int>(type: "int", nullable: false),
                    DocType = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Description = table.Column<string>(type: "nvarchar(4000)", maxLength: 4000, nullable: true),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_FPCsODs", x => x.FPCsODIDN);
                });

            migrationBuilder.CreateTable(
                name: "FPCsODsActions",
                columns: table => new
                {
                    FPCsODsActionIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    FPCsODsActionIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    FPCsODs_IDN = table.Column<int>(type: "int", nullable: false),
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
                    table.PrimaryKey("PK_FPCsODsActions", x => x.FPCsODsActionIDN);
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "FPCs");

            migrationBuilder.DropTable(
                name: "FPCsODs");

            migrationBuilder.DropTable(
                name: "FPCsODsActions");
        }
    }
}
