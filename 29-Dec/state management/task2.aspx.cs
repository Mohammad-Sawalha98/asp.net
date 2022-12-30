using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace state_management
{
    public partial class task2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Text = DateTime.Now.ToString();
                if (Request.Cookies["colors"] != null)
                {
                    HttpCookie cook1 = Request.Cookies["colors"];
                    Label1.ForeColor = System.Drawing.Color.FromName(cook1["color"]);
                }
            }
          
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
                HttpCookie cook = new HttpCookie("colors");
                cook["color"] = DropDownList1.SelectedValue;
            Label1.ForeColor = System.Drawing.Color.FromName(cook["color"]);
            cook.Expires = DateTime.Now.AddSeconds(60);
                Response.Cookies.Add(cook);

        }
    }
}