using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFDatabaseFirstApproach
{
    public partial class TrainerDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadTrainers();
            }
        }



        void LoadTrainers()
        {
            StudentDbContext db = new StudentDbContext();
           // gvTrainers.DataSource = db.Trainers.ToList();
            gvTrainers.DataSource = db.GetTrainers().ToList(); //Sp se, sp as a method create hota hai database se
            gvTrainers.DataBind();
        }



        protected void btnload_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txtId.Text);
            StudentDbContext db = new StudentDbContext();
            Trainer trainer = db.Trainers.FirstOrDefault(x => x.Id == id);

            if (trainer != null)
            {
                txtName.Text = trainer.Name;
                txtCity.Text = trainer.City;
                txtExperience.Text = trainer.Experience.ToString();

                lblMassage.Text = $"Trainer Loaded Id {id} ";
            }
            else
            {
                lblMassage.Text = $"Trainer Not Found {id}";
            }

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string city = txtCity.Text;
            int experience = int.Parse(txtExperience.Text);

            Trainer trainer = new Trainer()
            {
                Name = name,
                City = city,
                Experience = experience,
            };

            StudentDbContext db = new StudentDbContext();
            db.Trainers.Add(trainer);
            db.SaveChanges();

            LoadTrainers();

            ClearForm();
        }



        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            int id = int.Parse(txtId.Text);
            string name = txtName.Text;
            string city = txtCity.Text;
            int experinence = int.Parse(txtExperience.Text);

            StudentDbContext db = new StudentDbContext();
            Trainer trainer = db.Trainers.FirstOrDefault(a => a.Id == id);

            trainer.Name = name;
            trainer.City = city;
            trainer.Experience = experinence;

            db.SaveChanges();

            lblMassage.Text = "Trainer Data Updated";

            LoadTrainers();

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int id = int.Parse(txtId.Text);
            StudentDbContext db = new StudentDbContext();
            Trainer trainer = db.Trainers.FirstOrDefault(a => a.Id == id);

            db.Trainers.Remove(trainer);
            db.SaveChanges();

            LoadTrainers();
        }


        protected void btnClear_Click(object sender, EventArgs e)
        {
            ClearForm();
        }
        void ClearForm()
        {
            txtId.Text = string.Empty;
            txtName.Text = string.Empty;
            txtCity.Text = string.Empty;
            txtExperience.Text = string.Empty;

        }
    }
}