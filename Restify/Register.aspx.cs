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
        private static ConnectionString connection = new ConnectionString();
        private static SqlConnection con = new SqlConnection(connection.connect());
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

            String sql = "INSERT INTO Landlord (landlord_firstName , landlord_lastName, landlord_email, landlord_contact, landlord_password) " +
                "VALUES (@firstName, @lastName, @email, @contactNumber, @password)";

            using (SqlCommand command = new SqlCommand(sql, con))
            {
                command.Parameters.Add("@firstName", SqlDbType.VarChar).Value = firstName;
                command.Parameters.Add("@lastName", SqlDbType.VarChar).Value = lastName;
                command.Parameters.Add("@email", SqlDbType.VarChar).Value = email;
                command.Parameters.Add("@contactNumber", SqlDbType.VarChar).Value = contactNumber;
                command.Parameters.Add("@password", SqlDbType.VarChar).Value = password;

                con.Open();
                command.ExecuteNonQuery();
                MessageBox.Show("Success!");
                con.Close();

             
            }





        }
    }
}