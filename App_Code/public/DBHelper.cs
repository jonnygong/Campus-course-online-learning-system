using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.OleDb;

/// <summary>
///DBHelper 的摘要说明
/// </summary>
public class DBHelper
{
	public DBHelper()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    public static DataSet sqlMethod(string sql)
    {
        System.Web.HttpServerUtility Server = System.Web.HttpContext.Current.Server;
        OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" + Server.MapPath("~/database/lib_sql.mdb"));
        OleDbDataAdapter da = new OleDbDataAdapter(sql, conn);
        DataSet ds = new DataSet();
        conn.Open();
        da.Fill(ds);
        conn.Close();
        return ds;
    }

    public static int sqlMethodNoDataset(string sql)
    {
        System.Web.HttpServerUtility Server = System.Web.HttpContext.Current.Server;
        OleDbConnection conn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" + Server.MapPath("~/database/lib_sql.mdb"));
        conn.Open();
        OleDbCommand cmd = new OleDbCommand();
        cmd.Connection = conn;
        cmd.CommandText = sql;
        int result = cmd.ExecuteNonQuery();
        conn.Close();
        return result;
    }

}
