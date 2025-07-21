using AutoMapper;
using EFCore.BulkExtensions;
using Microsoft.EntityFrameworkCore;
using Nexus.LAS.Application.DTOs.PersonEmailDTOs;
using Nexus.LAS.Application.UseCases.PersonEmailUseCases.Commands;
using Nexus.LAS.Domain.Entities.PersonEntities;
using Nexus.LAS.Persistence.DatabaseContext;
using Nexus.LAS.Persistence.Repositories.BaseRepo;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.Repositories
{
    public class PersonEmailRepo : GenericRepo<PersonsEmail>
    {
        public PersonEmailRepo(NexusLASDbContext context, IMapper mapper) : base(context)
        {
        }

    }
}
