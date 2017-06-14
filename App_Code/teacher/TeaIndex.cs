using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// TeaIndex 的摘要说明
/// </summary>
public class TeaIndex
{
    public int id;
    public int teaid;
    public string name;
    public string edu;
    public string imgurl;
    public string desc;

    public TeaIndex(int a , int b,string c,string d,string e,string f)
    {
        this.id = a;
        this.teaid = b;
        this.name = c;
        this.edu = d;
        this.imgurl = e;
        this.desc = f;
    }
	public TeaIndex()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}

    public int getId()
    {
        return this.id;
    }
    public int getTeaid()
    {
        return this.teaid;
    }
    public string getName()
    {
        return this.name;
    }
    public string getEdu()
    {
        return this.edu;
    }
    public string getImgurl()
    {
        return this.imgurl;
    }
    public string getDesc()
    {
        return this.desc;
    }

}