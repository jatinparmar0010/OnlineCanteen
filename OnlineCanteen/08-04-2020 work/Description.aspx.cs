using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

public partial class Description : System.Web.UI.Page
{
    public static MySqlConnection conn = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        int fid = int.Parse(Request.QueryString["id"].ToString());
        Connection_String connect = new Connection_String();
        conn = connect.Connect_Database();
        try
        {
            string sql = "SELECT fname,fdesc,fprice,imgpath FROM item WHERE fid=" + fid + "";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            MySqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                Label1.Text = rdr[0].ToString();
                Label2.Text = rdr[1].ToString();
                Label3.Text = rdr[2].ToString();
                Image1.ImageUrl = rdr[3].ToString();
            }
            rdr.Close();

        }
        catch (Exception e1)
        {
            Label3.Text = e1.Message;
        }
        conn.Close();
    }
}