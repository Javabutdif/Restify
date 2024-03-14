using Microsoft.EntityFrameworkCore.Metadata;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;


namespace Restify
{
    public partial class LoginForm : System.Web.UI.Page
    {
        private static ConnectionString connection = new ConnectionString();
        private static SqlConnection con = new SqlConnection(connection.connect());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginClick_Click(object sender, EventArgs e)
        {
            string emailAddress = email.Text;
            string password = pass.Text;
            Repository repo = new Repository();

         


            if (emailAddress == "admin" && password == "admin")
            {
                Response.Redirect("Admin.aspx");
            }
            else
            {
                LandlordModel landlord = repo.login(emailAddress, password);
                if (landlord.email == emailAddress)
                {
                    MessageBox.Show("Login! Welcome " + landlord.firstName + " " + landlord.lastName, "Notifaction", MessageBoxButtons.OKCancel, MessageBoxIcon.Information);
                    Landlord.id = landlord.id;
                    Landlord.firstname = landlord.firstName;
                    Landlord.lastname = landlord.lastName;
                    Landlord.email = landlord.email;
                    Landlord.contact = landlord.contact;

                    Response.Redirect("Dashboard.aspx");
                }
                else
                    MessageBox.Show("Invalid Login!", "Notifaction", MessageBoxButtons.OKCancel, MessageBoxIcon.Error);

            }

        }

    }
}
