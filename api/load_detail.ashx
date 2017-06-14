<%@ WebHandler Language="C#" Class="load_detail" %>

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

public class load_detail : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        //指定回送数据的类型
        context.Response.ContentType = "application/json";
        string id = context.Request["id"];
        //准备回送的字符串
        string outstr = "";

        //执行写入操作
        outstr = selectLessonTitle(id);

        //回送结果
        context.Response.Write(outstr);
    }

    public string selectLessonTitle(string id)
    {

        //执行查询操作，并获得返回的行数
        DataSet ds = DBHelper.sqlMethod(" select t_course.course_id,course_name,course_introduction,course_profession,course_time,course_img_url,teacher_name,teacher_intro,teacher_picUrl,resource_img " +
        " from t_course,t_course_team,t_teacher,t_resource "+
        " where t_course.course_id=t_course_team.ct_id and t_course_team.ct_id = t_teacher.teacher_id and t_resource.resource_id = t_course.course_id and t_course.course_id =" + id);
        int i = ds.Tables[0].Rows.Count;
    

        StringBuilder Builder = new StringBuilder();
        Builder.Append("{");
        Builder.Append("\"r\":" + i + "");

        if (i > 0)
        {
            List<Lesson_detail> list = new List<Lesson_detail>();

            for (int j = 0; j < i; j++)
            {
                Lesson_detail temp = new Lesson_detail(int.Parse(ds.Tables[0].Rows[j][0].ToString()), ds.Tables[0].Rows[j][1].ToString(), ds.Tables[0].Rows[j][2].ToString(), int.Parse(ds.Tables[0].Rows[j][3].ToString()), int.Parse(ds.Tables[0].Rows[j][4].ToString()), ds.Tables[0].Rows[j][5].ToString(), ds.Tables[0].Rows[j][6].ToString(), ds.Tables[0].Rows[j][7].ToString(), ds.Tables[0].Rows[j][8].ToString(), ds.Tables[0].Rows[j][9].ToString());
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