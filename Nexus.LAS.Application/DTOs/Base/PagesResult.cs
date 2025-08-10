using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nexus.LAS.Application.DTOs.Base
{
    public class PagingResult<T>
    {
        public PagingResult()
        {
        }

        public PagingResult(List<T> collection , int page, int pageSize, int totalRecords)
        {
            Page = page;
            PageSize = pageSize;
            Collection = collection;
            TotalRecords = totalRecords;
            TotalPages = totalRecords/pageSize;
        }

        public int Page {  get; set; }
        public int PageSize {  get; set; }
        public int TotalRecords {  get; set; }
        public int TotalPages {  get; set; }
        public List<T> Collection {  get; set; }
    }
}
