using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class newstructure : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "LinkedCategory",
                table: "DynamicLists");

            migrationBuilder.DropColumn(
                name: "MenuCategory",
                table: "DynamicLists");

            migrationBuilder.RenameColumn(
                name: "MenuValue",
                table: "DynamicLists",
                newName: "DynamicListItemName");

            migrationBuilder.RenameColumn(
                name: "MainListID",
                table: "DynamicLists",
                newName: "ParentDynamicListIDN");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "ParentDynamicListIDN",
                table: "DynamicLists",
                newName: "MainListID");

            migrationBuilder.RenameColumn(
                name: "DynamicListItemName",
                table: "DynamicLists",
                newName: "MenuValue");

            migrationBuilder.AddColumn<string>(
                name: "LinkedCategory",
                table: "DynamicLists",
                type: "nvarchar(50)",
                maxLength: 50,
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "MenuCategory",
                table: "DynamicLists",
                type: "nvarchar(50)",
                maxLength: 50,
                nullable: true);
        }
    }
}
