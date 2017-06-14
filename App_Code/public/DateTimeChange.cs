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

/// <summary>
///DataTimeChange 的摘要说明
/// </summary>
public class DateTimeChange
{
    public static DateTime tempdt;
	public DateTimeChange()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    public static string toShortDate(string s)
    {
        tempdt = DateTime.Parse(s);
        return tempdt.ToShortDateString(); 
    }

    public static string toLongDate(string s)
    {
        tempdt = DateTime.Parse(s);
        return tempdt.ToLongDateString();
    }

    public static string toShortTime(string s)
    {
        tempdt = DateTime.Parse(s);
        return tempdt.ToShortTimeString();
    }

    public static string toLongTime(string s)
    {
        tempdt = DateTime.Parse(s);
        return tempdt.ToLongTimeString();
    }
}
