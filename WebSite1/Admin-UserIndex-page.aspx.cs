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

public partial class Admin_UserIndex_page : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["LocalSqlServer"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string datetime = System.DateTime.Now.ToString("dd-MM-yyyy hh:mm:SS tt");
        string imgpath = "";
        if (FileUpload1.PostedFile.FileName != "")
        {
            imgpath = string.Format("Userindeximg/{0}Slider-1.png", imgpath);
        }
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "insert into Userindexdetails(d1,d2,d3,d4,d9) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + imgpath + "','" + datetime + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        if (FileUpload1.PostedFile.FileName != "")
        {
            FileUpload1.PostedFile.SaveAs(Server.MapPath(imgpath));
        }
        crll();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string datetime = System.DateTime.Now.ToString("dd-MM-yyyy hh:mm:SS tt");
        string imgpath = "";
        if (FileUpload2.PostedFile.FileName != "")
        {
            imgpath = string.Format("Userindeximg/{0}Slider-2.png", imgpath);
        }
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "insert into Userindexdetails(d1,d2,d3,d4,d9) values('" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + imgpath + "','" + datetime + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        if (FileUpload2.PostedFile.FileName != "")
        {
            FileUpload2.PostedFile.SaveAs(Server.MapPath(imgpath));
        }
        crll();
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        string datetime = System.DateTime.Now.ToString("dd-MM-yyyy hh:mm:SS tt");
        string imgpath = "";
        if (FileUpload3.PostedFile.FileName != "")
        {
            imgpath = string.Format("Userindeximg/{0}FPA-1.png", imgpath);
        }
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "insert into Userindexdetails(d1,d2,d3,d9) values('" + TextBox7.Text + "','" + TextBox8.Text + "','" + imgpath + "','" + datetime + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        if (FileUpload3.PostedFile.FileName != "")
        {
            FileUpload3.PostedFile.SaveAs(Server.MapPath(imgpath));
        }
        crll();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string datetime = System.DateTime.Now.ToString("dd-MM-yyyy hh:mm:SS tt");
        string imgpath = "";
        if (FileUpload4.PostedFile.FileName != "")
        {
            imgpath = string.Format("Userindeximg/{0}FPA-2.png", imgpath);
        }
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "insert into Userindexdetails(d1,d2,d3,d9) values('" + TextBox9.Text + "','" + TextBox10.Text + "','" + imgpath + "','" + datetime + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        if (FileUpload4.PostedFile.FileName != "")
        {
            FileUpload4.PostedFile.SaveAs(Server.MapPath(imgpath));
        }
        crll();
    }
    protected void Button5_Click1(object sender, EventArgs e)
    {
         try
        {
            if (FileUpload5.HasFiles)
            {
                List<string> list = new List<string>();
                foreach (HttpPostedFile postedfile in FileUpload5.PostedFiles)
                {
                    string filepath = Path.GetFileName(postedfile.FileName);
                    list.Add(Path.GetFileName(postedfile.FileName));
                    postedfile.SaveAs(Server.MapPath("~/Userindeximg/") + filepath);
                }
                string a, b, c = "";
                a = list[0];
                b = list[1];
                c = list[2];
                string d1 = TextBox11.Text;
                string d2 = TextBox12.Text;
                string d3 = TextBox13.Text;
                string d4 = TextBox14.Text;
                string d5 = TextBox15.Text;
                string query = "insert into Userindexdetails(d1,d2,d3,d4,d5,d6,d7,d8,d9) values(@d1,@d2,@d3,@d4,@d5,@d6,@d7,@d8,@d9)";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                cmd.Parameters.AddWithValue("@d1", d1);
                cmd.Parameters.AddWithValue("@d2", d2);
                cmd.Parameters.AddWithValue("@d3", d3);
                cmd.Parameters.AddWithValue("@d4", d4);
                cmd.Parameters.AddWithValue("@d5", d5);
                cmd.Parameters.AddWithValue("@d6", list[0]);
                cmd.Parameters.AddWithValue("@d7", list[1]);
                cmd.Parameters.AddWithValue("@d8", list[2]);
                cmd.Parameters.AddWithValue("@d9", DateTime.Now.ToString("dd/MM/yyyy"));
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Text = string.Format("{0} files have been uploaded successfully.", FileUpload5.PostedFiles.Count);
                crll();
            }

        }
        catch (Exception ex)
        {
            Label1.Visible = true;
            Label1.Text = ex.Message;
        }
        //string datetime = System.DateTime.Now.ToString("dd-MM-yyyy hh:mm:SS tt");
        //string imgpath = "";
        //if (FileUpload5.PostedFile.FileName != "")
        //{
        //    imgpath = string.Format("Userindeximg/{0}CPA.png", imgpath);
        //}
        //cmd.Connection = con;
        //con.Open();
        //cmd.CommandText = "insert into Userindexdetails(d1,d2,d3,d4,d5,d6,d9) values('" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "','" + imgpath + "','" + datetime + "')";
        //cmd.ExecuteNonQuery();
        //con.Close();
        //if (FileUpload5.PostedFile.FileName != "")
        //{
        //    FileUpload5.PostedFile.SaveAs(Server.MapPath(imgpath));
        //}
        //crll();
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        string datetime = System.DateTime.Now.ToString("dd-MM-yyyy hh:mm:SS tt");
        string imgpath = "";
        if (FileUpload6.PostedFile.FileName != "")
        {
            imgpath = string.Format("Userindeximg/{0}FPA-3.png", imgpath);
        }
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "insert into Userindexdetails(d1,d2,d3,d4,d9) values('" + TextBox16.Text + "','" + TextBox17.Text + "','" + TextBox18.Text + "','" + imgpath + "','" + datetime + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        if (FileUpload6.PostedFile.FileName != "")
        {
            FileUpload6.PostedFile.SaveAs(Server.MapPath(imgpath));
        }
        crll();
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        string datetime = System.DateTime.Now.ToString("dd-MM-yyyy hh:mm:SS tt");
        string imgpath = "";
        if (FileUpload7.PostedFile.FileName != "")
        {
            imgpath = string.Format("Userindeximg/{0}FPA-4.png", imgpath);
        }
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "insert into Userindexdetails(d1,d2,d3,d4,d9) values('" + TextBox19.Text + "','" + TextBox20.Text + "','" + TextBox21.Text + "','" + imgpath + "','" + datetime + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        if (FileUpload7.PostedFile.FileName != "")
        {
            FileUpload7.PostedFile.SaveAs(Server.MapPath(imgpath));
        }
        crll();
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
        TextBox11.Text = "";
        TextBox12.Text = "";
        TextBox13.Text = "";
        TextBox14.Text = "";
        TextBox15.Text = "";
        TextBox16.Text = "";
        TextBox17.Text = "";
        TextBox18.Text = "";
        TextBox19.Text = "";
        TextBox20.Text = "";
        TextBox21.Text = "";
        Label1.Text = "";
    }
}