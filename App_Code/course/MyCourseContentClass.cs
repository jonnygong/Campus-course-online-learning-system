using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///course_contentClass 的摘要说明
/// </summary>
public class MyCourseContentClass
{
    public string imgurl;
    public string name;
    public string profession;
    public string teather;
    public int visitNum;

	public MyCourseContentClass()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    public MyCourseContentClass(string x, string y, string z, string k, int n)
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
