using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace state_management
{
    public partial class SM_Practice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["myInfo"] != null)
            {

                TextBox1.Text = Request.Cookies["myInfo"]["Username"];
                
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)
            {
                HttpCookie cook = new HttpCookie("myInfo");
                cook["Username"] = TextBox1.Text;
                cook.Values.Add("password", TextBox2.Text);
                cook.Expires=DateTime.Now.AddSeconds(5);
                Response.Cookies.Add(cook);
                Response.Redirect("page2.aspx");
            }
        }

       
    }
}