using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class forget1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Text = "Your Email is " + Request.QueryString["emailadd"].ToString() + ", Kindly check your Mail Inbox for Activation Code";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string code1 = (string)Session["code"];
        string email = "";
        string code = TextBox2.Text;
        if (code == code1)
        {
            email = (string)Session["email"];
            Response.Redirect("recovery.aspx?emailadd=" + email);

        }
        else
            Label3.Text = "Code Do not match";
    }
}