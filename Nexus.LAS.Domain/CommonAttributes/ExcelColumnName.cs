using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Domain.CommonAttributes
{
    public class ExcelColumnName: Attribute
    {
        public string Name { get; }
        public ExcelColumnName(string name)
        {
            Name = name;
        }
    }
}
