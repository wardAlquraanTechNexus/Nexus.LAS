using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._PersonRepos;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.UseCases.PersonOtherDocumentUseCases.Queries.GetPaging;
using Nexus.LAS.Application.UseCases.Queries.GetPaging;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;

namespace Nexus.LAS.Persistence.Repositories
{
    public class PersonOtherDocumentRepo : GenericRepo<PersonsOtherDocument>, IPersonOtherDocumentRepo
    {
        public PersonOtherDocumentRepo(NexusLASDbContext context) : base(context)
        {
        }

        public async Task<List<PersonsOtherDocument>> GetListByPersonId(int personId)
        {
            IQueryable<PersonsOtherDocument> queryable = _dbSet.Where(x => x.PersonsIdn == personId);
            return await queryable.ToListAsync();
        }

        public async Task<PagingResult<PersonOtherDocumentDTO>> GetPaging(GetPagingPersonOtherDocumentQuery param)
        {
            var queryable =
                from pid in _dbSet
                join rf in _context.RegisterFiles
                    on new { RegistersIdc = pid.PersonsOtherDocumentIdc, RegistersIdn = pid.Id }
                    equals new { RegistersIdc = rf.RegistersIdc, RegistersIdn = rf.RegistersIdn } into gj
                from registerFile in gj.DefaultIfEmpty()
                where 
                (!param.PersonsIdn.HasValue || pid.PersonsIdn == param.PersonsIdn.Value)
                && (!param.DocumentType.HasValue || pid.PersonsIdn == param.DocumentType.Value)

                select new PersonOtherDocumentDTO
                {
                    Id = pid.Id,
                    PersonsIdn = pid.PersonsIdn,
                    DocumentDescription = pid.DocumentDescription,
                    DocumentType = pid.DocumentType,
                    FileName = registerFile != null ? registerFile.Name : null,
                    ContentType = registerFile != null ? registerFile.ContentType : null,
                    Data = registerFile != null ? registerFile.Data : null
                };

            var count = await queryable.CountAsync();
            queryable = queryable.Skip((param.Page) * param.PageSize).Take(param.PageSize);
            var data = await queryable.ToListAsync();
            return new PagingResult<PersonOtherDocumentDTO>(data, param.Page, param.PageSize, count);
        }
    }
}
