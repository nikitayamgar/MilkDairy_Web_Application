//Contains common set of methods that allow database communication
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.IO;
/// <summary>
/// Summary description for DBClass
/// </summary>
public class DBClass
{
    public SqlConnection cn;
	public DBClass()
	{
        
	}
    public void Connect()
    {
        cn = new SqlConnection();
        cn.ConnectionString = WebConfigurationManager.ConnectionStrings["ConStr"].ConnectionString;
        cn.Open();
    }
    public void Close()
    {
        cn.Close();
    }

    public DataTable GetTable(String sql)
    {
        Connect();
        SqlDataAdapter da = new SqlDataAdapter(sql, cn);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Close();
        return dt;
    }
    

    public void ExecuteCommand(String sql)
    {
        Connect();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sql;
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        Close();

    }
    public String ReturnId(String sql)
    {
        Connect();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sql;
        cmd.Connection = cn;
        String id = cmd.ExecuteScalar().ToString();
        Close();
        return id;
    }

}