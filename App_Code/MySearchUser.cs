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
public class MySearchUser
{ 
    public string teacher_picUrl;
    public string teacher_name;
    public string teacher_degree;
    public int teacher_id;
    

	public MySearchUser()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}


    public MySearchUser(string teacher_picUrl, string teacher_name, string teacher_degree, int teacher_id)
    {

        this.teacher_picUrl = teacher_picUrl;
        this.teacher_name = teacher_name;
        this.teacher_degree = teacher_degree;
        this.teacher_id = teacher_id;
        
    }

}
