using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; using System.Configuration;
public partial class Delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn;//to connect with db
        SqlCommand comm;//to execute query
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "delete from category where catid=@cid";
        comm = new SqlCommand(q, conn);
        comm.Parameters.AddWithValue("@cid",Request.QueryString["id"]);
        conn.Open();
        int res = comm.ExecuteNonQuery();
        if (res == 1)
        {
           Response.Redirect("udcat.aspx");
        }
        conn.Close();

    }

}