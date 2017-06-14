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
///MyMajor 的摘要说明
/// </summary>
public class MyMajor
{
    public string major_name;
    public string major_info;
    public int major_icon;

	public MyMajor()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    public MyMajor(string major_name, string major_info, int major_icon)
    {
        this.major_info = major_info;
        this.major_name = major_name;
        this.major_icon = major_icon;
    }
}
