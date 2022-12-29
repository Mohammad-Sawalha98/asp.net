using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Runtime.Remoting.Contexts;

namespace WebApplication1
{
    public partial class normal_date : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("data source = DESKTOP-0FKG21B\\SQLEXPRESS ; database= AJAX Task ; integrated security= SSPI ");
            SqlCommand com = new SqlCommand($"insert into comments values ('{TextBox1.Text}' , '{TextArea1.Value}') " , conn);
            conn.Open();
            com.ExecuteNonQuery();

            SqlCommand com2 = new SqlCommand("select * from comments" , conn);
            SqlDataReader srd = com2.ExecuteReader();
            string table = "<table class='table table-striped'> <tr><th>Name</th> <th>Comment</th></tr>";

            while (srd.Read())
            {
                table += $"<tr><td>{srd[1]}</td><td>{srd[2]}</td> </tr>";
            }

            table += "</table>";
            Label label = new Label();
            label.Text = table;
           soso.Controls.Add(label);
            srd.Close();
            conn.Close();


            ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert",
                "swal('Good job!', 'Message added seccessfully ')", true);
        }
    }
}