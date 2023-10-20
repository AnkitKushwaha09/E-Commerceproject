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

public partial class User_index : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Payne;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        rptFill();
        SqlDataAdapter da = new SqlDataAdapter("select * from Userindexdetails", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Literal1.Text = dt.Rows[6][1].ToString();
        Literal2.Text = dt.Rows[6][2].ToString();
        Literal3.Text = dt.Rows[6][3].ToString();
        Literal4.Text = dt.Rows[6][4].ToString();
        Literal5.Text = dt.Rows[7][1].ToString();
        Literal6.Text = dt.Rows[7][2].ToString();
        Literal7.Text = dt.Rows[7][3].ToString();
        Literal8.Text = dt.Rows[7][4].ToString();
        Literal9.Text = dt.Rows[8][1].ToString();
        Literal10.Text = dt.Rows[8][2].ToString();
        Literal11.Text = dt.Rows[8][3].ToString();
        Literal12.Text = dt.Rows[9][1].ToString();
        Literal13.Text = dt.Rows[9][2].ToString();
        Literal14.Text = dt.Rows[9][3].ToString();
        Literal15.Text = dt.Rows[1][6].ToString();
        Literal16.Text = dt.Rows[1][7].ToString();
        Literal17.Text = dt.Rows[1][8].ToString();
        Literal18.Text = dt.Rows[1][6].ToString();
        Literal19.Text = dt.Rows[1][7].ToString();
        Literal20.Text = dt.Rows[1][8].ToString();
        Literal21.Text = dt.Rows[1][1].ToString();
        Literal22.Text = dt.Rows[1][5].ToString();
        Literal23.Text = dt.Rows[1][2].ToString();
        Literal24.Text = dt.Rows[1][3].ToString();
        Literal25.Text = dt.Rows[1][4].ToString();
        Literal26.Text = dt.Rows[2][1].ToString();
        Literal27.Text = dt.Rows[2][2].ToString();
        Literal28.Text = dt.Rows[2][3].ToString();
        Literal29.Text = dt.Rows[2][4].ToString();
        Literal30.Text = dt.Rows[3][1].ToString();
        Literal31.Text = dt.Rows[3][2].ToString();
        Literal32.Text = dt.Rows[3][3].ToString();
        Literal33.Text = dt.Rows[3][4].ToString();
    }
    public void rptFill()
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from MainCategory", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    } 
}