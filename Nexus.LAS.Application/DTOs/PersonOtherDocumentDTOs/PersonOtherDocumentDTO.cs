namespace Nexus.LAS.Application.DTOs
{
    public class PersonOtherDocumentDTO
    {
        public int Id { get; set; }
        public int PersonsIdn { get; set; }
        public int? DocumentType { get; set; }
        public string? DocumentDescription { get; set; }
        public string? FileName { get; set; }
        public string? ContentType { get; set; }
        public byte[]? DataFile { get; set; }

    }
}
