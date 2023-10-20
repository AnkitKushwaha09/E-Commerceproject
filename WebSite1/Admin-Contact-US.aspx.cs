using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Contact_US : System.Web.UI.Page
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
        TextBox1.Text = dt.Rows[0][2].ToString();
        TextBox2.Text = dt.Rows[0][3].ToString();
        TextBox3.Text = dt.Rows[0][4].ToString();
        HiddenField1.Value = dt.Rows[0][0].ToString();
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
        finally
        {
            Console.Write("Re-try with a different number.");
        }

    }
}