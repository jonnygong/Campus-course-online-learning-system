using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// TeaIndexLesson 的摘要说明
/// </summary>
public class TeaIndexLesson
{
    public int courseid;
    public string coursename;
    public string introduction;
    public int score;
    public int time;
    public string imgurl;
    public string teaname;

    public int teaid;
    public int teanumber;
    public string teaimg;
 


	public TeaIndexLesson()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public TeaIndexLesson(int courseid, string coursename, string introduction, int score, int time, string imgurl, string teaname, int teaid, int teanumber, string teaimg)
    {
        this.courseid = courseid;
        this.coursename = coursename;
        this.introduction = introduction;
        this.score = score;
        this.time = time;
        this.imgurl = imgurl;
        this.teaname = teaname;

        this.teaid = teaid;
        this.teanumber = teanumber;
        this.teaimg = teaimg;

    }
    public int getCourseId()
    {
        return this.courseid;
    }
    public string getCourseName()
    {
        return this.coursename;
    }
    public string getIntro()
    {
        return this.introduction;
    }
    public int getScore()
    {
        return this.score;
    }
    public int getTime()
    {
        return this.time;
    }
    public string getImgurl()
    {
        return this.imgurl;
    }
    public string getTeaName()
    {
        return this.teaname;
    }

    public int getTeaId()
    {
        return this.teaid;
    }
    public int getTeaNumber()
    {
        return this.teanumber;
    }
    public string getTeaImg()
    {
        return this.teaimg;
    }
    
}