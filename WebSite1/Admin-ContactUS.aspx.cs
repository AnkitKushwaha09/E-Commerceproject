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

public partial class Admin_ContactUS : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from companydetails", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Literal1.Text = dt.Rows[0][2].ToString();
        Literal2.Text = dt.Rows[0][3].ToString();
        Literal3.Text = dt.Rows[0][4].ToString();
        Literal4.Text = dt.Rows[0][5].ToString();
        Literal5.Text = dt.Rows[1][2].ToString();
        Literal6.Text = dt.Rows[1][3].ToString();
        Literal7.Text = dt.Rows[1][4].ToString();
        Literal8.Text = dt.Rows[1][5].ToString();
        Literal9.Text = dt.Rows[2][2].ToString();
        Literal10.Text = dt.Rows[2][3].ToString();
        Literal11.Text = dt.Rows[2][4].ToString();
        Literal12.Text = dt.Rows[2][5].ToString();
        HiddenField1.Value = dt.Rows[0][0].ToString();
        HiddenField3.Value = dt.Rows[1][0].ToString();
        HiddenField2.Value = dt.Rows[2][0].ToString();
        TextBox1.Text = dt.Rows[0][2].ToString();
        TextBox2.Text = dt.Rows[0][3].ToString();
        TextBox3.Text = dt.Rows[0][4].ToString();
        TextBox4.Text = dt.Rows[2][2].ToString();
        TextBox5.Text = dt.Rows[2][3].ToString();
        TextBox6.Text = dt.Rows[2][4].ToString();
        TextBox7.Text = dt.Rows[2][5].ToString();
        TextBox8.Text = dt.Rows[1][2].ToString();
        TextBox9.Text = dt.Rows[1][3].ToString();
        TextBox10.Text = dt.Rows[1][4].ToString();
        TextBox11.Text = dt.Rows[1][5].ToString();
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
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "update companydetails set address='" + TextBox1.Text + "',number='" + TextBox2.Text + "',comnumber='" + TextBox3.Text + "',logo='" + imgpath + "' where id='" + HiddenField1.Value + "'";
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Data Updated Successfully...";
            if (FileUpload1.PostedFile.FileName != "")
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath(imgpath));
            }
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "update companydetails set address='" + TextBox4.Text + "',number='" + TextBox5.Text + "',comnumber='" + TextBox6.Text + "',logo='" + TextBox7.Text + "' where id='" + HiddenField2.Value + "'";
            cmd.ExecuteNonQuery();
            con.Close();
            Label3.Text = "Data Updated Successfully...";
        }
        catch (Exception ex)
        {
            Label3.Text = ex.Message;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "update companydetails set address='" + TextBox8.Text + "',number='" + TextBox9.Text + "',comnumber='" + TextBox10.Text + "',logo='" + TextBox11.Text + "' where id='" + HiddenField3.Value + "'";
            cmd.ExecuteNonQuery();
            con.Close();
            Label2.Text = "Data Updated Successfully...";
        }
        catch (Exception ex)
        {
            Label2.Text = ex.Message;
        }
    }
}
