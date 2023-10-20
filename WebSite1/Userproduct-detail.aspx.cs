using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Userproduct_detail : System.Web.UI.Page
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
        Literal15.Text = dt.Rows[0][12].ToString();
        Literal16.Text = dt.Rows[0][13].ToString();
        Literal17.Text = dt.Rows[0][14].ToString();
        Literal18.Text = dt.Rows[0][15].ToString();
        HiddenField1.Value = dt.Rows[0][0].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["number"] == null || Session["number"].ToString() == "")
        {

            Session["id"] = Request.QueryString["id"].ToString();
            Response.Redirect("User-login-cart.aspx");
        }
        else
        {
             try
                {
                    string dt = System.DateTime.Now.ToString("dd-MM-yyyy hh:mm:SS tt");
                    string productId = HiddenField1.Value;
                    string number = Session["number"].ToString();
                    string productname = Literal1.Text;
                    string productimg = Literal7.Text;
                    string prices = Literal3.Text;
                    string query = "insert into wishlist(productId,number,productname,productimg,prices,dt) values(@productID,@number,@productname,@productimg,@prices,@dt)";
                    cmd.Connection = con;
                    con.Open();
                    cmd.CommandText = query;
                    cmd.Parameters.AddWithValue("@productID", productId);
                    cmd.Parameters.AddWithValue("@number", number);
                    cmd.Parameters.AddWithValue("@productname", productname);
                    cmd.Parameters.AddWithValue("@productimg", productimg);
                    cmd.Parameters.AddWithValue("@prices", prices);
                    cmd.Parameters.AddWithValue("@dt", dt);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Redirect("User-wishlist.aspx"); 
                }
                catch(Exception ex)
                {
                    Label1.Visible = true;
                    Label1.Text = ex.Message;
                }
        }
    }
}