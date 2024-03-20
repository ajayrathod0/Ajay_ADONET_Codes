using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_WebApp
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }


        protected void RagisterBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Ragister.aspx");

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyDb"].ConnectionString;
            string username = txtUsername.Value.Trim();
            string password = txtPassword.Value.Trim();

            SqlConnection connection = new SqlConnection(connectionString);

            string query = "SELECT COUNT(*) FROM Users WHERE Email = @Email AND Password = @Password";
            SqlCommand command = new SqlCommand(query, connection);

            command.Parameters.AddWithValue("@Email", username);
            command.Parameters.AddWithValue("@Password", password);
            connection.Open();
            int count = (int)command.ExecuteScalar();
            connection.Close();

            if (count > 0)
            {
                string script = "alert('Login Success');";
                ClientScript.RegisterStartupScript(GetType(), "alert", script, true);
                //Response.Redirect("Dashboard.aspx");
            }
            else
            {
                lblMassage.Text = "Invalid username or password.";
            }


        }
    }
}