using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

/// <summary>
/// MySearchDoc 的摘要说明
/// </summary>
public class MySearchDoc
{
    public string resource_name;
    public string course_name;


	public MySearchDoc()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public MySearchDoc(string resource_name, string course_name)
    {
        this.resource_name = resource_name;
        this.course_name = course_name;
    }
}
