using Nexus.LAS.Application.Contracts.Presistence._Repositories.Base;
using Nexus.LAS.Domain.Entities.CompanyEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts.Presistence
{
    public interface ICompanyBoardRepo:IGenericRepo<CompanyBoard>
    {
        Task<bool> ExistsActiveBoardAsync(int companyId, int? execludedId = 0);
    }
}
