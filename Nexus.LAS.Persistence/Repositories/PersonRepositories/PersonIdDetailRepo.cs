using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._PersonRepos;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories
{
    public class PersonIdDetailRepo : GenericRepo<PersonsIDDetail>, IPersonIdDetailRepo
    {
        public PersonIdDetailRepo(NexusLASDbContext context) : base(context)
        {
        }

        public async Task<List<PersonsIDDetail>> GetListByPersonId(int personId)
        {
            IQueryable<PersonsIDDetail> queryable = _dbSet.Where(x=>x.PersonsIdn == personId);
            return await queryable.ToListAsync();
        }

        public async Task<PagingResult<PersonIdDetailDto>> GetPaging(GetPersonIdDetailPagingQuery param)
        {
            DateTime? periodDateBefore = null;
            DateTime? periodDateAfter = null;
            if (param.ExpityDatePeriod.HasValue)
            {
                if(param.ExpityDatePeriod >= 0)
                {
                    periodDateAfter = DateTime.Now.AddDays(param.ExpityDatePeriod.Value).Date ;
                    periodDateBefore = DateTime.Now.Date ;
                }
                else
                {
                    periodDateBefore = DateTime.Now.AddDays(param.ExpityDatePeriod.Value).Date;
                    periodDateAfter = DateTime.Now.Date;
                }
            }

            var queryable =
                from pid in _dbSet
                join rf in _context.RegisterFiles
                    on new { RegistersIdc = pid.PersonsIDDetailIdc, RegistersIdn = pid.Id }
                    equals new { RegistersIdc = rf.RegistersIdc, RegistersIdn = rf.RegistersIdn } into gj
                from registerFile in gj.DefaultIfEmpty()
                where 
                (!param.PersonsIdn.HasValue || pid.PersonsIdn == param.PersonsIdn.Value)
                && (!param.ExpityDatePeriod.HasValue || (pid.ExpiryDate.HasValue && (pid.ExpiryDate.Value >= periodDateBefore && pid.ExpiryDate.Value <= periodDateAfter)))
                && (!param.ActiveReminder.HasValue ||  (pid.ActiveReminder == param.ActiveReminder))
                select new PersonIdDetailDto
                {
                    Id = pid.Id,
                    PersonsIdn = pid.PersonsIdn.Value,
                    ExpiryDate = pid.ExpiryDate,
                    ActiveReminder = pid.ActiveReminder,
                    IDIssueDate = pid.IDIssueDate,
                    PlaceOfIssue = pid.PlaceOfIssue,
                    IDNumber = pid.IDNumber,
                    IsPrimary= pid.IsPrimary,
                    PersonsIDDetailIdc= pid.PersonsIDDetailIdc,
                    Nationality = pid.Nationality,
                    Type= pid.Type,
                    FileName = registerFile != null ? registerFile.Name : null,
                    ContentType = registerFile != null ? registerFile.ContentType : null,
                    Data = registerFile != null ? registerFile.Data : null,
                    FileId = registerFile != null ? registerFile.Id: null
                };

            var count = await queryable.CountAsync();
            queryable = queryable.Skip((param.Page) * param.PageSize).Take(param.PageSize);
            var data = await queryable.ToListAsync();
            return new PagingResult<PersonIdDetailDto>(data, param.Page, param.PageSize, count);
        }
    }
}
