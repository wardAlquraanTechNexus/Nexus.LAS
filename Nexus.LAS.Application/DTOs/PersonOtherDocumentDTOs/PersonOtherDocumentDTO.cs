namespace Nexus.LAS.Application.DTOs
{
    public class PersonOtherDocumentDTO : FileDto
    {
        public int Id { get; set; }
        public int PersonsIdn { get; set; }
        public int? DocumentType { get; set; }
        public string? DocumentDescription { get; set; }

    }
}
