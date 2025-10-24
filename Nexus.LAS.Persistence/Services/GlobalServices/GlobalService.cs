using ClosedXML;
using ClosedXML.Excel;
using Microsoft.AspNetCore.Http;
using Nexus.LAS.Application.Contracts.Presistence._Repositories;
using Nexus.LAS.Application.Contracts.Presistence.Services;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CommonDTOs;
using Nexus.LAS.Application.UseCases.GlobalUseCases.Queries.GlobalExpiredDocument;
using Nexus.LAS.Application.UseCases.GlobalUseCases.Queries.GlobalSearch;
using Nexus.LAS.Domain.CommonAttributes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.Services
{
    public class GlobalService : IGlobalService
    {
        private readonly IGlobalRepo _repo;

        public GlobalService(IGlobalRepo repo)
        {
            _repo = repo;
        }

        public async Task<List<GlobalSearchDTO>> GlobalSearch(GlobalSearchQuery query)
        {
            return await _repo.GlobalSearch(query);
        }

        public async Task<List<GlobalInfoDTO>> GlobalInfo()
        {
            return await _repo.GlobalInfo();
        }

        public async Task<PagingResult<GlobalDocumentExpiredDto>> GlobalDocumentExpired(GetGlobalExpiredDocumentQuery request)
        {
            return await _repo.GlobalDocumentExpired(request);
        }


        public async Task<byte[]> ExportToExcel()
        {
            var data = await _repo.GlobalAllDocumentExpired(new GetGlobalExpiredDocumentQuery());
            using (var workbook = new XLWorkbook())
            {
                var worksheet = workbook.Worksheets.Add("Expired Documents");
                var properties = typeof(GlobalDocumentExpiredDto).GetProperties(BindingFlags.Public | BindingFlags.Instance).Where(p => !p.HasAttribute<IgnoreOnExportAttribute>()).ToArray();
                var propertyNames = properties.Select(x => x.Name).ToArray();

                // Set header cells
                for (int col = 0; col < properties.Length; col++)
                {
                    worksheet.Cell(1, col + 1).Value = properties[col].Name;
                }
                var headerRange = worksheet.Range(1, 1, 1, properties.Length);
                headerRange.SetAutoFilter();

                // Style header
                headerRange.Style.Fill.BackgroundColor = XLColor.Teal;
                headerRange.Style.Font.Bold = true;
                headerRange.Style.Font.FontColor = XLColor.White;
                headerRange.Style.Alignment.Horizontal = XLAlignmentHorizontalValues.Center;
                headerRange.Style.Alignment.Vertical = XLAlignmentVerticalValues.Center;

                // Add autofilter to header row

                int row = 2;
                foreach (var item in data)
                {
                    for (int col = 0; col < properties.Length; col++)
                    {
                        var value = properties[col].GetValue(item);
                        worksheet.Cell(row, col + 1).Value = value is null ? string.Empty : value.ToString();
                    }
                    row++;
                }
                worksheet.Columns().AdjustToContents();

                using (var stream = new MemoryStream())
                {
                    workbook.SaveAs(stream);
                    stream.Seek(0, SeekOrigin.Begin);
                    return stream.ToArray();
                }
            }
        }

        public async Task<bool> DeactivateReminderAsync(string subIdc, int id)
        {
            return await _repo.DeactivateReminderAsync(subIdc, id);
        }
    }
}
