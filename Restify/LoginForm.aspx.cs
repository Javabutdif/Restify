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
            LandlordModel landlord = new LandlordModel();
            string emailAddress = email.Text;
            string password = pass.Text;

            string sql = "SELECT landlord_firstname, landlord_lastname, landlord_email, landlord_contact " +
                         "FROM Landlord WHERE landlord_email = @email AND landlord_password = @password";

            
                using (SqlCommand command = new SqlCommand(sql, con))
                {
                    command.Parameters.Add("@email", SqlDbType.NVarChar).Value = emailAddress;
                    command.Parameters.Add("@password", SqlDbType.NVarChar).Value = password;

                    con.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            landlord.firstName = reader.GetString(reader.GetOrdinal("landlord_firstname"));
                            landlord.lastName = reader.GetString(reader.GetOrdinal("landlord_lastname"));
                            landlord.email = reader.GetString(reader.GetOrdinal("landlord_email"));
                            landlord.contact = reader.GetString(reader.GetOrdinal("landlord_contact"));
                        }
                        else
                        {
                            MessageBox.Show("Invalid email or password.");
                            return;
                        }
                    }
                }
            

            MessageBox.Show("Login! Welcome " + landlord.firstName + " " + landlord.lastName);
            con.Close();
            Response.Redirect("LoginForm.aspx");
        }

    }
}