using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Category_product : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Payne;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

        //int no = Convert.ToInt32(Request.QkueryString["categ"]);
        rptFill(Request.QueryString["categ"].ToString());
        rptFilll(Request.QueryString["categ"].ToString());
    }
    public void rptFill(string categ)
    {
        SqlDataAdapter da = new SqlDataAdapter("select id,name,prices,image1 from productlist where categ ='" + categ + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    }
    public void rptFilll(string categ)
    {
        SqlDataAdapter da = new SqlDataAdapter("select categ from productlist where categ ='" + categ + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Literal1.Text = dt.Rows[0][0].ToString();
        Literal2.Text = dt.Rows[0][0].ToString();
    }
}