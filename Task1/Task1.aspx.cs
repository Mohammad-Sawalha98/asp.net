using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task1
{
    public partial class Task1 : System.Web.UI.Page
    {
        entityEntities tt = new entityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var cc = from item in tt.Cities select item;
                DropDownList1.DataSource = cc.ToList();
                DropDownList1.DataTextField = "City1";
                DropDownList1.DataValueField = "CityID";
                DropDownList1.DataBind();
            }
            var user1= from t1 in tt.Customers
                      join t2 in tt.Cities on t1.CityID equals t2.CityID
                      select new { t1.CustomerID, t1.CustomerName, t1.Age, t2.City1, t1.phone, t1.Email, t1.Photo }
                      ;

            GridView1.DataSource = user1.ToList();
            GridView1.DataBind();
            lblNum.Text = "Customers Number :" + (from item in tt.Customers select item).Count().ToString();
            lblAvg.Text = "Avarage Age :" + (from item in tt.Customers select item.Age).Average().ToString();
            lblMax.Text = "Max Age :" + (from item in tt.Customers select item.Age).Max().ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Customer m = new Customer();
           


            var s = Convert.ToInt32(TextBox3.Text);
            var ph = Convert.ToInt32(TextBox2.Text);

            m.CustomerName = TextBox4.Text;
            m.Age = s;
            m.phone = ph;
            m.Email = TextBox1.Text;
            m.CityID =Convert.ToInt32( DropDownList1.SelectedValue);
            entityEntities sawalha = new entityEntities();
           

            string image = "";
            if (FileUpload1.HasFile)
            {
                image = "/img/" + FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("/img/") + FileUpload1.FileName);
            }

            m.Photo= image;

            sawalha.Customers.Add(m);
            sawalha.SaveChanges();
            var user = sawalha.Customers.ToList();
            //GridView2.DataSource = user;
            //GridView2.DataBind();

            Response.Redirect("Task1.aspx");


        }


    }
}