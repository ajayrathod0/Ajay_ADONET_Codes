using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADONETWebApp
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /* if (!IsPostBack)
             {
                 if (ViewState["Number"] != null)
                 {
                     lblMassage.Text = ViewState["Number"].ToString();
                 }
                 else
                 {
                     lblMassage.Text = "Not found Empty Viewstate"; 
                 }
             }*/




            /*-------------------------      ASP SESSION 5    ----------------------------*/

            //get/read cookie 

            /* HttpCookie user = Request.Cookies["B22UserInfo"];
             if (user != null)
             {
                 lblName.Text = user["Name"];
                 lblEmail.Text = user["Email"];
             }
 */




            //Read Query String

            /*if (Request.QueryString["Name"] != null)
            {
                lblName.Text = Request.QueryString["Name"];
            }
            else
            {
                lblName.Text = "No Name Found";
            }
            if (Request.QueryString["Email"] != null)
            {
                lblEmail.Text = Request.QueryString["Email"];
            }
            else
            {
                lblEmail.Text = "No Email Found";
            }*/






            //Read Session State

            /* if (Session["Name"] != null)
             {
                 lblName.Text = Session["Name"].ToString();
             }
             else
             {
                 lblEmail.Text = "Name not Found";
             }
             if (Session["Email"] != null)
             {
                 lblEmail.Text = Session["Email"].ToString();
             }
             else
             {
                 lblEmail.Text = "Email Not Found";
             }*/




            //Read/Get Appliction State Variable

           /* if (Application["Name"] != null)
            {
                lblName.Text = Application["Name"].ToString();
            }
            else
            {
                lblName.Text = "Name Not Found";
            }
            if (Application["Email"] != null)
            {
                lblEmail.Text = Application["Email"].ToString();
            }
            else
            {
                lblEmail.Text = "Email.Found";
            }*/
        }
    }
}