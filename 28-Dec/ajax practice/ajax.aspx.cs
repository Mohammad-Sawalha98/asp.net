using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ajax_practice
{
    public partial class ajax : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(3000);
            int c = Convert.ToInt32(TextBox1.Text);
            int d= Convert.ToInt32(TextBox2.Text);
            int add = c + d;
            int mul = c * d;
            Label4.Text = "the sum is : " + add;
            Label5.Text = "the mul is :" + mul;
        }
    }
}