using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmoothBoard
{
    public partial class Products : System.Web.UI.Page
    {
        SmoothData producten = new SmoothData();

        protected void Page_Load(object sender, EventArgs e)
        {
            ListView1.DataSource = producten.ProductList;
            ListView1.DataBind();
        }

    }
}