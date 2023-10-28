using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient; using System.Configuration;
using System.IO;
public partial class detalis : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        SqlConnection conn;
        SqlCommand comm;
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        String q = "select catname,subname,brandname,mname,price,discount,addmedicine.image,description,stock from category,subcategory,addmedicine,addbrand where addmedicine.id=@id and addmedicine.catid=category.catid and addmedicine.subcatid=subcategory.subid and addmedicine.bid=addbrand.id";
        comm = new SqlCommand(q, conn);
        comm.Parameters.AddWithValue("@id", Request.QueryString["id"]);
        conn.Open();
        SqlDataReader myreader = comm.ExecuteReader();
        myreader.Read();
        Label1.Text = myreader["brandname"].ToString();
        Label2.Text = myreader["catname"].ToString();
        Label3.Text = myreader["subname"].ToString();
        Label4.Text = myreader["mname"].ToString();

        double rt, dis, disamt,remamt;
        rt= Convert.ToDouble(myreader["price"].ToString());
        dis = Convert.ToDouble(myreader["discount"].ToString());
        disamt = (dis * rt) / 100; ;
        remamt = rt - disamt;
        Label5.Text = remamt.ToString();
        Label10.Text = myreader["price"].ToString();
        Label11.Text = dis.ToString() + "% discount";
        //Label8.Text = myreader["stock"].ToString();
        Label9.Text = myreader["description"].ToString();
        Image1.ImageUrl = "images/" + myreader["image"].ToString();
        int stock = Convert.ToInt32(myreader["stock"].ToString());

        if(stock<=0)
        {
            Panel1.Visible = false;
            Label8.Text = "Out of Stock";
            Button4.Visible = false;
        }

        else if (stock>10)
        {
            for (int x = 1; x <= 10; x++)
            {
                DropDownList1.Items.Add(x.ToString());
            }
        }
        else
        {
            for (int x = 1; x <= stock; x++)
            {
                DropDownList1.Items.Add(x.ToString());
            }
        }

        conn.Close();
        myreader.Close();

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (Session["uname"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            double r, tc;
            int qt;
            r = Convert.ToDouble(Label5.Text);
            qt = Convert.ToInt32(DropDownList1.SelectedItem.Text);
            if (qt < 1)
            {
                Response.Write("<script>alert('Please fill quantity for book')</script>");
            }
            else
            {
                tc = r * qt;
                SqlConnection conn;
                SqlCommand comm;
                conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String q = "insert into addcart values(@image,@name,@Quantity,@price,@tc,@sessionid,@id)";
                comm = new SqlCommand(q, conn);
                comm.Parameters.AddWithValue("@image", Path.GetFileName(Image1.ImageUrl));
                comm.Parameters.AddWithValue("@name", Label4.Text);
                comm.Parameters.AddWithValue("@Quantity", DropDownList1.SelectedItem.Text);
                comm.Parameters.AddWithValue("@price", Label5.Text);
                comm.Parameters.AddWithValue("@tc", tc);
                comm.Parameters.AddWithValue("@r", r);
                comm.Parameters.AddWithValue("@qt", qt);
                comm.Parameters.AddWithValue("@Sessionid", Session.SessionID);
                comm.Parameters.AddWithValue("@id", Request.QueryString["id"]);
                conn.Open();
                int res = comm.ExecuteNonQuery();
                conn.Close();
                Session.Add("sid", Session.SessionID);
                Response.Redirect("discart.aspx");
            }
        }

    }
}