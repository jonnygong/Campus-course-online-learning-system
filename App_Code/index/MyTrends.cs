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
///MyTrends 的摘要说明
/// </summary>
public class MyTrends
{
    public string resource_url;
    public string course_name;

	public MyTrends()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    public MyTrends(string resource_url, string course_name)
    {
        this.resource_url = resource_url;
        this.course_name = course_name;
    }


}
