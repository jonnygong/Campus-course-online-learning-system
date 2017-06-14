using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// LessonVideo 的摘要说明
/// </summary>
public class LessonVideo
{
    public int videoid;
    public string videoname;
    public string videourl;
    public int resourcelesson;
    public string resourceimg;
    public string resourcedesc;
    public int courseid;
	public LessonVideo()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public LessonVideo(int videoid, string videoname, string videourl, int resourcelesson, string resourceimg, string resourcedesc,int courseid)
    {
        this.videoid = videoid;
        this.videoname = videoname;
        this.videourl = videourl;
        this.resourcelesson = resourcelesson;
        this.resourceimg = resourceimg;
        this.resourcedesc = resourcedesc;
        this.courseid = courseid;
    }

    public int getVideoId()
    {
        return this.videoid;
    }
    public string getVideoName()
    {
        return this.videoname;
    }
    public string getVideoUrl()
    {
        return this.videourl;
    }
    public int getResourceLesson()
    {
        return this.resourcelesson;
    }
    public string getResourceImg()
    {
        return this.resourceimg;
    }
    public string getResourceDesc()
    {
        return this.resourcedesc;
    }
    public int getCourseId()
    {
        return this.courseid;
    }
}