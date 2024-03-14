using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Restify
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            Repository repo = new Repository();


            if (repo.add(nameText.Text, detailsText.Text, locationText.Text,Landlord.id))
                MessageBox.Show("Apartment added!"); Response.Redirect("Dashboard.aspx");


        }
    }
}