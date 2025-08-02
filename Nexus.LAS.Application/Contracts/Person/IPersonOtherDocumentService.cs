using Microsoft.AspNetCore.Mvc;
using Nexus.LAS.Application.Contracts.Presistence.Services.Base;
using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.UseCases.PersonOtherDocumentUseCases.Commands.CreatePersonOtherDocument;
using Nexus.LAS.Application.UseCases.PersonOtherDocumentUseCases.Commands.EditPersonOtherDocument;
using Nexus.LAS.Domain.Entities.PersonEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts
{
    public interface IPersonOtherDocumentService: IGenericService<PersonsOtherDocument>
    {
        Task<int> CreatePersonOtherDocument(CreatePersonOtherDocumentCommand command);
        Task<PersonOtherDocumentDTO?> GetDTOAsync(int id);
        Task<int> EditPersonOtherDocument(EditPersonOtherDocumentCommand command);

    }
}
