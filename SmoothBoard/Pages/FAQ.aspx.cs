using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SmoothBoard
{
    public partial class FAQ : System.Web.UI.Page
    {
        Vraagjes vragen = new Vraagjes();
        protected void Page_Load(object sender, EventArgs e)
        {
            FAQList.DataSource = vragen.GetFAQ();
            FAQList.DataBind();
        }
    }
}