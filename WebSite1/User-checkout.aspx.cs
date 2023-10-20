using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_checkout : System.Web.UI.Page
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
        SqlDataAdapter da = new SqlDataAdapter("select * from orderlist where orderID ='" + id + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Literal1.Text = dt.Rows[0][4].ToString();
        Literal2.Text = dt.Rows[0][5].ToString();
        Literal3.Text = dt.Rows[0][6].ToString();
        Literal4.Text = dt.Rows[0][6].ToString();
        HiddenField1.Value = dt.Rows[0][2].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string dt = System.DateTime.Now.ToString("dd-MM-yyyy hh:mm:SS tt");
            string firstnm = TextBox1.Text;
            string lastnm = TextBox2.Text;
            string address = TextBox3.Text;
            string confirmaddress = TextBox10.Text;
            string landmark = TextBox4.Text;
            string pincode = TextBox5.Text;
            string city = TextBox6.Text;
            string state = TextBox7.Text;
            string phone = TextBox8.Text;
            string emailaddress = TextBox9.Text;
            string productID = HiddenField1.Value;
            string productname = Literal1.Text;
            string productprice = Literal2.Text;
            string subtotal = Literal4.Text;
            string number = Session["number"].ToString();
            string query = "insert into confirmorder(firstnm,lastnm,address,confirmaddress,landmark,pincode,city,state,phone,emailaddress,productID,productname,productprice,subtotal,number,dt) values(@firstnm,@lastnm,@address,@confirmaddress,@landmark,@pincode,@city,@state,@phone,@emailaddress,@productID,@productname,@productprice,@subtotal,@number,@dt)";
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = query;
            cmd.Parameters.AddWithValue("@firstnm", firstnm);
            cmd.Parameters.AddWithValue("@lastnm", lastnm);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@confirmaddress", confirmaddress);
            cmd.Parameters.AddWithValue("@landmark", landmark);
            cmd.Parameters.AddWithValue("@pincode", pincode);
            cmd.Parameters.AddWithValue("@city", city);
            cmd.Parameters.AddWithValue("@state", state);
            cmd.Parameters.AddWithValue("@phone", phone);
            cmd.Parameters.AddWithValue("@emailaddress", emailaddress);
            cmd.Parameters.AddWithValue("@productID", productID);
            cmd.Parameters.AddWithValue("@productname", productname);
            cmd.Parameters.AddWithValue("@productprice", productprice);
            cmd.Parameters.AddWithValue("@subtotal", subtotal);
            cmd.Parameters.AddWithValue("@number", number);
            cmd.Parameters.AddWithValue("@dt", dt);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("User-index.aspx");
        }
        catch (Exception ex)
        {
            Label1.Visible = true;
            Label1.Text = ex.Message;
        }
    }
}