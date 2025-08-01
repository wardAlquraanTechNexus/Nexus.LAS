namespace Nexus.LAS.Application.UseCases;

public record CurrentUser(string Id,
string Email,
IEnumerable<string> Roles,
string? PhoneNumber,
string FirstName,
string? LastName //,
//string? Nationality,
//DateOnly? DateOfBirth
)
{
    public bool IsInRole(string role) => Roles.Contains(role);
}