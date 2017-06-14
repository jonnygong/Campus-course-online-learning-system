<%@ WebHandler Language="C#" Class="change_information" %>

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

public class change_information : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        //指定接收数据的类型
        context.Response.ContentType = "application/json";
        //接收数据
        string id = context.Request["id"];

        string name = context.Request["name"];
        string sex = context.Request["sex"];
        string age = context.Request["age"];
        string email = context.Request["email"];
        string pwd = context.Request["pwd"];
        string edu = context.Request["edu"];
        string degree = context.Request["degree"];

        //准备回送的字符串
        string outstr = "";

        //执行写入操作
        outstr = updateInformation(id, name, sex, age,email,pwd,edu,degree);

        //回送结果
        context.Response.Write(outstr);
    }
    public string updateInformation(string id, string name, string sex, string age,string email,string pwd,string edu,string degree)
    {
        //执行插入操作，并获得影响的行数
        int i = DBHelper.sqlMethodNoDataset("update t_teacher set teacher_name ='" + name + "',teacher_sex ='" + sex + "',teacher_age='" + age + "',teacher_email='" + email + "',teacher_password='" + pwd + "',teacher_education='" + edu + "',teacher_degree='"+ degree +"' where teacher_id = " + id);

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