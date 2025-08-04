# Exception Handling in Nexus.LAS

This document describes the improved exception handling implementation in the Nexus.LAS project.

## Overview

The project implements a comprehensive exception handling strategy using:
- **Global Exception Middleware** - Catches and handles all unhandled exceptions
- **Custom Exception Types** - Structured exception hierarchy for different error scenarios
- **FluentValidation Integration** - Automatic validation with proper error formatting
- **Correlation ID Tracking** - Request tracing for debugging and monitoring
- **Environment-Specific Error Details** - Different error levels for development vs production

## Architecture

### Exception Middleware Pipeline

1. **ExceptionMiddleware** - First in pipeline, catches all exceptions
2. **Request Time Logging** - Logs request duration
3. **Authentication/Authorization** - Standard ASP.NET Core middleware
4. **Controllers** - Business logic execution

### Custom Exception Types

#### ValidationException
```csharp
// Automatic validation through FluentValidation
throw new ValidationException(validationFailures);

// Manual validation
throw new ValidationException("PropertyName", "Error message");
```

#### BadRequestException
```csharp
throw new BadRequestException("Invalid request parameters");
throw new BadRequestException("Validation failed", validationResult);
```

#### NotFoundException
```csharp
// Standard usage
throw new NotFoundException("Person", personId);

// Generic factory methods
throw NotFoundException.ForEntity<Person>(personId);
throw NotFoundException.ForEntity<Person>("Email", email);
```

#### NotAuthorizedException
```csharp
throw new NotAuthorizedException();
throw new NotAuthorizedException("Custom message");
throw new NotAuthorizedException("Users", "View");
```

#### ForbidException
```csharp
throw new ForbidException();
throw new ForbidException("Access denied to this resource");
throw new ForbidException("User Management", "Delete");
```

#### ServiceException
```csharp
throw new ServiceException("PersonService", "CreatePerson", "Database connection failed");
throw new ServiceException("EmailService", "SendEmail", "SMTP server unavailable", innerException);
```

## Usage Examples

### In Controllers
```csharp
[HttpGet("{id}")]
public async Task<IActionResult> GetPerson(int id)
{
    var person = await _personService.GetAsync(id);
    if (person == null)
        throw NotFoundException.ForEntity<Person>(id);
    
    return Ok(person);
}
```

### In Services
```csharp
public async Task<Person> CreatePersonAsync(CreatePersonCommand command)
{
    try
    {
        // Business logic
        return await _repository.CreateAsync(person);
    }
    catch (SqlException ex)
    {
        throw new ServiceException("PersonService", "CreatePerson", 
            "Failed to create person in database", ex);
    }
}
```

### With FluentValidation
```csharp
public class CreatePersonCommandValidator : AbstractValidator<CreatePersonCommand>
{
    public CreatePersonCommandValidator()
    {
        RuleFor(x => x.PersonEnglishName)
            .NotEmpty()
            .WithMessage("Person English Name is required")
            .MaximumLength(200)
            .WithMessage("Person English Name must not exceed 200 characters");
    }
}
```

## Response Format

All exceptions are returned in a standardized format:

```json
{
  "title": "Validation Error",
  "status": 400,
  "type": "ValidationException",
  "detail": "One or more validation errors occurred.",
  "errors": {
    "PersonEnglishName": ["Person English Name is required"],
    "PersonArabicName": ["Person Arabic Name already exists"]
  },
  "correlationId": "12345678-1234-1234-1234-123456789012",
  "timestamp": "2024-01-15T10:30:00Z"
}
```

## HTTP Status Code Mapping

| Exception Type | HTTP Status | Description |
|---|---|---|
| ValidationException | 400 Bad Request | Input validation failures |
| BadRequestException | 400 Bad Request | General bad request errors |
| NotFoundException | 404 Not Found | Resource not found |
| NotAuthorizedException | 401 Unauthorized | Authentication required |
| ForbidException | 403 Forbidden | Access denied |
| ServiceException | 500 Internal Server Error | Service layer errors |
| TimeoutException | 408 Request Timeout | Operation timeout |
| SecurityException | 403 Forbidden | Security violations |

## Configuration

### Program.cs Setup
```csharp
var app = builder.Build();

// Exception handling must be first
app.UseGlobalExceptionHandling();

// Other middleware...
app.UseAuthentication();
app.UseAuthorization();
app.MapControllers();
```

### Extension Methods
```csharp
// Use these extension methods for cleaner configuration
app.UseGlobalExceptionHandling();
app.UseRequestTimeLogging();
app.UseCustomAuthenticationCheck(); // Optional
```

## Environment Considerations

### Development Environment
- Full exception details including stack traces
- Inner exception messages
- Service names and operation details
- Formatted JSON responses

### Production Environment
- Generic error messages for security
- No stack traces exposed
- Minimal technical details
- Correlation IDs for support tracking

## Logging

All exceptions are logged with appropriate levels:
- **Information**: Request cancellations
- **Warning**: Validation errors, not found, authentication issues
- **Error**: Service exceptions, security violations, unhandled exceptions

Log format includes:
- Correlation ID for request tracking
- Exception details
- Service and operation context (where applicable)

## Best Practices

1. **Use Specific Exception Types**: Choose the most appropriate exception type
2. **Provide Meaningful Messages**: Include context and actionable information
3. **Use Correlation IDs**: For tracking issues across distributed systems
4. **Log Appropriately**: Use correct log levels for different exception types
5. **Security First**: Don't expose sensitive information in error messages
6. **Validate Early**: Use FluentValidation for input validation
7. **Handle Service Failures**: Wrap external service calls with proper exception handling

## Monitoring and Alerting

The correlation ID system enables:
- Request tracing across services
- Error rate monitoring
- Performance impact analysis
- Customer support ticket correlation

## Testing Exception Handling

```csharp
[Test]
public async Task CreatePerson_WithInvalidData_ThrowsValidationException()
{
    var command = new CreatePersonCommand { /* invalid data */ };
    
    var exception = await Assert.ThrowsAsync<ValidationException>(
        () => _handler.Handle(command, CancellationToken.None));
    
    Assert.Contains("PersonEnglishName", exception.Errors.Keys);
}
```