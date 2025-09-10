using DocumentFormat.OpenXml.Office2010.Excel;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using QuestPDF.Elements.Table;
using QuestPDF.Fluent;
using QuestPDF.Helpers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.Services
{
    public static class PdfGeneratorHelper
    {

        public static void CreateTable<T>(this ColumnDescriptor column, List<T> items, List<PdfDisplayColumn> displayColumns, string tableName)
        {
            column.Item().Background("#808080").Padding(10).AlignCenter().Text(tableName)
                                                                                .FontSize(15)
                                                                                .FontColor(Colors.White)
                                                                                .Bold();

            column.Item().Padding(2).Text(string.Empty);

            column.Item().Table(table =>
            {
                table.Header(header =>
                {
                    // Columns
                    table.ColumnsDefinition(columns =>
                    {
                        foreach (var column in displayColumns)
                        {
                            columns.RelativeColumn();
                        }
                    });


                    foreach (var column in displayColumns)
                    {
                        header.Cell().Element(cell =>
                            cell.Background("#D3D3D3")
                                .BorderRight(1)
                                .BorderColor(Colors.Black)
                                .Padding(5)
                                .AlignCenter()
                                .Text(column.Label).SemiBold());

                    }

                });
                foreach (var item in items)
                {
                    foreach (var column in displayColumns)
                    {
                        var property = typeof(T).GetProperty(column.Key);

                        var value = property.GetValue(item) ?? string.Empty;

                        if (!string.IsNullOrEmpty(value.ToString()))
                        {
                            if(column.DynamicLists != null && column.DynamicLists.Count > 0)
                            {
                                if(value is int intValue && column.DynamicLists.ContainsKey(intValue))
                                {
                                    value = column.DynamicLists[intValue];
                                }
                            }
                            if (property.PropertyType is Type type)
                            {
                                if(type == typeof(DateTime) || type == typeof(DateTime?))
                                {
                                    if (value is DateTime dateValue)
                                    {
                                        value = dateValue.ToString("yyyy/MM/dd");
                                    }

                                }
                                else if(type == typeof(bool) || type == typeof(bool?))
                                {
                                    if (value is bool v)
                                    {
                                        value = v ? "Yes" : "No";
                                    }

                                }
                            }

                        }

                        table.Cell().Element(cell =>
                            cell.BorderRight(1)
                                .BorderColor(Colors.Black)
                                .Padding(5)
                                .AlignCenter()
                                .Text(value)
                        );
                    }


                }
            }
                );
        }



    }
}

