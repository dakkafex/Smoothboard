using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SmoothBoard
{
    public class SmoothProduct
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int ProductType { get; set; }
        public string Description { get; set; }
        public string Image { get; set; }
        public string ProductId { get; set; }
        public decimal Price { get; set; }
    }
}