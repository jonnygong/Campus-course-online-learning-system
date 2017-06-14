<%@ WebHandler Language="C#" Class="change_detail" %>

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

public class change_detail : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        //指定接收数据的类型
        context.Response.ContentType = "application/json";
        //接收数据
        string id = context.Request["id"];
        
        string l_score = context.Request["l_score"];
        string l_time = context.Request["l_time"];
        string l_intro = context.Request["l_intro"];

        //准备回送的字符串
        string outstr = "";

        //执行写入操作
        outstr = updateLessonDetail(id, l_score, l_time, l_intro);

        //回送结果
        context.Response.Write(outstr);
    }


    public string updateLessonDetail(string id, string l_score, string l_time,string l_intro)
    {
        //执行插入操作，并获得影响的行数
        int i = DBHelper.sqlMethodNoDataset("update t_course set course_score ='" + l_score + "',course_time ='" + l_time + "',course_introduction='" + l_intro + "' where course_id = " + id);

        StringBuilder Builder = new StringBuilder();
        Builder.Append("{");
        Builder.Append("\"r\":" + i + "");
        Builder.Append("}");
        return Builder.ToString();
    }
    
    public bool IsReusable {
        get {
            return false;
        }
    }

}