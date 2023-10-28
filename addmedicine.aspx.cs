using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; using System.Configuration;


public partial class addmedicine : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection conn;//to connect with db
        SqlCommand comm;//to execute query
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "insert into addmedicine values(@cid,@scid,@bid,@mname,@price,@dis,@description,@stock,@image)";
        comm = new SqlCommand(q, conn);
        comm.Parameters.AddWithValue("@cid",DropDownList1.SelectedValue);
        comm.Parameters.AddWithValue("@scid", DropDownList2.SelectedValue);
        comm.Parameters.AddWithValue("@bid", DropDownList3.SelectedValue);
        comm.Parameters.AddWithValue("@mname", TextBox1.Text);
        comm.Parameters.AddWithValue("@price",TextBox2.Text);
        comm.Parameters.AddWithValue("@dis", TextBox3.Text);
        comm.Parameters.AddWithValue("@description", TextBox4.Text);
        comm.Parameters.AddWithValue("@stock", TextBox5.Text);
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
            Label1.Text = "Added Successfully";
        }
        else
        {
            Label1.Text = "Error";
        }

    }
    }