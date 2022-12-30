using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace state_management
{
    public partial class page2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["myInfo"] != null)
            {
                HttpCookie reccook = Request.Cookies["myInfo"];
                Response.Write("Username is " + reccook["Username"]);
                Response.Write(" password is " + reccook["password"]);

            }
            
        }
    }
}