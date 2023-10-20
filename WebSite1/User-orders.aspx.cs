using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_orders : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Payne;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        int no = Convert.ToInt32(Request.QueryString["number"]);
        rptFill(no);
        if (Session["number"] == null || Session["number"].ToString() == "")
        {

            Session["number"] = Request.QueryString["number"].ToString();
        }
    }
    public void rptFill(int no)
    {
        SqlDataAdapter da = new SqlDataAdapter("select number,orderID,productID, productname,prices from wishlist where number ='" + Session["number"] + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    } 
}