using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _27_Dec
{
    public partial class WebForm2 : System.Web.UI.Page
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
            name.Text = "";
            emailcheck.Text = "";
            pass1.Text = "";
            pass2.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                "swal('Good job!', 'You clicked Success button!', 'success')", true);


        }
    }
}