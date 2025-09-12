using ClosedXML;
using ClosedXML.Excel;
using Microsoft.AspNetCore.Http;
using Nexus.LAS.Application.Contracts.Identity;
using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.Base;
using Nexus.LAS.Domain.CommonAttributes;
using Nexus.LAS.Domain.Entities.Base;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using System.Reflection;

namespace Nexus.LAS.Persistence.Services.Base
{
    public class GenericService<T> : IGenericService<T> where T : BaseEntity
    {
        protected readonly NexusLASDbContext _context;
        protected readonly IUserIdentityService _userIdentityService;
        protected readonly IGenericRepo<T> _repo;
        public GenericService(NexusLASDbContext context, IUserIdentityService userIdentityService, IGenericRepo<T> repo)
        {
            _userIdentityService = userIdentityService;
            _context = context;
            _repo = repo;
        }

        public virtual async Task<IReadOnlyList<T>> GetAsync()
        {
            return await _repo.GetAsync();
        }

        public virtual async Task<T?> GetAsync(int id)
        {
            return await _repo.GetAsync(id);
        }
        public virtual async Task<IReadOnlyList<T>> GetAllAsync(IQueryCollection query)
        {
            return await _repo.GetAllAsync(query);
        }

        public virtual async Task<PagingResult<T>> GetAsync(IQueryCollection query)
        {
            return await _repo.GetAsync(query);
        }
        public virtual async Task<PagingResult<T>> SearchAsync<Params>(Params query) where Params : BaseParams
        {
            return await _repo.SearhAsync(query);
        }
        public virtual async Task<List<T>> SearhAllAsync<Params>(Params query) where Params : class
        {
            return await _repo.SearhAllAsync(query);
        }

        public virtual async Task<int> CreateAsync(T entity)
        {
            return await _repo.CreateAsync(entity);
        }

        public virtual async Task UpdateAsync(T entity)
        {
            await _repo.UpdateAsync(entity);
        }
        public virtual async Task DeleteAsync(int id)
        {
            await _repo.DeleteAsync(id);
        }
        public virtual async Task<List<T>> BulkUpsertAsync(List<T> entities)
        {
            foreach (var entity in entities)
            {
                if (entity.Id is 0)
                {
                    entity.CreatedBy = _userIdentityService.Username;
                    entity.CreatedAt = DateTime.Now;
                }
                else
                {
                    entity.ModifiedBy = _userIdentityService.Username;
                    entity.ModifiedAt = DateTime.Now;
                }

            }


            return await _repo.BulkUpsertAsync(entities);
        }

        public async Task<byte[]> ExportToExcel(IQueryCollection query)
        {
            var properties = typeof(T).GetProperties();
            return await ExportToExcel(query , properties);   
        }
        public async Task<byte[]> ExportToExcel(IQueryCollection query , PropertyInfo[] properties)
        {
            var data = await _repo.GetAllAsync(query);
            using (var workbook = new XLWorkbook())
            {
                var worksheet = workbook.Worksheets.Add(nameof(T));
                var propertyNames = properties.Where(p=>!p.HasAttribute<IgnoreOnExportAttribute>()).Select(x => x.Name).ToArray();
                var entityProps = typeof(T).GetProperties().Where(x => propertyNames.Contains(x.Name)).ToArray();

                // Set header cells
                for (int col = 0; col < entityProps.Length; col++)
                {
                    worksheet.Cell(1, col + 1).Value = properties[col].Name;
                }
                var headerRange = worksheet.Range(1, 1, 1, entityProps.Length);
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
                    for (int col = 0; col < entityProps.Length; col++)
                    {
                        var value = entityProps[col].GetValue(item);
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
    }
}
