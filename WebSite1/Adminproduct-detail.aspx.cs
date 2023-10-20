using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Adminproduct_detail : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        int no = Convert.ToInt32(Request.QueryString["id"]);
        getData(no);
    }
    public void getData(int id)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from productlist where id ='" + id + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Literal1.Text = dt.Rows[0][1].ToString();
        Literal2.Text = dt.Rows[0][2].ToString();
        Literal3.Text = dt.Rows[0][3].ToString();
        Literal4.Text = dt.Rows[0][4].ToString();
        Literal5.Text = dt.Rows[0][5].ToString();
        Literal6.Text = dt.Rows[0][6].ToString();
        Literal7.Text = dt.Rows[0][7].ToString();
        Literal8.Text = dt.Rows[0][8].ToString();
        Literal9.Text = dt.Rows[0][9].ToString();
        Literal10.Text = dt.Rows[0][10].ToString();
        Literal11.Text = dt.Rows[0][7].ToString();
        Literal12.Text = dt.Rows[0][8].ToString();
        Literal13.Text = dt.Rows[0][9].ToString();
        Literal14.Text = dt.Rows[0][10].ToString();
    }
}