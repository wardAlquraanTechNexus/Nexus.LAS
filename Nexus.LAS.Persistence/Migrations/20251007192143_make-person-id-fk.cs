using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class makepersonidfk : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateIndex(
                name: "IX_TransactionsActions_Persons_IDN",
                table: "TransactionsActions",
                column: "Persons_IDN");

            migrationBuilder.AddForeignKey(
                name: "FK_TransactionsActions_Persons_Persons_IDN",
                table: "TransactionsActions",
                column: "Persons_IDN",
                principalTable: "Persons",
                principalColumn: "PersonIDN",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_TransactionsActions_Persons_Persons_IDN",
                table: "TransactionsActions");

            migrationBuilder.DropIndex(
                name: "IX_TransactionsActions_Persons_IDN",
                table: "TransactionsActions");
        }
    }
}
