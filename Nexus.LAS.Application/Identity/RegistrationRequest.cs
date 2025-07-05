using System.ComponentModel.DataAnnotations;

namespace Nexus.LAS.Application.Identity
{
    public class RegistrationRequest
    {
        [Required]
        public string FirstName { get; set; } = default!;
        public string? LastName { get; set; }
        public string? PhoneNumber { get; set; }

        [Required]
        [EmailAddress]
        public string Email { get; set; } = default!;

        public string? UserName { get; set; }

        [Required]
        [MinLength(6)]
        [MaxLength(25)]
        public string Password { get; set; } = default!;
    }
}
