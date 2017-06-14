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
public class MySearch
{
    public string course_img_url;
    public string course_name;
    public string teacher_name;
    public string course_score;
    public string course_time;
    public string course_introduction;
    public int course_id;
    public int teacher_id;

	public MySearch()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}


    public MySearch(string course_img_url, string course_name, string teacher_name, string course_score, string course_time, string course_introduction, int course_id, int teacher_id)
    {
        this.course_img_url = course_img_url;
        this.course_name = course_name;
        this.teacher_name = teacher_name;      
        this.course_score = course_score;
        this.course_time = course_time;
        this.course_introduction = course_introduction;
        this.course_id = course_id;
        this.teacher_id = teacher_id;
        
    }

}
