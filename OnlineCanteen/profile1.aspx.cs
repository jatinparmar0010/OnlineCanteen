using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

public partial class profile1 : System.Web.UI.Page
{
    public static MySqlConnection con = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = (string)Session["username"];
        TextBox3.Text = (string)Session["mobile"];
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string email = (string)Session["username"];
        string name = TextBox2.Text;
        int cabin = int.Parse(TextBox1.Text);
        long mobile = long.Parse(TextBox3.Text);
        Connection_String connect = new Connection_String();
        con = connect.Connect_Database();
        try
        {
            string sql = "update profile set name='" + name + "',cabin=" + cabin + ",mobile=" + mobile + " where email='" + email + "'";
            MySqlCommand cmd = new MySqlCommand(sql, con);
            int status = cmd.ExecuteNonQuery();
            if (status == 1)
                Label3.Text = "Update SuccessFul";
            else
                Label3.Text = "Update Failed";
        }
        catch (Exception e1)
        {
            Label3.Text = e1.Message;
        }
        con.Close();
        Session["mobile"] = null;
    }
}