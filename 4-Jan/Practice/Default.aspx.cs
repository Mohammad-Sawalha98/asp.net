using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practice
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-0FKG21B\\SQLEXPRESS;Initial Catalog=students details;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("select * from Table_1", con);
            DataTable dt=new DataTable();
            sda.Fill(dt);
            Repeater1.DataSource= dt;
            Repeater1.DataBind();


        }
    }
}