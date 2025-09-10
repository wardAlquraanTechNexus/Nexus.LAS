using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Persistence.Services
{
    public class PdfDisplayColumn
    {
        public PdfDisplayColumn(string label, string key, Dictionary<int , string>? dynamicLists = null)
        {
            Label = label;
            Key = key;
            DynamicLists = dynamicLists != null ? dynamicLists : new Dictionary<int, string>();
        }

        public string Label { get; set; }
        public string Key { get; set; }
        public Dictionary<int, string> DynamicLists { get; set; }
    }
}
