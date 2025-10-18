using Nexus.LAS.Application.DTOs.SearchDTOs;
using Nexus.LAS.Application.UseCases.SearchUseCases.GlobalSearch.Queries;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts.Presistence._Repositories
{
    public interface ISearchRepo
    {
        Task<List<GlobalSearchDTO>> GlobalSearch(GlobalSearchQuery query);
    }
}
