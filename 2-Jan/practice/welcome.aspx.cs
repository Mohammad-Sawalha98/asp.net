using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practice
{
    public partial class welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            FileUpload f = GridView1.Rows[e.RowIndex].FindControl("FileUpload1") as FileUpload;

            f.SaveAs(System.IO.Path.Combine(Server.MapPath("App_Data"), f.FileName));

            SqlDataSource1.UpdateParameters["discription"].DefaultValue = "~/pic/" + f.FileName;

            SqlDataSource1.Update();


        }
    }
}