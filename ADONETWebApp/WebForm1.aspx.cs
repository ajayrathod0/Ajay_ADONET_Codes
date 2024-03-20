using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADONETWebApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //  int Number = 0; //increment nahi honga
        protected void Page_Load(object sender, EventArgs e)
        {
            //  txtNumber.Text = hdnNumber.Value;   //Hidden State

            /*if (!IsPostBack)
            {
                ViewState["Number"] = 0;
                txtNumber.Text = ViewState["Number"].ToString();
            }*/




            /*-------------------------      ASP SESSION 5    ----------------------------*/
            //Task

            int vst = (int)Application["Start"]; // start value from Globel.aspx.cs se....
            vst++;
            Application["Start"] = vst;
            lblTotel.Text = Application["Start"].ToString();
            lblUnique.Text = Application["Unique"].ToString();


        }


        protected void BtnNumber_Increment_Click(object sender, EventArgs e)
        {
            /*   Number++;
            txtNumber.Text = hdnNumber.ToString();*/


            /* int num = int.Parse(txtNumber.Text);
             num++;
             hdnNumber.Value = num.ToString();   //Hidden State
             txtNumber.Text = num.ToString();*/


            //int num = (int)ViewState["Number"];
            //num++;
            //ViewState["Number"] = num;
            //txtNumber.Text = ViewState["Number"].ToString();

        }

        protected void GoogleClick_visit(object sender, EventArgs e)
        {
            // Server.Transfer("http://www.google.com"); //System.ArgumentException error server ke bahar nahi jata
            // Server.Execute("http://www.google.com");//System.ArgumentException same / usi page pa response bejta hai
            Response.Redirect("http://www.google.com");//google page open ho jayenga
        }
        protected void web2_visit(object sender, EventArgs e)
        {
            //  Server.Transfer("WebForm2.aspx"); // webform 1 me btn click karne par page ka content webform2 ka aa raha hai par url vahi hai webform 1 ki
           // Server.Execute("WebForm2.aspx"); //btn click karne par page ka content dono page ka content aayenga or url vahi hai  webform 1 ki
           // Response.Redirect("WebForm2.aspx");//url bhi change hongi or webfor2.aspx ka content bhi aayenga

            // lbltext.Text = "Web Form 2 Page proccess successful";
        }



        /*-------------------------      ASP SESSION 5    ----------------------------*/

        protected void btnRedirect_Click(object sender, EventArgs e)
        {
            string Name = txtName.Text;
            string Email = txtEmail.Text;

            //Using Cookie
            /* HttpCookie user = new HttpCookie("B22UserInfo"); //cookie ka name yaha denge kyunki get karte time name se get karenge cookie ko
             user["Name"] = Name;
             user["Email"] = Email;

             Response.Cookies.Add(user);

             Response.Redirect("WebForm2.aspx");
 */


            //USING Query String
            /*  Name = HttpUtility.UrlEncode(Name);
              Email = HttpUtility.UrlEncode(Email);
              string url = $"WebForm2.aspx?Name={Name}&Email={Email}";

              Response.Redirect(url);
              Response.Redirect("WebForm2.aspx");*/


            //USING SESSION State Variable
            /*  Session["Name"] = Name;
              Session["Email"] = Email;
              Response.Redirect("WebForm2.aspx");*/


            //USING Application State Variable
          /*  Application["Name"] = Name;
            Application["email"] = Email;
            Response.Redirect("WebForm2.aspx");*/

        }
    }
}