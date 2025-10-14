using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using System;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingUseCases.Commands.CreateDocumentTracking;

public class CreateDocumentTrackingCommand : CreateBaseCommand
{
    public string ReferenceNumber { get; set; }
    public int PersonId { get; set; }
    public string RegisterIdc { get; set; }
    public int RegisterIdn { get; set; }
    public string Description { get; set; }
}