using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Task_4_part_1
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Request.Cookies["userinfo"] != null)
            //{
            //    HttpCookie reccook = Request.Cookies["userinfo"];
            //    string cookieValue = reccook.Value;
            //}

            //SqlConnection conn = new SqlConnection("data source=DESKTOP-0FKG21B\\SQLEXPRESS ; database=Task4  ; integrated security=SSPI");
            //SqlCommand com = new SqlCommand("select * from part1", conn);
            //conn.Open();
            //SqlDataReader sdr = com.ExecuteReader();

            //if (sdr[0]!=null && sdr[1] != null)
            //if (IsPostBack)
            //{
            //    showresult.Visible = true;
            //    makevoting.Visible = false;

            //}

           
               
           
            if (Request.Cookies["vote"] != null)
            {
                showresult.Visible = true;
                makevoting.Visible = false;

                double c1 = 0;
                double c2 = 0;
                double c3 = 0;
                double c4 = 0;
                double c5 = 0;


                SqlConnection conn2 = new SqlConnection("data source=DESKTOP-0FKG21B\\SQLEXPRESS ; database=Task4  ; integrated security=SSPI");
                SqlCommand com2 = new SqlCommand("select * from part1", conn2);

                conn2.Open();
                SqlDataReader sdr2 = com2.ExecuteReader();
                while (sdr2.Read())
                {
                    if (sdr2[2].ToString() == "A")
                    {
                        c1 += 1;
                    }

                    if (sdr2[2].ToString() == "B")
                    {
                        c2 += 1;
                    }

                    if (sdr2[2].ToString() == "C")
                    {
                        c3 += 1;
                    }

                    if (sdr2[2].ToString() == "D")
                    {
                        c4 += 1;
                    }

                    if (sdr2[2].ToString() == "E")
                    {
                        c5 += 1;
                    }
                   

                }
                conn2.Close();

                Label2.Text = "The number of voting on ممتاز is" + c1;
                Label3.Text = "The number of voting on جيد جدا is" + c2;
                Label4.Text = "The number of voting on ممتاز is" + c3;
                Label5.Text = "The number of voting on ممتاز is" + c4;
                Label6.Text = "The number of voting on ممتاز is" + c5;


            }
            else
            {
                showresult.Visible = false;
                makevoting.Visible = true;
            }

              

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //HttpCookie reccook = Request.Cookies["userinfo"];
            //string cookieValue = reccook.Value;

           
            //    if (Request.Cookies["vote"] != null)
            //{
            //    showresult.Visible = true;
            //    makevoting.Visible = false;
            //}
            //else { 


                SqlConnection conn = new SqlConnection("data source=DESKTOP-0FKG21B\\SQLEXPRESS ; database=Task4  ; integrated security=SSPI");
            SqlCommand com = new SqlCommand($"insert into part1 (vote)  values ('{vote.SelectedValue}')  " , conn);
            conn.Open();
            com.ExecuteNonQuery();
            conn.Close();

            HttpCookie cook = new HttpCookie("vote");
            cook.Values["vote"] = "voted";
            cook.Expires = DateTime.Now.AddDays(7);
            Response.Cookies.Add(cook);



            double c1 = 0;
            double c2 = 0;
            double c3 = 0;
            double c4 = 0;
            double c5 = 0;


            SqlConnection conn2 = new SqlConnection("data source=DESKTOP-0FKG21B\\SQLEXPRESS ; database=Task4  ; integrated security=SSPI");
            SqlCommand com2 = new SqlCommand("select * from part1", conn2);

            conn2.Open();
            SqlDataReader sdr2 = com2.ExecuteReader();
            while (sdr2.Read())
            {
                if (sdr2[2].ToString() == "A")
                {
                    c1 += 1;
                }

                if (sdr2[2].ToString() == "B")
                {
                    c2 += 1;
                }

                if (sdr2[2].ToString() == "C")
                {
                    c3 += 1;
                }

                if (sdr2[2].ToString() == "D")
                {
                    c4 += 1;
                }

                if (sdr2[2].ToString() == "E")
                {
                    c5 += 1;
                }


            }
            conn2.Close();

            Label2.Text = "The number of voting on ممتاز is" + c1;
            Label3.Text = "The number of voting on جيد جدا is" + c2;
            Label4.Text = "The number of voting on ممتاز is" + c3;
            Label5.Text = "The number of voting on ممتاز is" + c4;
            Label6.Text = "The number of voting on ممتاز is" + c5;


        


           
                showresult.Visible = true;
                makevoting.Visible = false;
            



        }
    }
}