using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.UseCases.PersonIdDetail.Commands.CreatePersonIdDetail;
using Nexus.LAS.Domain.Entities.PersonEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts
{
    public interface IPersonIdDetailService:IGenericService<PersonsIDDetail>
    {
        Task<int> CreatePersonIdDetail(CreatePersonIdDetailCommand command);
        Task<PersonIdDetailDto?> GetDTOAsync(int id);
    }
}
