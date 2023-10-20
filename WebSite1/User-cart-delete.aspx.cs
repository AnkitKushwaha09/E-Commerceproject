using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_cart_delete : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Payne;Integrated Security=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        string no = Request.QueryString["id"].ToString();
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "delete from orderlist where productname='" + no + "'";
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("User__Cart.aspx");
    }
}