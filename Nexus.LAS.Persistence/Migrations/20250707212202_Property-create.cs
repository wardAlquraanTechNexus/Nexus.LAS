using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class Propertycreate : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Properties",
                columns: table => new
                {
                    PropertyIDC = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    PropertyIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    PropertyCode = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    PropertiesTypeOfTitle = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertiesGrantor = table.Column<bool>(type: "bit", nullable: true),
                    PropertiesGrantorAddress = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertiesGrantorTitleCommencementDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    PropertiesGrantorTitleExpiryDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    PropertiesGrantorTitleExpiryActiveReminder = table.Column<bool>(type: "bit", nullable: true),
                    PropertiesGrantorDescription = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertiesLocationCountryIdn = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertiesLocationCountry = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertiesLocationCityIdn = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertiesLocationCity = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertiesLocationAreaIdn = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertiesLocationArea = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertiesLocationDetails = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertiesType = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertiesPurpose = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertiesStatus = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertyStatus = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Private = table.Column<bool>(type: "bit", nullable: false),
                    PropertiesPlot = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    FArea = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    MArea = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertyFArea = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PropertyMArea = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Properties", x => x.PropertyIDN);
                });

            migrationBuilder.CreateTable(
                name: "PropertiesOwners",
                columns: table => new
                {
                    PropertiesOwnerIDC = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    PropertiesOwnerIDN = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Properties_IDN = table.Column<int>(type: "int", nullable: false),
                    Registers_IDC = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Registers_IDN = table.Column<int>(type: "int", nullable: false),
                    Relation = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    OwnStartDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    OwnFinishDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    OwnActive = table.Column<bool>(type: "bit", nullable: true),
                    Remarks = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PropertiesOwners", x => x.PropertiesOwnerIDN);
                });

            migrationBuilder.CreateTable(
                name: "PropertiesStatus",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Property_IDN = table.Column<int>(type: "int", nullable: true),
                    Property_Code = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Status = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PropertiesStatus", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "PropertyDocuments",
                columns: table => new
                {
                    PropertyDocumentsIdc = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    PropertyDocumentsIdn = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Property_IDN = table.Column<int>(type: "int", nullable: true),
                    DocumentType = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DocumentPlaceOfIssue = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DocumentIssueDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    DocumentExpiryDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    DocumentExpiryActiveReminder = table.Column<bool>(type: "bit", nullable: true),
                    Description = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PropertyDocuments", x => x.PropertyDocumentsIdn);
                });

            migrationBuilder.CreateTable(
                name: "PropertyLinks",
                columns: table => new
                {
                    PropertyLinksIdc = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    PropertyLinksIdn = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Registers_IDC = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Registers_IDN = table.Column<int>(type: "int", nullable: false),
                    PropertyLinksValue = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    PropertyLinksRemarks = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CreatedBy_IDN = table.Column<int>(type: "int", nullable: false),
                    CreatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    CreatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UpdatedBy_IDN = table.Column<int>(type: "int", nullable: true),
                    UpdatedBy_Name = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedBy_Date = table.Column<DateTime>(type: "datetime2", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PropertyLinks", x => x.PropertyLinksIdn);
                });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Properties");

            migrationBuilder.DropTable(
                name: "PropertiesOwners");

            migrationBuilder.DropTable(
                name: "PropertiesStatus");

            migrationBuilder.DropTable(
                name: "PropertyDocuments");

            migrationBuilder.DropTable(
                name: "PropertyLinks");
        }
    }
}
