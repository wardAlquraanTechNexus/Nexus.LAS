using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using System;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentUseCases.Commands.CreateDocument;

public class CreateDocumentCommand : CreateBaseCommand
{
    public string SharepointFilename { get; set; }

    public string DocumentPath { get; set; }

    public DateTime? DocumentInDateReceived { get; set; }

    public string DocumentInDescription { get; set; }

    public string DocumentInReceivedFrom { get; set; }

    public string DocumentInReason { get; set; }

    public string DocumentOutDateCollected { get; set; }

    public string DocumentOutCollectedBy { get; set; }

    public string DocumentOutReason { get; set; }
}