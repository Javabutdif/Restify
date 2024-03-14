using Microsoft.AspNet.FriendlyUrls;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory.Database;

namespace Restify
{
    public partial class Register : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           

           
        }

        protected void signUp(object sender, EventArgs e)
        {
            string firstName = fname.Text;
            string lastName = lname.Text;
            string email = em.Text;
            string contactNumber = contact.Text;
            string password = pass.Text;

            Repository repo = new Repository();

           if( repo.signUp(firstName, lastName, email, contactNumber, password))
            {
                MessageBox.Show("Success","Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                Response.Redirect("LoginForm.aspx");
            }
            else
            {
                MessageBox.Show("Email is in use!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }



        }
    }
}