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

public partial class UserMasterPage : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["number"] == null || Session["number"].ToString() == "")
        {
            LinkButton1.Text = "Login";
        }
        else
        {
            LinkButton1.Text = "Logout";
           
        }
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
        Literal10.Text = dt.Rows[2][4].ToString();
        Literal11.Text = dt.Rows[1][4].ToString();
        Literal12.Text = dt.Rows[0][5].ToString();
        Literal13.Text = dt.Rows[0][2].ToString();
        Literal14.Text = dt.Rows[0][3].ToString();
        Literal15.Text = dt.Rows[0][4].ToString();
        Literal16.Text = dt.Rows[0][5].ToString();
        Literal17.Text = dt.Rows[0][5].ToString();
 
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (LinkButton1.Text=="Login")
        {
            Response.Redirect("User-login.aspx");
        }
        else if (LinkButton1.Text == "Logout")
        {
           Session.Abandon();
           Session["nm"] = null;
           Session["usrnm"] = null;
           Response.Redirect("User-index.aspx");
        }
    }
}
