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
///MyNav 的摘要说明
/// </summary>
public class MyNav
{
    public string nav_name;
    public string nav_url;
    public int nav_is_show;
    public int nav_order;

	public MyNav()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    public MyNav(string nav_name, string nav_url, int nav_is_show, int nav_order)
    {
        this.nav_name = nav_name;
        this.nav_url = nav_url;
        this.nav_is_show = nav_is_show;
        this.nav_order = nav_order;
    }

}
