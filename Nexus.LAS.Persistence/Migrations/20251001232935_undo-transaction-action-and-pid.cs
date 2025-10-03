using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class undotransactionactionandpid : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_tblFiles_PersonsIDDetails_Registers_IDN_Registers_IDC",
                table: "tblFiles");

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

            migrationBuilder.DropUniqueConstraint(
                name: "AK_PersonsIDDetails_PersonsIDDetailIDN_PersonsIDDetailIDC",
                table: "PersonsIDDetails");

            migrationBuilder.AlterColumn<string>(
                name: "Registers_IDC",
                table: "tblFiles",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AddColumn<int>(
                name: "PersonsIDDetailId",
                table: "tblFiles",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "TransactionActionId",
                table: "tblFiles",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "TransactionActionTransactionsActionIdc",
                table: "tblFiles",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "PersonsIDDetailIDC",
                table: "PersonsIDDetails",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AddPrimaryKey(
                name: "PK_TransactionsActions",
                table: "TransactionsActions",
                columns: new[] { "TransactionsActionIDC", "TransactionsActionIDN" });

            migrationBuilder.CreateIndex(
                name: "IX_tblFiles_PersonsIDDetailId",
                table: "tblFiles",
                column: "PersonsIDDetailId");

            migrationBuilder.CreateIndex(
                name: "IX_tblFiles_TransactionActionTransactionsActionIdc_TransactionActionId",
                table: "tblFiles",
                columns: new[] { "TransactionActionTransactionsActionIdc", "TransactionActionId" });

            migrationBuilder.AddForeignKey(
                name: "FK_tblFiles_PersonsIDDetails_PersonsIDDetailId",
                table: "tblFiles",
                column: "PersonsIDDetailId",
                principalTable: "PersonsIDDetails",
                principalColumn: "PersonsIDDetailIDN");

            migrationBuilder.AddForeignKey(
                name: "FK_tblFiles_TransactionsActions_TransactionActionTransactionsActionIdc_TransactionActionId",
                table: "tblFiles",
                columns: new[] { "TransactionActionTransactionsActionIdc", "TransactionActionId" },
                principalTable: "TransactionsActions",
                principalColumns: new[] { "TransactionsActionIDC", "TransactionsActionIDN" });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_tblFiles_PersonsIDDetails_PersonsIDDetailId",
                table: "tblFiles");

            migrationBuilder.DropForeignKey(
                name: "FK_tblFiles_TransactionsActions_TransactionActionTransactionsActionIdc_TransactionActionId",
                table: "tblFiles");

            migrationBuilder.DropPrimaryKey(
                name: "PK_TransactionsActions",
                table: "TransactionsActions");

            migrationBuilder.DropIndex(
                name: "IX_tblFiles_PersonsIDDetailId",
                table: "tblFiles");

            migrationBuilder.DropIndex(
                name: "IX_tblFiles_TransactionActionTransactionsActionIdc_TransactionActionId",
                table: "tblFiles");

            migrationBuilder.DropColumn(
                name: "PersonsIDDetailId",
                table: "tblFiles");

            migrationBuilder.DropColumn(
                name: "TransactionActionId",
                table: "tblFiles");

            migrationBuilder.DropColumn(
                name: "TransactionActionTransactionsActionIdc",
                table: "tblFiles");

            migrationBuilder.AlterColumn<string>(
                name: "Registers_IDC",
                table: "tblFiles",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "PersonsIDDetailIDC",
                table: "PersonsIDDetails",
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

            migrationBuilder.AddUniqueConstraint(
                name: "AK_PersonsIDDetails_PersonsIDDetailIDN_PersonsIDDetailIDC",
                table: "PersonsIDDetails",
                columns: new[] { "PersonsIDDetailIDN", "PersonsIDDetailIDC" });

            migrationBuilder.CreateIndex(
                name: "IX_tblFiles_Registers_IDN_Registers_IDC",
                table: "tblFiles",
                columns: new[] { "Registers_IDN", "Registers_IDC" });

            migrationBuilder.AddForeignKey(
                name: "FK_tblFiles_PersonsIDDetails_Registers_IDN_Registers_IDC",
                table: "tblFiles",
                columns: new[] { "Registers_IDN", "Registers_IDC" },
                principalTable: "PersonsIDDetails",
                principalColumns: new[] { "PersonsIDDetailIDN", "PersonsIDDetailIDC" });

            migrationBuilder.AddForeignKey(
                name: "FK_tblFiles_TransactionsActions_Registers_IDN_Registers_IDC",
                table: "tblFiles",
                columns: new[] { "Registers_IDN", "Registers_IDC" },
                principalTable: "TransactionsActions",
                principalColumns: new[] { "TransactionsActionIDN", "TransactionsActionIDC" });
        }
    }
}
