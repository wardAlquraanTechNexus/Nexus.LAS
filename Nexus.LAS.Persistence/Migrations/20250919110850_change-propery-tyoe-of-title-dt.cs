﻿using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Nexus.LAS.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class changeproperytyoeoftitledt : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<int>(
                name: "PropertiesTypeOfTitle",
                table: "Properties",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "PropertiesTypeOfTitle",
                table: "Properties",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");
        }
    }
}
