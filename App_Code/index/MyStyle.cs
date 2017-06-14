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
///MyStyle 的摘要说明
/// </summary>
public class MyStyle
{
    public string teacher_name;
    public string teacher_degree;
    public string teacher_picUrl;
    public string teacher_intro;

	public MyStyle()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    public MyStyle(string teacher_picUrl, string teacher_name, string teacher_degree, string teacher_intro)
    {
        this.teacher_picUrl = teacher_picUrl;
        this.teacher_name = teacher_name;
        this.teacher_degree = teacher_degree;  
        this.teacher_intro = teacher_intro;
    }

}
