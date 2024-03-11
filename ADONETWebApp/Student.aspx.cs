using System.Configuration;
using System.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADONETWebApp
{
    public partial class Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadStudent();
        }
        private void LoadStudent()
        {
            string ConnectionString = ConfigurationManager.ConnectionStrings["MyDb"].ConnectionString;
            SqlConnection con = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand("Select * From Student", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();


            gvStudents.DataSource = reader;
            gvStudents.DataBind();
            con.Close();


        }
    }
}