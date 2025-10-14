using MediatR;
using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;
using System;

namespace Nexus.LAS.Application.UseCases.DocumentUseCases.DocumentTrackingActionUseCases.Commands.UpdateDocumentTrackingAction
{
    public class UpdateDocumentTrackingActionCommand : UpdateBaseCommand
    {
        public int Id { get; set; }
        public int DocumentTrackingId { get; set; }
        public string ActionType { get; set; }
        public DateTime ActionDate { get; set; }
        public string? ActionDescription { get; set; }
    }
}