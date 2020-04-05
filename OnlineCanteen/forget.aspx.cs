using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Net.Mail;

public partial class forget : System.Web.UI.Page
{
    static string activationcode;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Random random = new Random();
        activationcode = random.Next(1001, 9999).ToString();
        Session["code"] = activationcode;
        string emailid = TextBox1.Text;
        Session["email"] = emailid;
        string email1 = "";
        string connStr = "server=localhost;user=root;database=website1;port=3306;password=root";
        MySqlConnection conn = new MySqlConnection(connStr);

        try
        {
            conn.Open();
            string sql = "SELECT email FROM signup WHERE email='" + emailid + "'";
            MySqlCommand cmd = new MySqlCommand(sql, conn);
            MySqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                email1 = rdr[0].ToString();
            }
            rdr.Close();
            if (emailid == email1)
            {
                sendcode();
                Response.Redirect("forget1.aspx?emailadd=" + emailid);
            }
            else
            {
                Label3.Text = "Email Address Not Found";
            }
        }
        catch (Exception e1)
        {
            Label3.Text = e1.Message;
        }
        conn.Close();

    }
    private void sendcode()
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("arbaaz08@somaiya.edu", "arbaaz96@123");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = "Activation Code for Password Recovery";
        msg.Body = "Dear " + TextBox1.Text + ", Your Activation Code is " + activationcode + "\n\n\n Thank You,\n Team KJSIM Canteen";
        string toaddress = TextBox1.Text;
        msg.To.Add(toaddress);
        string fromaddress = "KJSIM<kjsim@helpdesk.com>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);

        }
        catch
        {
            throw;
        }
    }
}