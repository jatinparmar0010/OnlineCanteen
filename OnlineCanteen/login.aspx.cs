using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Text;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string emailid = TextBox1.Text;
        string decrpassword = "";
        string email1 = "";
        string pass;
        string connStr = "server=localhost;user=root;database=website1;port=3306;password=root";
        MySqlConnection conn = new MySqlConnection(connStr);

        try
        {
            conn.Open();
            string sql = "SELECT email,password FROM signup WHERE email='" + emailid + "'";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            MySqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                email1 = rdr[0].ToString();
                decrpassword = rdr[1].ToString();
            }

            rdr.Close();
            pass = Decryptdata(decrpassword);
            if (emailid == email1 && pass == TextBox2.Text)
            {
                Session["username"] = email1;
                Response.Redirect("");
            }
            else
            {
                Label3.Text = "Login Unsuccessfull";
            }
        }
        catch (Exception e1)
        {
            Label3.Text = e1.Message;
        }
        conn.Close();

    }
    private string Decryptdata(string decryptPwd)
    {
        string decryptpwd = string.Empty;
        UTF8Encoding encodepwd = new UTF8Encoding();
        Decoder Decode = encodepwd.GetDecoder();
        byte[] todecode_byte = Convert.FromBase64String(decryptPwd);
        int charCount = Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
        char[] decoded_char = new char[charCount];
        Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
        decryptpwd = new String(decoded_char);
        return decryptpwd;
    }
}