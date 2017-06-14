using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// TeaIndexQa 的摘要说明
/// </summary>
public class TeaIndexQa
{
    public int id;
    public int number;
    public string name;
    public int qaid;
    public string qauserid;
    public string qatitle;
    public string qacontent;
    public string teaimg;
	public TeaIndexQa()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public TeaIndexQa(int id, int number, string name, int qaid, string qauserid, string qatitle, string qacontent,string teaimg)
    {
        this.id = id;
        this.number = number;
        this.name = name;
        this.qaid = qaid;
        this.qauserid = qauserid;
        this.qatitle = qatitle;
        this.qacontent = qacontent;
        this.teaimg = teaimg;
    }
    public int getId()
    {
        return this.id;
    }
    public int getNumber()
    {
        return this.number;
    }
    public string getName()
    {
        return this.name;
    }
    public int getQaId()
    {
        return this.qaid;
    }
    public string getQaUserid()
    {
        return this.qauserid;
    }
    public string getQaTitle()
    {
        return this.qatitle;
    }
    public string getQaContent()
    {
        return this.qacontent;
    }
    public string getTeaimg()
    {
        return this.teaimg;
    }
}