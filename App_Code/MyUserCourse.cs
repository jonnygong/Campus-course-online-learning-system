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
///MyUserCourse 的摘要说明
/// </summary>
public class MyUserCourse
{
    public string course_picUrl;
    public string course_name;
    public string course_teacherDegree;
    public string course_intro;

	public MyUserCourse()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    public MyUserCourse(string course_picUrl, string course_name, string course_teacherDegree, string course_intro)
    {
        this.course_picUrl = course_picUrl;
        this.course_name = course_name;
        this.course_teacherDegree = course_teacherDegree;
        this.course_intro = course_intro;
    }


}
