using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Text;

public partial class signup : System.Web.UI.Page
{
    public static MySqlConnection con = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string emailid = TextBox1.Text;
        string password = Encryptdata(TextBox2.Text);
        long mobile = long.Parse(TextBox3.Text);
        string gender = "";
        bool isChecked = RadioButton1.Checked;
        if (isChecked)
            gender = RadioButton1.Text;
        else
            gender = RadioButton2.Text;

        Connection_String connect = new Connection_String();
        con = connect.Connect_Database();
        try
        {
            string sql = "INSERT INTO signup (email, password, mobile,gender) VALUES ('" + emailid + "','" + password + "'," + mobile + ",'" + gender + "')";
            MySqlCommand cmd = new MySqlCommand(sql, con);
            int status = cmd.ExecuteNonQuery();
            if (status == 1)
                Label3.Text = "Sign Up SuccessFul";
            else
                Label3.Text = "Sign Up Failed";

            string sql1 = "INSERT INTO profile (email,mobile) VALUES ('" + emailid + "'," + mobile + ")";
            MySqlCommand cmd1 = new MySqlCommand(sql1, con);
            cmd1.ExecuteNonQuery();
        }
        catch (Exception e1)
        {
            Label3.Text = e1.Message;
        }
        con.Close();
    }
    private string Encryptdata(string password)
    {
        string strmsg = string.Empty;
        byte[] encode = new byte[password.Length];
        encode = Encoding.UTF8.GetBytes(password);
        strmsg = Convert.ToBase64String(encode);
        return strmsg;
    }
}