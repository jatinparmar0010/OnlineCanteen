using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using MySql.Data.MySqlClient;

/// <summary>
/// Summary description for Connection_String
/// </summary>
public class Connection_String
{
    public static MySqlConnection con = null;
    public MySqlConnection Connect_Database()
	{
        string constr = "server=localhost;user=root;database=website1;port=3306;password=root";
        con = new MySqlConnection(constr);
        con.Open();
        return con;
        
	}
}