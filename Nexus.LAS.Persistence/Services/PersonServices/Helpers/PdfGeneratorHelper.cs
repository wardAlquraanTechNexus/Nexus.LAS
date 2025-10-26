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
            column.Item().Background("#f8fafc").BorderBottom(2).BorderColor("#e2e8f0").Padding(12).AlignCenter().Text(tableName)
                                                                                .FontSize(18)
                                                                                .FontColor("#334155")
                                                                                .Bold();

            column.Item().Padding(2).Text(string.Empty);

            column.Item().Border(1).BorderColor("#e2e8f0").Table(table =>
            {
                table.Header(header =>
                {
                    // Columns with dynamic sizing
                    table.ColumnsDefinition(columns =>
                    {
                        foreach (var column in displayColumns)
                        {
                            // Give more space to date columns and description columns
                            if (column.Label.ToLower().Contains("date") || column.Label.ToLower().Contains("time"))
                            {
                                columns.ConstantColumn(80);
                            }
                            else if (column.Label.ToLower().Contains("description") || column.Label.ToLower().Contains("note") || column.Label.ToLower().Contains("address"))
                            {
                                columns.RelativeColumn(2);
                            }
                            else
                            {
                                columns.RelativeColumn();
                            }
                        }
                    });


                    foreach (var column in displayColumns)
                    {
                        header.Cell().Element(cell =>
                            cell.Background("#f1f5f9")
                                .Border(1)
                                .BorderColor("#e2e8f0")
                                .Padding(8)
                                .AlignCenter()
                                .Text(column.Label).SemiBold().FontSize(10));

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
                                        value = dateValue.ToString("dd/MM/yyyy");
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
                        {
                            var cellElement = cell.Border(1)
                                .BorderColor("#e2e8f0")
                                .Padding(8);

                            // Handle different content types
                            if (column.Label.ToLower().Contains("date") || column.Label.ToLower().Contains("time"))
                            {
                                cellElement.AlignCenter().Text(value).FontSize(9);
                            }
                            else if (column.Label.ToLower().Contains("description") || column.Label.ToLower().Contains("note") || column.Label.ToLower().Contains("address"))
                            {
                                cellElement.AlignLeft().Text(value).FontSize(9);
                            }
                            else
                            {
                                cellElement.AlignCenter().Text(value).FontSize(9);
                            }
                        });
                    }


                }
            }
                );
        }



    }
}

