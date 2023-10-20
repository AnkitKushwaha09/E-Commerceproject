using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.IO;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Collections.Generic;
using System.Text;

public partial class User_account_detail : System.Web.UI.Page
{
    string strConnString = ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString;
    string str = null;
    SqlCommand com;
    byte up; 
    protected void Page_Load(object sender, EventArgs e)
    {
        int no = Convert.ToInt32(Request.QueryString["number"]); 
        getData(no);
        if (Session["number"] == null || Session["number"].ToString() == "")
        {

            Session["number"] = Request.QueryString["number"].ToString();
        }
    }
    public void getData(int no)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter("select * from Confirmorder where number ='" + Session["number"] + "'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        TextBox1.Text = dt.Rows[0][1].ToString();
        TextBox2.Text = dt.Rows[0][2].ToString();
        TextBox3.Text = dt.Rows[0][9].ToString();
        TextBox4.Text = dt.Rows[0][10].ToString();
        TextBox5.Text = dt.Rows[0][3].ToString();
        TextBox6.Text = dt.Rows[0][4].ToString();
        TextBox7.Text = dt.Rows[0][5].ToString();
        TextBox8.Text = dt.Rows[0][6].ToString();
    }
      private string Encrypt(string clearText)
    {
        string encryptionKey = "MAKV2SPBNI99212";
        byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(encryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(clearBytes, 0, clearBytes.Length);
                    cs.Close();
                }
                clearText = Convert.ToBase64String(ms.ToArray());
            }
        }
        return clearText;
    }
    private string Decrypt(string cipherText)
    {
        string encryptionKey = "MAKV2SPBNI99212";
        byte[] cipherBytes = Convert.FromBase64String(cipherText);
        using (Aes encryptor = Aes.Create())
        {
            Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(encryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
            encryptor.Key = pdb.GetBytes(32);
            encryptor.IV = pdb.GetBytes(16);
            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(cipherBytes, 0, cipherBytes.Length);
                    cs.Close();
                }
                cipherText = Encoding.Unicode.GetString(ms.ToArray());
            }
        }
        return cipherText;
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        str = "select * from User_registration where number = '" + Session["number"].ToString() + "' ";
        com = new SqlCommand(str, con);
        SqlDataReader reader = com.ExecuteReader();
        while (reader.Read())
        {
            if (txt_cpassword.Text == this.Decrypt(reader["Password"].ToString()))
            {
                up = 1;
            }
        }
        reader.Close();
        con.Close();
        if (up == 1)
        {
            con.Open();
            str = "update User_registration set password=@password where number='" + Session["number"].ToString() + "'";
            com = new SqlCommand(str, con);
            com.Parameters.Add(new SqlParameter("@password", SqlDbType.VarChar, 50));
            com.Parameters["@password"].Value = this.Encrypt(txt_ccpassword.Text.Trim());
            com.ExecuteNonQuery();
            con.Close();
            lbl_msg.Text = "Password changed Successfully";
        }
        else
        {
            lbl_msg.Text = "Please enter correct Current password";
        }  
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        int no = Convert.ToInt32(Request.QueryString["number"]);
        if (Session["number"] == null || Session["number"].ToString() == "")
        {

            Session["number"] = Request.QueryString["number"].ToString();
        }
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "update confirmorder set firstnm='" + TextBox1.Text + "',lastnm='" + TextBox2.Text + "',phone='" + TextBox3.Text + "',emailaddress='" + TextBox4.Text + "' where number='" + Session["number"].ToString() + "'";
        cmd.ExecuteNonQuery();
        con.Close();
        Label2.Text = "Data Updated Successfully...";
        //Response.Redirect("Admin-ContactUS.aspx");
    }
}