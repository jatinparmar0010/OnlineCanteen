using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

public partial class Cart : System.Web.UI.Page
{
    public static MySqlConnection conn = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)
        {
            DataTable dt = new DataTable();
            DataRow dr;
            dt.Columns.Add("sno");
            dt.Columns.Add("fid");
            dt.Columns.Add("fname");
            dt.Columns.Add("quantity");
            dt.Columns.Add("fprice");
            dt.Columns.Add("totalprice");
            if (Request.QueryString["id"] != null)
            {
                if (Session["Buyitems"] == null)
                {
                    dr = dt.NewRow();
                    Connection_String connect = new Connection_String();
                    conn = connect.Connect_Database();
                    String myquery = "select * from item where fid=" + Request.QueryString["id"];
                    MySqlCommand cmd = new MySqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = conn;
                    MySqlDataAdapter da = new MySqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = 1;
                    dr["fid"] = ds.Tables[0].Rows[0]["fid"].ToString();
                    dr["fname"] = ds.Tables[0].Rows[0]["fname"].ToString();
                    dr["quantity"] = 1;
                    dr["fprice"] = ds.Tables[0].Rows[0]["fprice"].ToString();
                    int price = Convert.ToInt16(ds.Tables[0].Rows[0]["fprice"].ToString());
                    int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                    int totalprice = price * quantity;
                    dr["totalprice"] = totalprice;
                    int f_id1 = Convert.ToInt16(ds.Tables[0].Rows[0]["fid"].ToString());
                    savecartdetail(f_id1,quantity);
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["Buyitems"] = dt;
                    GridView1.FooterRow.Cells[4].Text = "Total Amount";
                    GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();
                    Response.Redirect("Cart.aspx");
                }
                else
                {

                    dt = (DataTable)Session["Buyitems"];
                    int sr;
                    sr = dt.Rows.Count;
                    dr = dt.NewRow();
                    Connection_String connect = new Connection_String();
                    conn = connect.Connect_Database();

                    String myquery = "select * from item where fid=" + Request.QueryString["id"];
                    MySqlCommand cmd = new MySqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = conn;
                    MySqlDataAdapter da = new MySqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dr["sno"] = sr + 1;
                    dr["fid"] = ds.Tables[0].Rows[0]["fid"].ToString();
                    dr["fname"] = ds.Tables[0].Rows[0]["fname"].ToString();
                    dr["quantity"] = Request.QueryString["quantity"];
                    dr["fprice"] = ds.Tables[0].Rows[0]["fprice"].ToString();
                    int price = Convert.ToInt16(ds.Tables[0].Rows[0]["fprice"].ToString());
                    int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                    int totalprice = price * quantity;
                    dr["totalprice"] = totalprice;
                    int f_id1 = Convert.ToInt16(ds.Tables[0].Rows[0]["fid"].ToString());
                    savecartdetail(f_id1,quantity);
                    dt.Rows.Add(dr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();

                    Session["Buyitems"] = dt;
                    GridView1.FooterRow.Cells[4].Text = "Total Amount";
                    GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();
                    Response.Redirect("Cart.aspx");

                }
            }
            else
            {
                dt = (DataTable)Session["Buyitems"];
                GridView1.DataSource = dt;
                GridView1.DataBind();
                if (GridView1.Rows.Count > 0)
                {
                    GridView1.FooterRow.Cells[4].Text = "Total Amount";
                    GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();

                }


            }

        }
    }
    public int grandtotal()
    {
        DataTable dt = new DataTable();
        dt = (DataTable)Session["Buyitems"];
        int nrow = dt.Rows.Count;
        int i = 0;
        int gtotal = 0;
        while (i < nrow)
        {
            gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

            i = i + 1;
        }
        return gtotal;
    }
    private void savecartdetail(int f_id1,int quantity)
    {
        String query = "insert into cart(email,fid,quantity) values('" + Session["username"].ToString() + "'," + f_id1 + "," +quantity +")";
        Connection_String connect = new Connection_String();
        conn = connect.Connect_Database();
        MySqlCommand cmd = new MySqlCommand();
        cmd.CommandText = query;
        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
        DataTable dt = new DataTable();
        dt = (DataTable)Session["buyitems"];


        for (int i = 0; i <= dt.Rows.Count - 1; i++)
        {
            int sr;
            int sr1;
            string qdata;
            string dtdata;
            int id;
            sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
            id = Convert.ToInt32(dt.Rows[i]["fid"].ToString());
            TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
            qdata = cell.Text;
            dtdata = sr.ToString();
            sr1 = Convert.ToInt32(qdata);

            if (sr == sr1)
            {
                Connection_String connect = new Connection_String();
                conn=connect.Connect_Database();
                String updatedata1 = "delete from cart where fid=" + id + "";
                MySqlCommand cmd = new MySqlCommand();
                cmd.CommandText = updatedata1;
                cmd.Connection = conn;
                cmd.ExecuteNonQuery();
                dt.Rows[i].Delete();
                dt.AcceptChanges();
                //Label1.Text = "Item Has Been Deleted From Shopping Cart";
                break;

            }
        }

        for (int i = 1; i <= dt.Rows.Count; i++)
        {
            dt.Rows[i - 1]["sno"] = i;
            dt.AcceptChanges();
        }

        Session["buyitems"] = dt;
        Response.Redirect("Cart.aspx");
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("modify.aspx?sno=" + GridView1.SelectedRow.Cells[0].Text);
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Response.Redirect("placeorder.aspx");
    }
    private void clearsavedcart()
    {
        Connection_String connect = new Connection_String();
        conn = connect.Connect_Database();
        String updatedata = "delete from cart where email='" + Session["username"].ToString() + "'";
        MySqlCommand cmd = new MySqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
        Response.Redirect("Cart.aspx");
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Session["Buyitems"] = null;
        clearsavedcart();
    }
}