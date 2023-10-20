using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class User_Contact_US : System.Web.UI.Page
{ 
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from companydetails", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Literal2.Text = dt.Rows[2][2].ToString();
        Literal3.Text = dt.Rows[2][3].ToString();
        Literal4.Text = dt.Rows[2][4].ToString();
        Literal5.Text = dt.Rows[2][5].ToString();
        Literal6.Text = dt.Rows[1][2].ToString();
        Literal7.Text = dt.Rows[1][3].ToString();
        Literal8.Text = dt.Rows[1][4].ToString();
        Literal9.Text = dt.Rows[1][5].ToString();
        Literal10.Text = dt.Rows[0][2].ToString();
        Literal11.Text = dt.Rows[0][3].ToString();
        Literal12.Text = dt.Rows[0][4].ToString();
        Literal13.Text = dt.Rows[1][5].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string datetime = System.DateTime.Now.ToString("dd-MM-yyyy hh:mm:SS tt");
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "insert into enquiry(email,name,message,dt) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + datetime + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        crl();
    }
    public void crl()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
}