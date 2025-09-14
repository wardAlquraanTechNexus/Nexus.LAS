using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using System;

namespace Nexus.LAS.Application.UseCases.PropertyUseCases.PropertyDocumentUseCases.Commands.UpdatePropertyDocument;

public class UpdatePropertyDocumentCommand : UpdateBaseCommand
{
    public int Id { get; set; }
    public int? PropertyId { get; set; }

    public string? DocumentType { get; set; }

    public string? DocumentPlaceOfIssue { get; set; }

    public DateTime? DocumentIssueDate { get; set; }

    public DateTime? DocumentExpiryDate { get; set; }

    public bool? DocumentExpiryActiveReminder { get; set; }

    public string? Description { get; set; }
}