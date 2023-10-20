using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Cart2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        int no = Convert.ToInt32(Request.QueryString["id"]);
        getData(no);
        getDataa(no);
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new System.Data.DataColumn[] { 
            new System.Data.DataColumn("productiD", typeof(int)),
            new System.Data.DataColumn("productname", typeof(string)),
            new System.Data.DataColumn("prices",typeof(int)) });
        }
        if (Session["number"] == null || Session["number"].ToString() == "")
        {

            Session["number"] = Request.QueryString["number"].ToString();
        }
        else
        {
            Literal1.Text = Session["number"].ToString();
        }
    }
    public void getData(int id)
    {
        SqlDataAdapter da = new SqlDataAdapter("select productname, productimg,prices from wishlist where orderID ='" + id + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        myGridView.DataSource = dt;
        myGridView.DataBind();
    }
    public void getDataa(int id)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from wishlist where orderID ='" + id + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        HiddenField1.Value = dt.Rows[0][0].ToString();
        HiddenField2.Value = dt.Rows[0][1].ToString();
        HiddenField3.Value = dt.Rows[0][3].ToString();
        HiddenField4.Value = dt.Rows[0][5].ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            string dt = System.DateTime.Now.ToString("dd-MM-yyyy hh:mm:SS tt");
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "insert into orderlist(orderID,productID,number,productname,prices,totalprices,dt) values('" + HiddenField1.Value + "','" + HiddenField2.Value + "','" + Session["number"].ToString() + "','" + HiddenField3.Value + "','" + HiddenField4.Value + "','" + lblSumTotal.Text + "','" + dt + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("User-checkout.aspx?id="+HiddenField1.Value);
        }
        catch (Exception ex)
        {
            Label1.Visible = true;
            Label1.Text = ex.Message;
        }
    }
}