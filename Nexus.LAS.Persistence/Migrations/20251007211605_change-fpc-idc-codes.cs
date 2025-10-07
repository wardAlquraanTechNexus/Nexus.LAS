using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class changefpcidccodes : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_FPCsODsActions",
                table: "FPCsODsActions");

            migrationBuilder.DropPrimaryKey(
                name: "PK_FPCsODs",
                table: "FPCsODs");

            migrationBuilder.DropPrimaryKey(
                name: "PK_FPCs",
                table: "FPCs");

            migrationBuilder.AddPrimaryKey(
                name: "PK_FPCsODsActions",
                table: "FPCsODsActions",
                column: "FPCsODsActionIDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_FPCsODs",
                table: "FPCsODs",
                column: "FPCsODIDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_FPCs",
                table: "FPCs",
                column: "FPCIDN");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_FPCsODsActions",
                table: "FPCsODsActions");

            migrationBuilder.DropPrimaryKey(
                name: "PK_FPCsODs",
                table: "FPCsODs");

            migrationBuilder.DropPrimaryKey(
                name: "PK_FPCs",
                table: "FPCs");

            migrationBuilder.AddPrimaryKey(
                name: "PK_FPCsODsActions",
                table: "FPCsODsActions",
                columns: new[] { "FPCsODsActionIDC", "FPCsODsActionIDN" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_FPCsODs",
                table: "FPCsODs",
                columns: new[] { "FPCsODIDC", "FPCsODIDN" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_FPCs",
                table: "FPCs",
                columns: new[] { "FPCIDC", "FPCIDN" });
        }
    }
}
