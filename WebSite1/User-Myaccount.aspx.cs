using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class User_Myaccount : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {        
        if (Session["number"] == null || Session["number"].ToString() == "")
        {
            Response.Redirect("User-login.aspx");
        }
        int no = Convert.ToInt32(Request.QueryString["number"]);
        rptFill(no);
        rptFilll(no);
        if (Session["number"] == null || Session["number"].ToString() == "")
        {

            Session["number"] = Request.QueryString["number"].ToString();
        }
    }
    public void rptFill(int no)
    {
        SqlDataAdapter da = new SqlDataAdapter("select firstnm,lastnm from confirmorder where number ='" + Session["number"] + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Repeater1.DataSource = dt;
        Repeater1.DataBind();
    }
    public void rptFilll(int no)
    {
        SqlDataAdapter da = new SqlDataAdapter("select number,productID,productname,productprice from confirmorder where number ='" + Session["number"] + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Repeater2.DataSource = dt;
        Repeater2.DataBind();
    } 
}