using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class addcategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn;
        SqlCommand comm;
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "insert into category values(@catname,@image)";
        comm = new SqlCommand(q, conn);
        comm.Parameters.AddWithValue("@catname", TextBox1.Text);
        if (FileUpload1.HasFile)
        {
            comm.Parameters.AddWithValue("@image", FileUpload1.FileName);
        }
        else
        {
            comm.Parameters.AddWithValue("@image", "default.png");
        }
        conn.Open();
        int res = comm.ExecuteNonQuery();
        conn.Close();
        if (res == 1)
        {
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(MapPath("images/" + FileUpload1.FileName));
            }
            Label1.Text = "Category added sucessfully";
        }
        else
        {
            Label1.Text = "error";
        }
    }
}
   