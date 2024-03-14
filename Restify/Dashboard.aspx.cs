using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Restify
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            output.Text = "Welcome! " +  Landlord.firstname +" " + Landlord.lastname;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add.aspx");
        }
    }
}