using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class changetransactionactionsetreltionship : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_TransactionsActions",
                table: "TransactionsActions");

            migrationBuilder.AlterColumn<string>(
                name: "Registers_IDC",
                table: "tblFiles",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AddUniqueConstraint(
                name: "AK_TransactionsActions_TransactionsActionIDN_TransactionsActionIDC",
                table: "TransactionsActions",
                columns: new[] { "TransactionsActionIDN", "TransactionsActionIDC" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_TransactionsActions",
                table: "TransactionsActions",
                column: "TransactionsActionIDN");

            migrationBuilder.CreateIndex(
                name: "IX_tblFiles_Registers_IDN_Registers_IDC",
                table: "tblFiles",
                columns: new[] { "Registers_IDN", "Registers_IDC" });

            migrationBuilder.AddForeignKey(
                name: "FK_tblFiles_TransactionsActions_Registers_IDN_Registers_IDC",
                table: "tblFiles",
                columns: new[] { "Registers_IDN", "Registers_IDC" },
                principalTable: "TransactionsActions",
                principalColumns: new[] { "TransactionsActionIDN", "TransactionsActionIDC" });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_tblFiles_TransactionsActions_Registers_IDN_Registers_IDC",
                table: "tblFiles");

            migrationBuilder.DropUniqueConstraint(
                name: "AK_TransactionsActions_TransactionsActionIDN_TransactionsActionIDC",
                table: "TransactionsActions");

            migrationBuilder.DropPrimaryKey(
                name: "PK_TransactionsActions",
                table: "TransactionsActions");

            migrationBuilder.DropIndex(
                name: "IX_tblFiles_Registers_IDN_Registers_IDC",
                table: "tblFiles");

            migrationBuilder.AlterColumn<string>(
                name: "Registers_IDC",
                table: "tblFiles",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AddPrimaryKey(
                name: "PK_TransactionsActions",
                table: "TransactionsActions",
                columns: new[] { "TransactionsActionIDC", "TransactionsActionIDN" });
        }
    }
}
