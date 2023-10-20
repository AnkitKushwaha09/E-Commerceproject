using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Data;
using System.Net;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

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
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from user_registration where number =@number and Password=@password", con);
        cmd.Parameters.AddWithValue("@number", TextBox1.Text);
        cmd.Parameters.AddWithValue("@password", this.Encrypt(TextBox2.Text.Trim()));
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            Session["number"] = TextBox1.Text;
            string datetime = System.DateTime.Now.ToString("dd-MM-yyyy hh:mm:SS tt");
            string hostName = Dns.GetHostName();
            string myIP = Dns.GetHostByName(hostName).AddressList[0].ToString();
            cmd.Connection = con;
            con.Open();
            cmd.CommandText = "insert into user_login_details(name,password,ipaddress,dt) values('" + TextBox1.Text + "','" + this.Encrypt(TextBox2.Text.Trim()) + "','" + myIP + "','" + datetime + "')";
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("User-index.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid userid and password')</script>");
        }
    }
}