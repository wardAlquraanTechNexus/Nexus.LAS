using MediatR;
using Nexus.LAS.Application.DTOs.Base;
using Nexus.LAS.Application.DTOs.PersonDTOs;
using Nexus.LAS.Application.UseCases.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonUseCases.Queries
{
    public class GetPersonsQuery: BaseParams , IRequest<PagingResult<GetPersonsDto>>
    {
        public string? SearchBy { get; set; }
        public string? Nationality { get; set; }
        public string? Private 
        {
            get => _private;
            set
            {
                _private = value;
                if (!string.IsNullOrEmpty(_private))
                {
                    Privates = _private.Split(',').Select(x=>Convert.ToBoolean(x)).ToList();
                }
                else
                {
                    Privates = new();
                }
            }
        }
        private string? _private;
        public List<bool> Privates { get; set; } = new();
        public string? Status {
            get => _status; 
            set
            {
                _status = value;
                if (!string.IsNullOrEmpty(_status))
                {
                    Statuses = _status.Split(',').Select(x=>Convert.ToInt32(x)).ToList();
                }
                else
                {
                    Statuses = new();
                }
            }
            
        }
        private string? _status;

        public List<int> Statuses { get; set; } = new();
        public string? OrderBy { get; set; }
        public string? OrderDir { get; set; }
    }
}
