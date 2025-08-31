using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.Contracts.Presistence._Repositories._PersonRepos;
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
    }
}
