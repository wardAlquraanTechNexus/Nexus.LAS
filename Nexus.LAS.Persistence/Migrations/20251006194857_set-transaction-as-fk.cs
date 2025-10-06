using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class settransactionasfk : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_TransactionsRegisters",
                table: "TransactionsRegisters");

            migrationBuilder.DropPrimaryKey(
                name: "PK_TransactionsOTFs",
                table: "TransactionsOTFs");

            migrationBuilder.DropPrimaryKey(
                name: "PK_TransactionsInvoices",
                table: "TransactionsInvoices");

            migrationBuilder.DropPrimaryKey(
                name: "PK_TransactionsActions",
                table: "TransactionsActions");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Transactions",
                table: "Transactions");

            migrationBuilder.AlterColumn<string>(
                name: "TransactionsRegisterIDC",
                table: "TransactionsRegisters",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AlterColumn<string>(
                name: "TransactionsOTFIDC",
                table: "TransactionsOTFs",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AlterColumn<string>(
                name: "TransactionsInvoiceIDC",
                table: "TransactionsInvoices",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AlterColumn<string>(
                name: "TransactionsActionIDC",
                table: "TransactionsActions",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AlterColumn<string>(
                name: "TransactionIDC",
                table: "Transactions",
                type: "nvarchar(max)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(450)");

            migrationBuilder.AddPrimaryKey(
                name: "PK_TransactionsRegisters",
                table: "TransactionsRegisters",
                column: "TransactionsRegisterIDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_TransactionsOTFs",
                table: "TransactionsOTFs",
                column: "TransactionsOTFIDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_TransactionsInvoices",
                table: "TransactionsInvoices",
                column: "TransactionsInvoiceIDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_TransactionsActions",
                table: "TransactionsActions",
                column: "TransactionsActionIDN");

            migrationBuilder.AddPrimaryKey(
                name: "PK_Transactions",
                table: "Transactions",
                column: "TransactionIDN");

            migrationBuilder.CreateIndex(
                name: "IX_TransactionsRegisters_Transactions_IDN",
                table: "TransactionsRegisters",
                column: "Transactions_IDN");

            migrationBuilder.AddForeignKey(
                name: "FK_TransactionsRegisters_Transactions_Transactions_IDN",
                table: "TransactionsRegisters",
                column: "Transactions_IDN",
                principalTable: "Transactions",
                principalColumn: "TransactionIDN",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_TransactionsRegisters_Transactions_Transactions_IDN",
                table: "TransactionsRegisters");

            migrationBuilder.DropPrimaryKey(
                name: "PK_TransactionsRegisters",
                table: "TransactionsRegisters");

            migrationBuilder.DropIndex(
                name: "IX_TransactionsRegisters_Transactions_IDN",
                table: "TransactionsRegisters");

            migrationBuilder.DropPrimaryKey(
                name: "PK_TransactionsOTFs",
                table: "TransactionsOTFs");

            migrationBuilder.DropPrimaryKey(
                name: "PK_TransactionsInvoices",
                table: "TransactionsInvoices");

            migrationBuilder.DropPrimaryKey(
                name: "PK_TransactionsActions",
                table: "TransactionsActions");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Transactions",
                table: "Transactions");

            migrationBuilder.AlterColumn<string>(
                name: "TransactionsRegisterIDC",
                table: "TransactionsRegisters",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "TransactionsOTFIDC",
                table: "TransactionsOTFs",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "TransactionsInvoiceIDC",
                table: "TransactionsInvoices",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "TransactionsActionIDC",
                table: "TransactionsActions",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<string>(
                name: "TransactionIDC",
                table: "Transactions",
                type: "nvarchar(450)",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AddPrimaryKey(
                name: "PK_TransactionsRegisters",
                table: "TransactionsRegisters",
                columns: new[] { "TransactionsRegisterIDC", "TransactionsRegisterIDN" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_TransactionsOTFs",
                table: "TransactionsOTFs",
                columns: new[] { "TransactionsOTFIDC", "TransactionsOTFIDN" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_TransactionsInvoices",
                table: "TransactionsInvoices",
                columns: new[] { "TransactionsInvoiceIDC", "TransactionsInvoiceIDN" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_TransactionsActions",
                table: "TransactionsActions",
                columns: new[] { "TransactionsActionIDC", "TransactionsActionIDN" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_Transactions",
                table: "Transactions",
                columns: new[] { "TransactionIDC", "TransactionIDN" });
        }
    }
}
