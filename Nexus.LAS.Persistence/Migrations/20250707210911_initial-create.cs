using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class initialcreate : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            //migrationBuilder.CreateTable(
            //    name: "Countries",
            //    columns: table => new
            //    {
            //        CountryId = table.Column<int>(type: "int", nullable: false),
            //        CountryName = table.Column<string>(type: "nvarchar(500)", maxLength: 500, nullable: true),
            //        FIPS104 = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
            //        ISO2 = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
            //        ISO3 = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
            //        ISON = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
            //        Internet = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
            //        Capital = table.Column<string>(type: "nvarchar(500)", maxLength: 500, nullable: true),
            //        MapReference = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
            //        NationalitySingular = table.Column<string>(type: "nvarchar(500)", maxLength: 500, nullable: true),
            //        NationalityPlural = table.Column<string>(type: "nvarchar(500)", maxLength: 500, nullable: true),
            //        Currency = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
            //        CurrencyCode = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
            //        Population = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
            //        Title = table.Column<string>(type: "nvarchar(500)", maxLength: 500, nullable: true)
            //    },
            //    constraints: table =>
            //    {
            //        table.PrimaryKey("PK_Countries", x => x.CountryId);
            //    });

            //migrationBuilder.CreateTable(
            //    name: "Currencies",
            //    columns: table => new
            //    {
            //        ID = table.Column<int>(type: "int", nullable: false)
            //            .Annotation("SqlServer:Identity", "1, 1"),
            //        Entity = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
            //        Currency = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false),
            //        AlphabeticCode = table.Column<string>(type: "nvarchar(3)", maxLength: 3, nullable: false),
            //        NumericCode = table.Column<string>(type: "nvarchar(3)", maxLength: 3, nullable: true),
            //        MinorUnit = table.Column<string>(type: "nvarchar(1)", maxLength: 1, nullable: true),
            //        IsFundYesNo = table.Column<bool>(type: "bit", nullable: false)
            //    },
            //    constraints: table =>
            //    {
            //        table.PrimaryKey("PK_Currencies", x => x.ID);
            //    });

            //migrationBuilder.CreateTable(
            //    name: "DynamicLists",
            //    columns: table => new
            //    {
            //        DynamicListIDC = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
            //        DynamicListIDN = table.Column<int>(type: "int", nullable: false)
            //            .Annotation("SqlServer:Identity", "1, 1"),
            //        LinkedCategory = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
            //        MainListID = table.Column<int>(type: "int", nullable: true),
            //        MenuCategory = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
            //        MenuValue = table.Column<string>(type: "nvarchar(max)", nullable: true),
            //        Active = table.Column<bool>(type: "bit", nullable: true),
            //        Rank = table.Column<int>(type: "int", nullable: true),
            //        CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
            //        CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
            //        CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
            //        UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
            //        UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
            //        UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
            //    },
            //    constraints: table =>
            //    {
            //        table.PrimaryKey("PK_DynamicLists", x => new { x.DynamicListIDC, x.DynamicListIDN });
            //    });

            //migrationBuilder.CreateTable(
            //    name: "Groups",
            //    columns: table => new
            //    {
            //        id = table.Column<int>(type: "int", nullable: false)
            //            .Annotation("SqlServer:Identity", "1, 1"),
            //        GroupName = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
            //        Description = table.Column<string>(type: "nvarchar(200)", maxLength: 200, nullable: true),
            //        CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
            //        CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
            //        CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
            //        UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
            //        UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
            //        UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
            //    },
            //    constraints: table =>
            //    {
            //        table.PrimaryKey("PK_Groups", x => x.id);
            //    });

            //migrationBuilder.CreateTable(
            //    name: "Menus",
            //    columns: table => new
            //    {
            //        id = table.Column<int>(type: "int", nullable: false)
            //            .Annotation("SqlServer:Identity", "1, 1"),
            //        ParentID = table.Column<int>(type: "int", nullable: true),
            //        Name = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
            //        Path = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
            //        Rank = table.Column<int>(type: "int", nullable: true),
            //        Description = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true),
            //        CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
            //        CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
            //        CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
            //        UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
            //        UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
            //        UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
            //    },
            //    constraints: table =>
            //    {
            //        table.PrimaryKey("PK_Menus", x => x.id);
            //    });

            //migrationBuilder.CreateTable(
            //    name: "Numbers",
            //    columns: table => new
            //    {
            //        NumberValue = table.Column<int>(type: "int", nullable: false)
            //            .Annotation("SqlServer:Identity", "1, 1")
            //    },
            //    constraints: table =>
            //    {
            //        table.PrimaryKey("PK_Numbers", x => x.NumberValue);
            //    });

            //migrationBuilder.CreateTable(
            //    name: "GroupsMenus",
            //    columns: table => new
            //    {
            //        GroupID = table.Column<int>(type: "int", nullable: false),
            //        MenuID = table.Column<int>(type: "int", nullable: false),
            //        Access = table.Column<int>(type: "int", nullable: true),
            //        CanInsert = table.Column<int>(type: "int", nullable: true),
            //        CanUpdate = table.Column<int>(type: "int", nullable: true),
            //        CanDelete = table.Column<int>(type: "int", nullable: true),
            //        Admin = table.Column<int>(type: "int", nullable: true)
            //    },
            //    constraints: table =>
            //    {
            //        table.PrimaryKey("PK_GroupsMenus", x => new { x.GroupID, x.MenuID });
            //        table.ForeignKey(
            //            name: "FK_GroupsMenus_Groups_GroupID",
            //            column: x => x.GroupID,
            //            principalTable: "Groups",
            //            principalColumn: "id",
            //            onDelete: ReferentialAction.Cascade);
            //        table.ForeignKey(
            //            name: "FK_GroupsMenus_Menus_MenuID",
            //            column: x => x.MenuID,
            //            principalTable: "Menus",
            //            principalColumn: "id",
            //            onDelete: ReferentialAction.Cascade);
            //    });

            //migrationBuilder.CreateIndex(
            //    name: "IX_GroupsMenus_MenuID",
            //    table: "GroupsMenus",
            //    column: "MenuID");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            //migrationBuilder.DropTable(
            //    name: "Countries");

            //migrationBuilder.DropTable(
            //    name: "Currencies");

            //migrationBuilder.DropTable(
            //    name: "DynamicLists");

            //migrationBuilder.DropTable(
            //    name: "GroupsMenus");

            //migrationBuilder.DropTable(
            //    name: "Numbers");

            //migrationBuilder.DropTable(
            //    name: "Groups");

            //migrationBuilder.DropTable(
            //    name: "Menus");
        }
    }
}
