using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.CompanyDTOs;
using Nexus.LAS.Application.DTOs.CompanyLicenseDTOs;
using Nexus.LAS.Application.UseCases.CompanyLicenseUseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories;

public class CompanyLicenseRepo : GenericRepo<CompanyLicense>, ICompanyLicenseRepo
{
    private readonly NexusLASDbContext _context;

    public CompanyLicenseRepo(NexusLASDbContext context) : base(context)
    {
        _context = context;
    }

    public async Task<PagingResult<CompanyLicenseDto>> GetPaging(GetCompanyLicensePagingQuery param)
    {
        var queryable =
            from cl in _dbSet
            join rf in _context.RegisterFiles
                on new { RegistersIdc = cl.CompanyLicenseIdc, RegistersIdn = cl.Id }
                equals new { RegistersIdc = rf.RegistersIdc, RegistersIdn = rf.RegistersIdn } into gj
            from registerFile in gj.DefaultIfEmpty()
            where !param.CompanyId.HasValue || cl.CompanyIdn == param.CompanyId.Value
            select new CompanyLicenseDto
            {
                Id = cl.Id,
                CompanyIdn = cl.CompanyIdn,
                LicensePrimary = cl.LicensePrimary,
                LicenseStatus = cl.LicenseStatus,
                LicenseClassification = cl.LicenseClassification,
                LicenseNumber = cl.LicenseNumber,
                LicenseIssueDate = cl.LicenseIssueDate,
                LicenseExpiryDate = cl.LicenseExpiryDate,
                LicenseExpiryActiveReminder = cl.LicenseExpiryActiveReminder,
                FileName = registerFile != null ? registerFile.Name : null,
                ContentType = registerFile != null ? registerFile.ContentType : null,
                DataFile = registerFile != null ? registerFile.Data : null
            };

        var count = await queryable.CountAsync();
        queryable = queryable.Skip((param.Page) * param.PageSize).Take(param.PageSize);
        var data = await queryable.ToListAsync();
        return new PagingResult<CompanyLicenseDto>(data, param.Page, param.PageSize, count);
    }
}
