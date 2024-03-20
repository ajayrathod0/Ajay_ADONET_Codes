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
    public partial class TrainerDashboard : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["B22ADONETDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }


            // lblMassage.Text = $" Page Loaded at :  {DateTime.Now}";
            /*
                        if (Cache["Trainers"] == null)
                        {
                            string cs = ConfigurationManager.ConnectionStrings["B22ADONETDB"].ConnectionString;

                            SqlConnection con = new SqlConnection(cs);

                            SqlCommand cmd = new SqlCommand("select * from trainer", con);

                            con.Open();

                            SqlDataReader reader = cmd.ExecuteReader();

                            List<Trainer> trainer = new List<Trainer>();

                            if (reader.HasRows)
                            {
                                if (reader.Read())
                                {
                                    Trainer t = new Trainer()
                                    {
                                        Id = (int)reader["ID"],
                                        Name = (string)reader["Name"],
                                        City = reader["City"].ToString(),
                                        Experience = (int)reader["Experience"]
                                    };
                                    trainer.Add(t);
                                }
                            }

                            Cache["Trainers"] = trainer;

                            gvTrainers.DataSource = trainer;
                            gvTrainers.DataBind();

                            lblMessage.Text = "Trainers Loaded From Database"; // first time data base se data lenga

                            con.Close();
                        }
                        else
                        {
                            gvTrainers.DataSource = Cache["Trainers"]; // uske bad cache object se uthayenga data 
                            gvTrainers.DataBind();
                            //isse application perfomance improve hota hai or time bachta hai cache se data le na 

                            lblMessage.Text = "Trainers Loaded From Cache Object";
                        }*/
        }


        protected void BindGridView()
        {

           // string cs = ConfigurationManager.ConnectionStrings["B22ADONETDB"].ConnectionString;

            SqlConnection con = new SqlConnection(connectionString);

            SqlCommand cmd = new SqlCommand("select * from trainer", con);

            con.Open();

            SqlDataReader reader = cmd.ExecuteReader();

            List<Trainer> trainer = new List<Trainer>();

            if (reader.HasRows)
            {
                if (reader.Read())
                {
                    Trainer t = new Trainer()
                    {
                        Id = (int)reader["ID"],
                        Name = (string)reader["Name"],
                        City = reader["City"].ToString(),
                        Experience = (int)reader["Experience"]
                    };
                    trainer.Add(t);
                }
            }



            gvTrainers.DataSource = trainer;
            gvTrainers.DataBind();

            lblMessage.Text = "Trainers Loaded From Database"; 

            con.Close();
        }







        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvTrainers.EditIndex = e.NewEditIndex;
            BindGridView();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvTrainers.EditIndex = -1;
            BindGridView();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int trainerId = Convert.ToInt32(gvTrainers.DataKeys[e.RowIndex].Value);
            GridViewRow row = gvTrainers.Rows[e.RowIndex];
            string name = ((TextBox)row.Cells[1].Controls[0]).Text;
            string city = ((TextBox)row.Cells[2].Controls[0]).Text;
            int experience = int.Parse(((TextBox)row.Cells[3].Controls[0]).Text);

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("UPDATE Trainer SET Name = @Name, City = @City, Experience = @Experience WHERE Id=@Id", con);
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@City", city);
                cmd.Parameters.AddWithValue("@Experience", experience);
                cmd.Parameters.AddWithValue("@Id", trainerId);
                con.Open();
                cmd.ExecuteNonQuery();
            }
            gvTrainers.EditIndex = -1;
            BindGridView();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int trainerId = Convert.ToInt32(gvTrainers.DataKeys[e.RowIndex].Value);

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("DELETE FROM Trainer WHERE Id=@Id", con);
                cmd.Parameters.AddWithValue("@Id", trainerId);
                con.Open();
                cmd.ExecuteNonQuery();
            }
            BindGridView();
        }

    }
}