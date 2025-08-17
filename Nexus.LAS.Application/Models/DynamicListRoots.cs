using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.Models
{

    public class AppSettings
    {
        public DynamicListRoots Roots { get; set; }
        public int LdStaffId { get; set; }
    }


    public class DynamicListRoots
    {
        public int Nationality { get; set; }
    }
}
