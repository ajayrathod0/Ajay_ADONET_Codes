using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFDatabaseFirstApproach
{
    public partial class Reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindReports();
            }
        }
        protected void BindReports()
        {
            StudentDbContext db = new StudentDbContext();

            var report = from s in db.Students
                         join t in db.Trainers
                         on s.TrainerId equals t.Id
                         join c in db.Courses
                         on s.CourseId equals c.Id
                         select new
                         {
                             StudentName = s.Name,
                             TrainerName = t.Name,
                             CourseName = c.Name,
                         };

            gvReports.DataSource = report.ToList();
            gvReports.DataBind();

        }
    }
}