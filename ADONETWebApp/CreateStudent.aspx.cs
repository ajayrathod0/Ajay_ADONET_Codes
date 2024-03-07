using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADONETWebApp
{
    public partial class CreateStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadTrainers();
            }
        }

        private void LoadTrainers()
        {
            string ConnectionString = ConfigurationManager.ConnectionStrings["MyDb"].ConnectionString;
            SqlConnection con = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand("Select * from Trainer", con);
            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            ddlTrainers.DataValueField = "Id"; 
            ddlTrainers.DataTextField = "Name";

            ddlTrainers.DataSource = reader; 
            ddlTrainers.DataBind();

            ddlTrainers.Items.Insert(0, new ListItem() { Value = "-1", Text = "--Select Trainer--" });

            con.Close();
        }





        protected void btnCreate_Click(object sender, EventArgs e)
        {
            try
            {
                string name = txtName.Text;

                int trainerId = int.Parse(ddlTrainers.SelectedValue);

                //ADO.Net code to Insert Student in Database

                string Connectionstr = ConfigurationManager.ConnectionStrings["MyDb"].ConnectionString;
                SqlConnection con = new SqlConnection(Connectionstr);
                string TextCmd = $"Insert into Student values ('{name}','{trainerId}')";
                SqlCommand cmd = new SqlCommand(TextCmd, con); 

                con.Open(); 
                int rowsAffected = cmd.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    Response.Redirect("Student.aspx");
                }
                else
                {
                    lblMassage.Text = "Error in Creating Student";
                }
            }
            catch
            {
                lblMassage.Text = "Error in Creating Student";

            }
        }
    }
}