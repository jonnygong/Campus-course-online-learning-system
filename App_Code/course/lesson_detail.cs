using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// lesson_detail 的摘要说明
/// </summary>
public class Lesson_detail
{
    public int id;
    public string name;
    public string introduction;
    public int profession;
    public int time;
    public string imgurl;
    public string teaname;
    public string desc;
    public string teaimg;
    public string resourcedesc;


    public Lesson_detail()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    public Lesson_detail(int a , string b,string c,int d, int e,string f,string g,string h,string k,string m)
    {
        this.id = a;
        this.name = b;
        this.introduction = c;
        this.profession = d;
        this.time = e;
        this.imgurl = f;
        this.teaname = g;
        this.desc = h;
        this.teaimg = k;
        this.resourcedesc = m;

    }

    public int getId()
    {
        return this.id;
    }

    public string getName()
    {
        return this.name;
    }
    public string getIntroduction()
    {
        return this.introduction;
    }
    public int getProfession()
    {
        return this.profession;
    }
    public int getTime()
    {
        return this.time;
    }
    public string getImgurl()
    {
        return this.imgurl;
    }
    public string getTeaname()
    {
        return this.teaname;
    }
    public string getDescription()
    {
        return this.desc;
    }
    public string getTeaimg()
    {
        return this.teaimg;
    }
    public string getResourcedesc()
    {
        return this.resourcedesc;
    }



}

