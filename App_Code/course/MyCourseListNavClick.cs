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
///MyCourseListNavClick 的摘要说明
/// </summary>
public class MyCourseListNavClick
{
    
    public string imgurl;
    public string name;
    public string profession;
    public string teather;
    public int visitNum;

	public MyCourseListNavClick()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    public MyCourseListNavClick( string x, string y, string z, string k, int n)
    {
        
        this.imgurl = x;
        this.name = y;
        this.profession = z;
        this.teather = k;
        this.visitNum = n;

    }
   

    public string getImaUrl()
    {
        return this.imgurl;
    }

    public string getName()
    {
        return this.name;
    }

    public string getProfession()
    {
        return this.profession;
    }

    public string getTeather()
    {
        return this.teather;
    }

    public int getVisitNum()
    {
        return this.visitNum;
    }


}
