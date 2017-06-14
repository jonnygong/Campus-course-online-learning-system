<%@ WebHandler Language="C#" Class="load_course_list_hot" %>

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

public class load_course_list_hot : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        //指定回送数据的类型
        context.Response.ContentType = "application/json";

        //接收数据
       string id = context.Request["id"];

        //准备回送的字符串
        string outstr = "";

        //执行写入操作
        outstr = doSelect();
        //outstr = doSelect(id);

        //回送结果
        context.Response.Write(outstr);
    }

    public string doSelect()//string id
    {
        //执行查询操作，并获得返回的行数
        DataSet ds = DBHelper.sqlMethod("select major_id,course_img_url,course_name,major_name,teacher_name,course_visit from t_course,t_major,t_teacher,t_course_team where t_course.course_profession=t_major.major_id and t_course_team.teacher_id=t_teacher.teacher_id  and t_course_team.course_id = t_course.course_id and t_course_team.is_leader = 1  order by t_course.course_visit desc");//and major_id=" + id + "
        int i = ds.Tables[0].Rows.Count;

        StringBuilder Builder = new StringBuilder();
        Builder.Append("{");
        Builder.Append("\"r\":" + i + "");

        if (i > 0)
        {
            List<MyCourseHot> list = new List<MyCourseHot>();

            for (int j = 0; j < i; j++)
            {
                MyCourseHot temp = new MyCourseHot(ds.Tables[0].Rows[j][1].ToString(), ds.Tables[0].Rows[j][2].ToString(), ds.Tables[0].Rows[j][3].ToString(), ds.Tables[0].Rows[j][4].ToString(), int.Parse(ds.Tables[0].Rows[j][5].ToString()));
                list.Add(temp);
            }

            string json = new JavaScriptSerializer().Serialize(list);//这个很关键，否则error 

            Builder.Append(",\"data\":");
            Builder.Append(json);
        }

        Builder.Append("}");
        return Builder.ToString();
    }
 
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}