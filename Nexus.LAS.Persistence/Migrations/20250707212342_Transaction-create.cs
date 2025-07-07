using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class Transactioncreate : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Transactions",
                columns: table => new
                {
                    TransactionIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    TransactionIDC = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    TransactionDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    TransactionCode = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    TransactionSubjectType = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    TransactionSubjectDescription = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    TransactionStatus = table.Column<string>(type: "nvarchar(max)", nullable: true),
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
                    table.PrimaryKey("PK_Transactions", x => x.TransactionIDN);
                });

            migrationBuilder.CreateTable(
                name: "TransactionsActions",
                columns: table => new
                {
                    TransactionsActionIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    TransactionsActionIDC = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Transactions_IDN = table.Column<int>(type: "int", nullable: false),
                    Persons_IDN = table.Column<int>(type: "int", nullable: false),
                    Time = table.Column<int>(type: "int", nullable: true),
                    Description = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    DueDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    ClosedDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    ActionStatus = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TransactionsActions", x => x.TransactionsActionIDN);
                });

            migrationBuilder.CreateTable(
                name: "TransactionsInvoices",
                columns: table => new
                {
                    TransactionsInvoiceIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    TransactionsInvoiceIDC = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Transactions_IDN = table.Column<int>(type: "int", nullable: false),
                    LawFirms_IDN = table.Column<int>(type: "int", nullable: false),
                    Invoice = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    InvoiceDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    Amount = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Paid = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Currency = table.Column<int>(type: "int", nullable: true),
                    Note = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TransactionsInvoices", x => x.TransactionsInvoiceIDN);
                });

            migrationBuilder.CreateTable(
                name: "TransactionsOTFs",
                columns: table => new
                {
                    TransactionsOTFIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    TransactionsOTFIDC = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Transactions_IDN = table.Column<int>(type: "int", nullable: false),
                    OTFRegisters_IDC = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    OTFRegisters_IDN = table.Column<int>(type: "int", nullable: false),
                    id = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TransactionsOTFs", x => x.TransactionsOTFIDN);
                });

            migrationBuilder.CreateTable(
                name: "TransactionsRegisters",
                columns: table => new
                {
                    TransactionsRegisterIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    TransactionsRegisterIDC = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Transactions_IDN = table.Column<int>(type: "int", nullable: false),
                    Registers_IDC = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Registers_IDN = table.Column<int>(type: "int", nullable: false),
                    PrimaryRegister = table.Column<bool>(type: "bit", nullable: true),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TransactionsRegisters", x => x.TransactionsRegisterIDN);
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Transactions");

            migrationBuilder.DropTable(
                name: "TransactionsActions");

            migrationBuilder.DropTable(
                name: "TransactionsInvoices");

            migrationBuilder.DropTable(
                name: "TransactionsOTFs");

            migrationBuilder.DropTable(
                name: "TransactionsRegisters");
        }
    }
}
