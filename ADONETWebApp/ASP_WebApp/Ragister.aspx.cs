using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebApp
{
    public partial class Ragister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string firstname = txtFirstName.Value;
            string lastname = txtLastName.Value;
            string email = txtEmail.Value;
            string password = txtPassword.Value;

            var items = rblGender.Items.Cast<ListItem>();
            string gender = items.FirstOrDefault(i => i.Selected == true)?.Value;


            string connectionString = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

            SqlConnection con = new SqlConnection(connectionString);

            string query = $"insert into Users Values('{firstname}','{lastname}','{gender}','{email}','{password}')";

            SqlCommand cmd = new SqlCommand(/*"upsCreateUsers"*/ query, con);

            /*cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Value);
            cmd.Parameters.AddWithValue("@LastName", txtLastName.Value);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Value);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Value);

            SqlParameter genderParam = new SqlParameter("@Gander", SqlDbType.NVarChar, 50);
            if (gender != null)
            {
                genderParam.Value = gender;
            }
            else
            {
                genderParam.Value = DBNull.Value;
            }
            cmd.Parameters.Add(genderParam);*/

            SqlParameter Id = new SqlParameter()
            {
                ParameterName = "@Id",
                SqlDbType = SqlDbType.Int,
                Direction = ParameterDirection.Output
            };
            cmd.Parameters.Add(Id);

            SqlParameter status = new SqlParameter()
            {
                ParameterName = "@Status",
                SqlDbType = SqlDbType.Bit,
                Direction = ParameterDirection.Output,
            };
            cmd.Parameters.Add(status);

            con.Open();
            int rowsAffected = cmd.ExecuteNonQuery();
            con.Close();

            if (rowsAffected > 0)
            {
                string script = "alert('Registration successful');";
                ClientScript.RegisterStartupScript(GetType(), "alert", script, true);
               /* Response.Redirect("LogIn.aspx");*/
            }
            else
            {
                string script = "alert('Registration failed');";
                ClientScript.RegisterStartupScript(GetType(), "alert", script, true);

            }

        }
    }
}