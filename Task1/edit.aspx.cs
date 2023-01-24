using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task1
{
    public partial class edit : System.Web.UI.Page
    {
        entityEntities tt = new entityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            var cc = from item in tt.Cities select item;
            DropDownList1.DataSource = cc.ToList();
            DropDownList1.DataTextField = "City1";
            DropDownList1.DataValueField = "CityID";
            DropDownList1.DataBind();


            var id = Request.QueryString["CustomerID"];
            int id2 = Convert.ToInt32(id);
            var moath = tt.Customers.Find(id2);

            Customer m = new Customer();

          
            var s = Convert.ToInt32(m.Age);
            //var ph = Convert.ToInt32(m.phone);


            TextBox1.Text=moath.CustomerName;
            TextBox2.Text = moath.Age.ToString();
            TextBox3.Text = moath.phone.ToString();
            TextBox4.Text = moath.Email;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var a=Convert.ToInt32(TextBox2.Text);
            var ph = Convert.ToInt32(TextBox3.Text);

            var id = Request.QueryString["CustomerID"];
            var id2 = Convert.ToInt32(id);
            var record = tt.Customers.Find(id2);
            record.CustomerName = TextBox1.Text;
            record.Age = a;
            record.phone= ph;
            record.Email = TextBox4.Text;   

            string image = "";
            if (FileUpload1.HasFile)
            {
                image = "/img/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("/img/") + FileUpload1.FileName);
            }

            record.Photo = image;

            tt.SaveChanges();
            Response.Redirect("Task1.aspx");
        }
    }
}