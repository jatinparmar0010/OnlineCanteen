using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Text;

public partial class recovery : System.Web.UI.Page
{
    public static MySqlConnection con = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Text = "Your Email is " + Request.QueryString["emailadd"].ToString() + ", Kindly Reset your Password.";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string password = TextBox1.Text;
        string confirm_password = TextBox2.Text;
        string hashPassword = "";
        if (password == confirm_password)
        {
            hashPassword = Encryptdata(password);
            string email = (string)Session["email"];
            Connection_String connect = new Connection_String();
            con = connect.Connect_Database();
            try
            {
                string sql = "UPDATE signup set password='" + hashPassword + "' where email='" + email + "'";
                MySqlCommand cmd = new MySqlCommand(sql, con);
                int status = cmd.ExecuteNonQuery();
                if (status == 1)
                    Label3.Text = "Password Reset Successfull";
                else
                    Label3.Text = "Reset Password Failed";
            }
            catch (Exception)
            {
                Label3.Text = "Error Occured";
            }
            con.Close();

        }
        else
            Label3.Text = "Password Didn't Match";
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