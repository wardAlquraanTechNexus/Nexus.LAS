using MediatR;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.UseCases.PersonIdDetail
{
    public class CreatePersonIdDetailCommand:IRequest<int>
    {
        public string PersonsIDDetailIdc { get; set; } = "PID";
        public int Id { get; set; }
        public int PersonsIdn { get; set; }
        public bool? IsPrimary { get; set; }
        public string? Type { get; set; }
        public string? Nationality { get; set; }
        public string? PlaceOfIssue { get; set; }
        public string? IDNumber { get; set; }
        public DateTime? IDIssueDate { get; set; }
        public DateTime? ExpiryDate { get; set; }
        public bool? ActiveReminder { get; set; }
        public IFormFile File { get; set; }

    }
}
