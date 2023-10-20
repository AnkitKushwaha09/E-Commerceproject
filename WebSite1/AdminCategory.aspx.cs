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

public partial class AdminCategory : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            ddlfill();
        }
    }
    public void ddlfill()
    {
        SqlDataAdapter da = new SqlDataAdapter("select id,categ from MainCategory", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        DropDownList1.DataSource = dt;
        DropDownList1.DataTextField = "categ";
        DropDownList1.DataValueField = "id";
        DropDownList1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string datetime = System.DateTime.Now.ToString("dd-MM-yyyy hh:mm:SS tt");
        string imgpath = "";
        if (Fileupload1.PostedFile.FileName != "")
        {
            imgpath = string.Format("MainCategoryimg/{0}.jpg", TextBox1.Text);
        }
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "insert into MainCategory(categ,img,dt) values('" + TextBox1.Text + "','" + imgpath + "','"+datetime+"')";
        cmd.ExecuteNonQuery();
        con.Close();
        if (Fileupload1.PostedFile.FileName != "")
        {
            Fileupload1.PostedFile.SaveAs(Server.MapPath(imgpath));
        }
        Label1.Text = "Data Saved Succesfully....";
          crl();
          }
        public void crl()
        {
           TextBox1.Text = "";
           Label1.Text = "";
        }
    
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from MainCategory where id ='" + DropDownList1.SelectedValue.ToString() + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            TextBox2.Text = dt.Rows[0][0].ToString();
            TextBox3.Text = dt.Rows[0][1].ToString();

        }
        catch (Exception ex)
        {
            Label1.Text = "No Record Found...";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string datetime = System.DateTime.Now.ToString("dd-MM-yyyy hh:mm:SS tt");
        string imgpath = "";
        if (Fileupload2.PostedFile.FileName != "")
        {
            imgpath = string.Format("SubCategoryimg/{0}.jpg", TextBox3.Text);
        }
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "insert into SubCategory(name,img,dt) values('" + TextBox3.Text + "','" + imgpath + "','"+datetime+"')";
        cmd.ExecuteNonQuery();
        con.Close();
        if (Fileupload2.PostedFile.FileName != "")
        {
            Fileupload2.PostedFile.SaveAs(Server.MapPath(imgpath));
        }
        Label1.Text = "Data Saved Succesfully....";
        crll();
          }
    public void crll()
    {
        TextBox2.Text = "";
        TextBox3.Text = "";
        Label1.Text = "";
    }
}

