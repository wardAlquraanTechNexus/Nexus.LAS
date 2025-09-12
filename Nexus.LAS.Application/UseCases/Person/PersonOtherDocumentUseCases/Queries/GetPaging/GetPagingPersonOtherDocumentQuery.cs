using Nexus.LAS.Application.DTOs;
using Nexus.LAS.Application.UseCases._GenericUseCases.Queries;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonOtherDocumentUseCases.Queries.GetPaging
{
    public class GetPagingPersonOtherDocumentQuery : GetBasePagingQuery<PersonOtherDocumentDTO>
    {
        public int? PersonsIdn { get; set; }
        public int? DocumentType { get; set; }
    }
}
