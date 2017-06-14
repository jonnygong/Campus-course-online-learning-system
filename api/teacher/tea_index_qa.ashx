<%@ WebHandler Language="C#" Class="tea_index_qa" %>

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

public class tea_index_qa : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        //指定回送数据的类型
        context.Response.ContentType = "application/json";
        string id = context.Request["id"];
        //准备回送的字符串
        string outstr = "";

        //执行写入操作
        outstr = selectLessonQa(id);

        //回送结果
        context.Response.Write(outstr);
    }

    public string selectLessonQa(string id)
    {

        //执行查询操作，并获得返回的行数
        DataSet ds = DBHelper.sqlMethod(" select teacher_id,teacher_number,teacher_name,question_id,question_user,question_title,question_content,teacher_picUrl " +
            " from t_teacher,t_question " +
            " where t_teacher.teacher_number = t_question.question_user and teacher_id =" + id);
        int i = ds.Tables[0].Rows.Count;


        StringBuilder Builder = new StringBuilder();
        Builder.Append("{");
        Builder.Append("\"r\":" + i + "");

        if (i > 0)
        {
            List<TeaIndexQa> list = new List<TeaIndexQa>();

            for (int j = 0; j < i; j++)
            {
                TeaIndexQa temp = new TeaIndexQa(int.Parse(ds.Tables[0].Rows[j][0].ToString()), int.Parse(ds.Tables[0].Rows[j][1].ToString()), ds.Tables[0].Rows[j][2].ToString(), int.Parse(ds.Tables[0].Rows[j][3].ToString()), ds.Tables[0].Rows[j][4].ToString(), ds.Tables[0].Rows[j][5].ToString(), ds.Tables[0].Rows[j][6].ToString(), ds.Tables[0].Rows[j][7].ToString());
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