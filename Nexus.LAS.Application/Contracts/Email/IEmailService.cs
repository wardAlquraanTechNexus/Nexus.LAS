using Nexus.LAS.Application.Models.Email;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Contracts.Email
{
    public interface IEmailService
    {
        Task<bool> SendEmail(EmailMessage email);
    }
}
