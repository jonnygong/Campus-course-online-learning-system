<%@ WebHandler Language="C#" Class="add_lesson_video" %>

using System;
using System.Web;
using System.Data.OleDb;
using System.Data;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web.Security;
using System.Xml.Linq;
using System.Web.Script.Serialization;
using System.Text;
using System.IO;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters.Binary;

public class add_lesson_video : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        //指定接收数据的类型
        context.Response.ContentType = "application/json";
        //接收数据
        string video_name = context.Request["video_name"];
        string video_intro = context.Request["video_intro"];
        string id = context.Request["id"];
        //准备回送的字符串
        string outstr = "";

        //执行写入操作
        outstr = addVideo(video_name, video_intro,id);

        //回送结果
        context.Response.Write(outstr);
    }


    public string addVideo(string video_name, string video_intro,string id)
    {
        //执行插入操作，并获得影响的行数
        int i = DBHelper.sqlMethodNoDataset("insert into t_resource (resource_name,resource_description,resource_lesson) values ('" + video_name + "','" + video_intro + "','" + id + "')");

        StringBuilder Builder = new StringBuilder();
        Builder.Append("{");
        Builder.Append("\"r\":" + i + "");
        Builder.Append("}");
        return Builder.ToString();
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}