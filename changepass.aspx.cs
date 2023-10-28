using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class changepass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn;
        SqlCommand comm;
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "update signup set password=@newpass where email=@uname and password=@pass";
        comm = new SqlCommand(q, conn);
        comm.Parameters.AddWithValue("@newpass", TextBox2.Text);
        comm.Parameters.AddWithValue("@uname", Session["uname"].ToString());
        comm.Parameters.AddWithValue("@pass", TextBox1.Text);
        conn.Open();
        int count = comm.ExecuteNonQuery();
        conn.Close();
        if(count==1)
        {
            Label1.Text = "Password changed successfully";
        }
        else
        {
            Label1.Text = "Current Password Incorrect";
        }
    }
}