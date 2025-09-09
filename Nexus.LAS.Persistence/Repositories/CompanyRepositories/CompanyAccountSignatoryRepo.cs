using Nexus.LAS.Application.Contracts.Presistence._Repositories._CompanyRepos;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.Repositories
{
    public class CompanyAccountSignatoryRepo : GenericRepo<CompanyAccountSignatory> , ICompanyAccountSignatoryRepo
    {
        public CompanyAccountSignatoryRepo(NexusLASDbContext context) : base(context)
        {
        }
    }
}
