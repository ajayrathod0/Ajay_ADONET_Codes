using EFCodeFirstDB.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EFCodeFirstDB
{
    public partial class TrainerDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StudentDbContext cd = new StudentDbContext();
            gvTrainerss.DataSource = cd.Trainer.ToList();
            gvTrainerss.DataBind();
        }
    }
}