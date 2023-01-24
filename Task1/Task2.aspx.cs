using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task1
{
    public partial class Task2 : System.Web.UI.Page
    {
        entityEntities tt = new entityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var id = Request.QueryString["CustomerID"];
            var id2 = Convert.ToInt32(id);

            var a = (from m in tt.Customers
                     where m.CustomerID == id2
                     select m);

            entityEntities sawalha = new entityEntities();
            var user = tt.Customers.ToList();
            DetailsView1.DataSource = user;
            DetailsView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            var id = Request.QueryString["CustomerID"];
            var id2 = Convert.ToInt32(id);
            var record = tt.Customers.Find(id2);
            tt.Customers.Remove(record);
            tt.SaveChanges();
            Response.Redirect("Task1.aspx");

        }
    }
}