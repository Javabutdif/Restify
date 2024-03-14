using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;

namespace Restify
{
    public class Repository 
    {
        private static ConnectionString connectionString = new ConnectionString();
        private static SqlConnection con = new SqlConnection(connectionString.connect());


        public bool add(string name, string details, string location, int id )
        {

            String sql = "INSERT INTO Apartment (apartment_name , apartment_details, apartment_location,landlord_id ) " +
                  "VALUES (@name, @details, @location,@id)";

            using (SqlCommand command = new SqlCommand(sql, con))
            {
                command.Parameters.Add("@name", SqlDbType.NVarChar).Value = name;
                command.Parameters.Add("@details", SqlDbType.NVarChar).Value = details;
                command.Parameters.Add("@location", SqlDbType.NVarChar).Value = location;
                command.Parameters.Add("@id", SqlDbType.NVarChar).Value = id;
        

                con.Open();
                command.ExecuteNonQuery();
                
                con.Close();

                return true;
            }

        }

        public bool signUp(string firstName, string lastName, string email, string contactNumber, string password)
        {
            bool result = false;
            LandlordModel model = new LandlordModel();  
            String verify = "SELECT landlord_email FROM Landlord WHERE landlord_email = @email";

            using (SqlCommand command = new SqlCommand(verify, con))
            {
                command.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;
                command.Parameters.Add("@password", SqlDbType.NVarChar).Value = password;

                con.Open();

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                      
                        model.email = reader.GetString(reader.GetOrdinal("landlord_email"));
                       
                    }
                    con.Close();
                }
            }

            if (model.email != null)
            {
                return result = false;
                
            }
            else
            {

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
                    result = true;
                    con.Close();



                }

                return result;
            }
        }

        public LandlordModel login(string email, string password)
        {
            LandlordModel landlord = new LandlordModel();   
            string sql = "SELECT landlord_firstname, landlord_lastname, landlord_email, landlord_contact " +
                        "FROM Landlord WHERE landlord_email = @email AND landlord_password = @password";


            using (SqlCommand command = new SqlCommand(sql, con))
            {
                command.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;
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
                }
            }



            con.Close();

            return landlord;
        

        }

    }
}