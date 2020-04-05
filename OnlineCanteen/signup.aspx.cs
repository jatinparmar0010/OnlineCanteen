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
        //idhar mera password root hai tu tere hisab se change kar
        string connStr = "server=localhost;user=root;database=website1;port=3306;password=root";
        MySqlConnection conn = new MySqlConnection(connStr);

        try
        {
            conn.Open();

            string sql = "INSERT INTO signup (email, password, mobile,gender) VALUES ('" + emailid + "','" + password + "'," + mobile + ",'" + gender + "')";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            int status = cmd.ExecuteNonQuery();
            if (status == 1)
                Label3.Text = "Sign Up SuccessFul";
            else
                Label3.Text = "Sign Up Failed";
            //This will be required after some times
            /*
            string a = "------";
            string sql1 = "INSERT INTO profile (email, name, address,mobile) VALUES ('" + emailid + "','" + a + "','" + a + "'," + mobile + ")";
            MySqlCommand cmd1 = new MySqlCommand(sql1, conn);
            int status1 = cmd1.ExecuteNonQuery();
             */
        }
        catch (Exception e1)
        {
            Label3.Text = e1.Message;
        }
        conn.Close();
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