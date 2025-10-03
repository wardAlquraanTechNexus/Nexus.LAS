using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class removecollectionfromtaandpid : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_tblFiles_PersonsIDDetails_PersonsIDDetailId",
                table: "tblFiles");

            migrationBuilder.DropForeignKey(
                name: "FK_tblFiles_TransactionsActions_TransactionActionTransactionsActionIdc_TransactionActionId",
                table: "tblFiles");

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
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
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
    }
}
