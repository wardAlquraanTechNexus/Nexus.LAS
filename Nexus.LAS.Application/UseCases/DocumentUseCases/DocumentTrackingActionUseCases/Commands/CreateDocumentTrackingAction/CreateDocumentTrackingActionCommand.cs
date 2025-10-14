using MediatR;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using System;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingActionUseCases.Commands.CreateDocumentTrackingAction
{
    public class CreateDocumentTrackingActionCommand : CreateBaseCommand
    {
        public int DocumentTrackingId { get; set; }
        public string ActionType { get; set; }
        public DateTime ActionDate { get; set; }
        public string? ActionDescription { get; set; }
    }
}