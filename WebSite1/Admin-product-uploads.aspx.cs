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

public partial class Admin_product_uploads : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
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
    protected void Button_Click(object sender, EventArgs e)
    {
        try
        {
            if (FileUpload1.HasFiles)
            {
                List<string> list = new List<string>();
                foreach (HttpPostedFile postedfile in FileUpload1.PostedFiles)
                {
                    string filepath = Path.GetFileName(postedfile.FileName);
                    list.Add(Path.GetFileName(postedfile.FileName));
                    postedfile.SaveAs(Server.MapPath("~/Uploads/") + filepath);
                }
                string a, b, c, d = "";
                a = list[0];
                b = list[1];
                c = list[2];
                d = list[3];
                string name = TextBox1.Text;
                string descr = TextBox2.Text;
                string prices = TextBox3.Text;
                string size = TextBox4.Text;
                string quantity = TextBox5.Text;
                string categ = TextBox6.Text;
                string fulldescr = TextBox10.Text;
                string Weig = TextBox7.Text;
                string Dimensions = TextBox8.Text;
                string Color = TextBox9.Text;
                string query = "insert into productlist(name,descr,prices,size,quantity,categ,image1,image2,image3,image4,dt,fulldescr,Weig,Dimensions,Color) values(@name,@descr,@prices,@size,@Quantity,@categ,@image1,@image2,@image3,@image4,@dt,@fulldescr,@Weig,@Dimensions,@Color)";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@descr", descr);
                cmd.Parameters.AddWithValue("@prices", prices);
                cmd.Parameters.AddWithValue("@size", size);
                cmd.Parameters.AddWithValue("@quantity", quantity);
                cmd.Parameters.AddWithValue("@categ", categ);
                cmd.Parameters.AddWithValue("@fulldescr", fulldescr);
                cmd.Parameters.AddWithValue("@Weig", Weig);
                cmd.Parameters.AddWithValue("@Dimensions", Dimensions);
                cmd.Parameters.AddWithValue("@Color", Color);
                cmd.Parameters.AddWithValue("@image1", list[0]);
                cmd.Parameters.AddWithValue("@image2", list[1]);
                cmd.Parameters.AddWithValue("@image3", list[2]);
                cmd.Parameters.AddWithValue("@image4", list[3]);
                cmd.Parameters.AddWithValue("@dt", DateTime.Now.ToString("dd/MM/yyyy"));
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Text = string.Format("{0} files have been uploaded successfully.", FileUpload1.PostedFiles.Count);
                crll();
            }

        }
        catch (Exception ex)
        {
            Label1.Visible = true;
            Label1.Text = ex.Message;
        }
       
    }
    public void crll()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
        Label1.Text = "";
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from MainCategory where id ='" + DropDownList1.SelectedValue.ToString() + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            //TextBox2.Text = dt.Rows[0][0].ToString();
            TextBox6.Text = dt.Rows[0][1].ToString();

        }
        catch (Exception ex)
        {
            Label1.Text = "No Record Found...";
        }
    }
}