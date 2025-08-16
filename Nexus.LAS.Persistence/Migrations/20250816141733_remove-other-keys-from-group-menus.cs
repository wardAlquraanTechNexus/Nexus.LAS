using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class removeotherkeysfromgroupmenus : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_UserGroups",
                table: "UserGroups");

            migrationBuilder.DropPrimaryKey(
                name: "PK_GroupsMenus",
                table: "GroupsMenus");

            migrationBuilder.AddPrimaryKey(
                name: "PK_UserGroups",
                table: "UserGroups",
                column: "id");

            migrationBuilder.AddPrimaryKey(
                name: "PK_GroupsMenus",
                table: "GroupsMenus",
                column: "id");

            migrationBuilder.CreateIndex(
                name: "IX_GroupsMenus_GroupID",
                table: "GroupsMenus",
                column: "GroupID");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_UserGroups",
                table: "UserGroups");

            migrationBuilder.DropPrimaryKey(
                name: "PK_GroupsMenus",
                table: "GroupsMenus");

            migrationBuilder.DropIndex(
                name: "IX_GroupsMenus_GroupID",
                table: "GroupsMenus");

            migrationBuilder.AddPrimaryKey(
                name: "PK_UserGroups",
                table: "UserGroups",
                columns: new[] { "UserId", "GroupId" });

            migrationBuilder.AddPrimaryKey(
                name: "PK_GroupsMenus",
                table: "GroupsMenus",
                columns: new[] { "GroupID", "MenuID" });
        }
    }
}
