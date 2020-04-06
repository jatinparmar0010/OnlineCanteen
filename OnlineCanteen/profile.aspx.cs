using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

public partial class profile : System.Web.UI.Page
{
    public static MySqlConnection con = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Label2.Text = (string)Session["username"];
            Connection_String connect = new Connection_String();
            con = connect.Connect_Database();
            String str = "select * from profile where email='" + (string)Session["username"] + "';";
            MySqlCommand omd3 = new MySqlCommand(str, con);
            MySqlDataReader read = omd3.ExecuteReader();

            while (read.Read())
            {
                Label4.Text = read[1].ToString();
                Label5.Text = read[2].ToString();
                Label6.Text = read[3].ToString();
            }
            Session["mobile"] = Label6.Text;
            con.Close();
        }
        catch (Exception e1)
        {
            Label3.Text = e1.Message;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("profile1.aspx");
    }
}