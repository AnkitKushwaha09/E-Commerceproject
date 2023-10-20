using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_detail_edit : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        int no = Convert.ToInt32(Request.QueryString["id"]);
        if (!IsPostBack)
        {
            getData(no);
        }
    }
    public void getData(int id)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from companydetails where id ='" + id + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        TextBox1.Text = dt.Rows[0][2].ToString();
        TextBox2.Text = dt.Rows[0][3].ToString();
        TextBox3.Text = dt.Rows[0][4].ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string imgpath = "";
            if (FileUpload1.PostedFile.FileName != "")
            {
                imgpath = string.Format("logo/{0}.jpg", TextBox1.Text);
            }
            int no = Convert.ToInt32(Request.QueryString["id"]);
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "update companydetails set address='" + TextBox1.Text + "',number='" + TextBox2.Text + "',comnumber='" + TextBox3.Text + "',logo='" + imgpath + "' where id='" + no + "'";
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data Updated Successfully...";
            if (FileUpload1.PostedFile.FileName != "")
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath(imgpath));
            }
            Response.Redirect("Admin-ContactUS.aspx");
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
        finally
        {
            Console.Write("Re-try with a different number.");
        }
    }
}