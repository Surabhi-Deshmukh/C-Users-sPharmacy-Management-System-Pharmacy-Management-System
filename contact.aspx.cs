using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; using System.Configuration;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlConnection conn;//to connect with db
        SqlCommand comm;//to execute query
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
         String q1 = "insert into contact values(@name,@email,@phone,@query)";
         comm = new SqlCommand(q1, conn);
         comm.Parameters.AddWithValue("@name", TextBox1.Text);
         comm.Parameters.AddWithValue("@email", TextBox2.Text);
         comm.Parameters.AddWithValue("@phone", TextBox3.Text);
         comm.Parameters.AddWithValue("@query", TextBox4.Text);
        conn.Open();
            int res = comm.ExecuteNonQuery();
            conn.Close();
            if (res == 1)
            {

                Label2.Text = "Message Send Successfully";
        }
            else
            {
                Label2.Text="error";
    }
}
}