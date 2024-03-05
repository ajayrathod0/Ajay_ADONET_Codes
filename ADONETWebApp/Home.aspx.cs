using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ADONETWebApp
{
    public partial class Home : System.Web.UI.Page
    {
        //get post dono case me events trigger honge
       /* protected void Page_Load(object sender, EventArgs e)
        {
            Text1.Value = "Html Txtbox";
            TextBox1.Text = "ASPX TxtBox";
            if (IsPostBack)
            {
                Response.Write("POST request : Page_Loaded"); //Response.Write Print karvane ke liye
            }
            else
            {
                Response.Write("GET request : Page_Loaded");
            }
        }
        protected void Page_Init(object sender, EventArgs e)
        {
            Response.Write("Page_Init </br>");
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            Response.Write("Page_PreRender </br>");
        }*/

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("Button1_Click </br>");
        }
    }
}