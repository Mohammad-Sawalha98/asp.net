using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _27_Dec
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            passbox2.Text = "";
            emailtwo.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            name.Text= "";
            emailcheck.Text = "";
            pass1.Text = "";
            pass2.Text = "";
        }
    }
}