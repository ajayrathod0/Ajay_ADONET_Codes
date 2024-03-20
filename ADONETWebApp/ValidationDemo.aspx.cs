using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADONETWebApp
{
    public partial class ValidationDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateEmployee_Click(object sender, EventArgs e)
        {

            string Name = txtName.Text;
            string Age = txtAge.Text;
            string Email = txtEmail.Text;
            string ConfirmEmail = txtConfirmEmail.Text;

            //ADO code create data from database

            lblMassage.Text = "Date Submited Successfully";

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int input;
            int.TryParse(args.Value, out input);

            if (input % 2 == 0)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}