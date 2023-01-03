using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task_4_part_1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Request.Cookies["userinfo"] != null)
            //{

            //    TextBox1.Text = Request.Cookies["myInfo"]["Username"];

            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
                //if (Request.Cookies["userinfo"] != null)
                //{
                //Response.Redirect("Home.aspx");
                //}

                //else
                //{
                

                //}

            HttpCookie data = new HttpCookie("userinfo");
            data["email"] = TextBox1.Text;
            data.Expires = DateTime.Now.AddDays(5);
            Response.Cookies.Add(data);

            SqlConnection conn = new SqlConnection("data source=DESKTOP-0FKG21B\\SQLEXPRESS ; database=Task4  ; integrated security=SSPI");
            SqlCommand com = new SqlCommand($"insert into part1 (email) values ('{TextBox1.Text}')", conn);
            conn.Open();
            com.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("Home.aspx");


        }
    }
}