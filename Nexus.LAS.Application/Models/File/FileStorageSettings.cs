using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Models.File
{
    public class FileStorageSettings
    {
        public string ConnectionString { get; set; } = string.Empty;
        public string MaxFileSize { get; set; } = string.Empty;

        public string ProfilePicturesContainer { get; set; } = string.Empty;
        public string ProfilePicturesFolder { get; set; } = string.Empty;

        public string ItemPicturesContainer { get; set; } = string.Empty;
        public string ItemPicturesFolder { get; set; } = string.Empty;

        public string SupplierFilesContainer { get; set; } = string.Empty;
        public string SupplierFilesFolder { get; set; } = string.Empty;

        public string ProjectFilesContainer { get; set; } = string.Empty;
        public string ProjectFilesFolder { get; set; } = string.Empty;

        public string RFXRequestFilesContainer { get; set; } = string.Empty;
        public string RFXRequestFilesFolder { get; set; } = string.Empty;

        public string RFXResponseFilesContainer { get; set; } = string.Empty;
        public string RFXResponseFilesFolder { get; set; } = string.Empty;

        public string OtherFilesContainer { get; set; } = string.Empty;
        public string OtherFilesFolder { get; set; } = string.Empty;

        public string GRNFilesContainer { get; set; } = string.Empty;
        public string GRNFilesFolder { get; set; } = string.Empty;

        public string InvoiceFilesContainer { get; set; } = string.Empty;
        public string InvoiceFilesFolder { get; set; } = string.Empty;


    }

}
