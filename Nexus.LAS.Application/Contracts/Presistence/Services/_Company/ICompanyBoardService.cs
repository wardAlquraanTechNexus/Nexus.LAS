using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts.Presistence.Services
{
    public interface ICompanyBoardService : IGenericService<CompanyBoard>
    {
        Task<bool> ExistsActiveBoardAsync(int companyId, int? execludedId = null);
    }
}
