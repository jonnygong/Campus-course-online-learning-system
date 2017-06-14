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
///MyLinks 的摘要说明
/// </summary>
public class MyLinks
{
    public string link_url;
    public string link_name;
	public MyLinks()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    public MyLinks(string link_url, string link_name)
    {
        this.link_url = link_url;
        this.link_name = link_name;
    }
}
