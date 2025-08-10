using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.RegisterNoteUseCases.Commands.UpdateRegisterNote
{
    public class UpdateRegisterNoteCommand:UpdateBaseCommand
    {
        public int Id { get; set; }
        public string RegistersIdc { get; set; }
        public int RegistersIdn { get; set; }
        public string RegistersNotesText { get; set; }
        public DateTime NoteDate { get; set; }
    }
}
