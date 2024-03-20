using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
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
            string connectionString =
                ConfigurationManager.ConnectionStrings["B22ADONETDB"].ConnectionString;

            SqlConnection con = new SqlConnection(connectionString);

            SqlCommand cmd = new SqlCommand("select * from trainer", con);

            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();

            ddlTrainers.DataValueField = "Id";
            ddlTrainers.DataTextField = "Name";

            ddlTrainers.DataSource = reader;
            ddlTrainers.DataBind();

            ddlTrainers.Items.Insert(0, new ListItem() { Value = "-1", Text = "-- Select Trainer --" });

            con.Close();
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            if (FileUpload.HasFile && (FileUpload.PostedFile.FileName.Split('.')[1] == "jpg"
                || FileUpload.PostedFile.FileName.Split('.')[1] == "png")
                && FileUpload.PostedFile.ContentLength <= 515000
                )
            {

                string fileName = FileUpload.FileName;//user upload karenga image usko filename m hold karenge

                //save file on server

                string folderPath = Server.MapPath("~/Img");//img folder kaha hai "~" til operator root drirectvity se path hold

                string imagePath = $"{folderPath}/{fileName}"; //image jo hai uska path mil jayenga
                FileUpload.SaveAs(imagePath);// server or save ho jayenga

                string dbImagePath = $"~/Img/{fileName}"; // database me path konsa copy/save/store karna hai

                try
                {
                    string name = txtName.Text;
                    // string gender = txtGender.Text;
                    var items = rblGender.Items.Cast<ListItem>();
                    string gender = items.FirstOrDefault(i => i.Selected == true)?.Value;
                    // string trainerId = txtTrainer.Text;
                    int trainerId = int.Parse(ddlTrainers.SelectedValue);

                    // ado.net code to insert student in database

                    string connectionString =
                        ConfigurationManager.ConnectionStrings["B22ADONETDB"].ConnectionString;

                    SqlConnection con = new SqlConnection(connectionString);

                    string cmdText = $"insert into Student values ('{name}', {trainerId},'{dbImagePath}')";
                    SqlCommand cmd = new SqlCommand(cmdText, con);

                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        Response.Redirect("StudentDashboard.aspx");
                    }
                    else
                    {
                        lblMessage.Text = "Error in creating student";
                    }
                }
                catch
                {
                    lblMessage.Text = "Error in creating student";
                }
            }
            else
            {
                lblMessage.Text = "Please image chack format .png , .jpg and size 2MB";
            }
        }


       

    }
}