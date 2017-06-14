<%@ WebHandler Language="C#" Class="login" %>

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
using System.Web.SessionState;//第一步：导入此命名空间

public class login : IHttpHandler, IRequiresSessionState //第二步：实现接口 到此就可以像平时一样用Session了
{

    public void ProcessRequest(HttpContext context)
    {
        //指定接收数据的类型
        context.Response.ContentType = "application/json";
        //接收数据
        // 用户类型 0 为学生， 1 为教师， 2 为专家（目前暂时不用）
        string username = context.Request["username"];
        string password = context.Request["password"];
        string user_type = context.Request["usertpye"];

        //准备回送的字符串
        string outstr = "";

        //执行写入操作
        outstr = user_login(username, password, user_type, context);
        //回送结果
        context.Response.Write(outstr);
    }

    public string user_login(string username, string password, string user_type, HttpContext context)
    {
        //执行查询操作，并获得返回的行数

        string sql = "";

        // 学生
        if (user_type == "0")
        {
            sql = "select student_id, student_number, student_name from t_student where student_number = '" + username + "' and student_password = '" + MD5.getMD5(password) + "'";
        }
        // 教师
        if (user_type == "1")
        {
            sql = "select teacher_id, teacher_number, teacher_name from t_teacher where teacher_number = '" + username + "' and teacher_password = '" + MD5.getMD5(password) + "'";
        }

        DataSet ds = DBHelper.sqlMethod(sql);
        int i = ds.Tables[0].Rows.Count;

        StringBuilder Builder = new StringBuilder();
        Builder.Append("{");
        Builder.Append("\"r\":" + i + "");

        // todo 如果说能够找到此用户，则将用户名、学号或工号、用户类型传入SESSION

        if (i > 0)
        {
            //已登录为 1  未登录 为0
            /*
            HttpCookie is_login = new HttpCookie("is_login");
            is_login.Value = "1";
            context.Response.AppendCookie(is_login);
            
            HttpCookie hc_id = new HttpCookie("user_id");
            hc_id.Value = ds.Tables[0].Rows[0][0].ToString();
            context.Response.AppendCookie(hc_id);

            HttpCookie hc_name = new HttpCookie("user_name");
            hc_name.Value = ds.Tables[0].Rows[0][2].ToString();
            context.Response.AppendCookie(hc_name);
            
            HttpCookie hc_num = new HttpCookie("user_number");
            hc_num.Value = ds.Tables[0].Rows[0][1].ToString();
            context.Response.AppendCookie(hc_num);

            // 用户类型 0 为学生， 1 为教师， 2 为专家（目前暂时不用）
            HttpCookie hc_type = new HttpCookie("user_type");
            hc_type.Value = user_type;
            context.Response.AppendCookie(hc_type);
            */

            HttpContext.Current.Session["is_login"] = "1";
            HttpContext.Current.Session["user_id"] = ds.Tables[0].Rows[0][0].ToString();
            HttpContext.Current.Session["user_number"] = ds.Tables[0].Rows[0][1].ToString();
            HttpContext.Current.Session["user_name"] = ds.Tables[0].Rows[0][2].ToString();
            HttpContext.Current.Session["user_type"] = user_type;
        }
        else
        {
            /*
            HttpCookie is_login = new HttpCookie("is_login");
            is_login.Value = "0";
            context.Response.Cookies.Add(is_login);
            */
            HttpContext.Current.Session["is_login"] = "0";
        }
        // 返回结果为 0  或 1 ， 0代表登录失败， 1 代表登录成功

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