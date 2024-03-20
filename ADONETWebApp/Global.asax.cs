using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace ADONETWebApp
{
    // application level events
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            Application["Start"] = 0;
            Application["Unique"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            int visits = (int)Application["Unique"]; //unique me value 0 rahengi jab jab naya user visit / naya session tabi unique me add honga
            visits++;
            Application["Unique"] = visits; //1,1 se add karke usi me daal denge value WebForm1.aspx.cs me access
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}