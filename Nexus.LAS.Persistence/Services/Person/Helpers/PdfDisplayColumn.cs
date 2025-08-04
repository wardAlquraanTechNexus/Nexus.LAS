using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.Services
{
    public class PdfDisplayColumn
    {
        public PdfDisplayColumn(string label, string key)
        {
            Label = label;
            Key = key;
        }

        public string Label { get; set; }
        public string Key { get; set; }
    }
}
