using Nexus.LAS.Application.UseCases._GenericUseCases.Commands;

namespace Nexus.LAS.Application.RegisterNoteUseCases.Commands.CreateRegisterNote;

public class CreateRegisterNoteCommand:CreateBaseCommand
{
    public string RegistersIdc { get; set; }
    public int RegistersIdn { get; set; }
    public string RegistersNotesText { get; set; }
    public DateTime NoteDate { get; set; }

}
