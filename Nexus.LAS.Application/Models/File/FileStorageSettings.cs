using System.ComponentModel.DataAnnotations;

namespace Nexus.LAS.Application.Models.File
{
    public class FileStorageSettings
    {
        [Required]
        public string ConnectionString { get; set; } = string.Empty;
        
        [Required]
        public string MaxFileSize { get; set; } = string.Empty;

        [Required]
        public string ProfilePicturesContainer { get; set; } = string.Empty;
        [Required]
        public string ProfilePicturesFolder { get; set; } = string.Empty;

        [Required]
        public string ItemPicturesContainer { get; set; } = string.Empty;
        [Required]
        public string ItemPicturesFolder { get; set; } = string.Empty;

        [Required]
        public string SupplierFilesContainer { get; set; } = string.Empty;
        [Required]
        public string SupplierFilesFolder { get; set; } = string.Empty;

        [Required]
        public string ProjectFilesContainer { get; set; } = string.Empty;
        [Required]
        public string ProjectFilesFolder { get; set; } = string.Empty;

        [Required]
        public string RFXRequestFilesContainer { get; set; } = string.Empty;
        [Required]
        public string RFXRequestFilesFolder { get; set; } = string.Empty;

        [Required]
        public string RFXResponseFilesContainer { get; set; } = string.Empty;
        [Required]
        public string RFXResponseFilesFolder { get; set; } = string.Empty;

        [Required]
        public string OtherFilesContainer { get; set; } = string.Empty;
        [Required]
        public string OtherFilesFolder { get; set; } = string.Empty;

        [Required]
        public string GRNFilesContainer { get; set; } = string.Empty;
        [Required]
        public string GRNFilesFolder { get; set; } = string.Empty;

        [Required]
        public string InvoiceFilesContainer { get; set; } = string.Empty;
        [Required]
        public string InvoiceFilesFolder { get; set; } = string.Empty;
    }
}
