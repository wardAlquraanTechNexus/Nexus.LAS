using Microsoft.Extensions.Options;
using Nexus.LAS.Application.Contracts.Email;
using Nexus.LAS.Application.Models.Email;
using SendGrid;
using SendGrid.Helpers.Mail;


namespace Nexus.LAS.Infrastructure
{
    public class EmailService : IEmailService
    {
        public EmailSettings _emailSettings { get; }
        public EmailService(IOptions<EmailSettings> emailSettings)
        {
            _emailSettings = emailSettings.Value;
        }

        public async Task<bool> SendEmail(EmailMessage email)
        {
            var client = new SendGridClient(_emailSettings.ApiKey);
            var to = new EmailAddress(email.To);
            var from = new EmailAddress
            {
                Email = _emailSettings.FromAddress,
                Name = _emailSettings.FromName
            };

            var message = MailHelper.CreateSingleEmail(from, to, email.Subject, plainTextContent: null, htmlContent: email.Body);
            var response = await client.SendEmailAsync(message);

            return response.IsSuccessStatusCode;
        }
    }
}
