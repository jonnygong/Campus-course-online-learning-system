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
/// MyUser 的摘要说明
/// </summary>
public class MyUser
{
    public string student_id;
    public string student_picUrl;
    public string student_name;
    public string class_name;
    public string major_name;

	public MyUser()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public MyUser(string student_id, string student_picUrl, string student_name, string class_name, string major_name)
    {
        this.student_id = student_id;
        this.student_name = student_name;
        this.class_name = class_name;
        this.student_picUrl = student_picUrl;
        this.major_name = major_name;
    }

}
