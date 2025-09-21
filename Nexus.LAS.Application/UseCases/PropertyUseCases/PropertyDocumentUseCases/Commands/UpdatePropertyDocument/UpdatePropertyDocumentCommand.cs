using Microsoft.AspNetCore.Http;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using System;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyDocumentUseCases.Commands.UpdatePropertyDocument;

public class UpdatePropertyDocumentCommand : UpdateBaseCommand
{
    public int Id { get; set; }
    public int? PropertyId { get; set; }
    public int? Type { get; set; }
    public string? PlaceOfIssue { get; set; }
    public DateTime? IssueDate { get; set; }
    public DateTime? DocumentExpiryDate { get; set; }
    public bool? ActiveReminder { get; set; }
    public string? Description { get; set; }
    public IFormFile? File { get; set; }
    public bool RemoveFile { get; set; } = false;
}