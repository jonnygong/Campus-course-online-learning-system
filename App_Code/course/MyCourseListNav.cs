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
///MyClass 的摘要说明
/// </summary>
public class MyCourseListNav
{
    public string a;//专业名称
    public int id;//专业ID
    

	public MyCourseListNav()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    public MyCourseListNav(int y,string x)
    {
        this.id = y;
        this.a = x;
        
       
    }

    public string getA()
    {
        return this.a;
    }

    public int getId()
    {
        return this.id;
    }

   
}
