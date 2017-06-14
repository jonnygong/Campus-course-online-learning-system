<%@ WebHandler Language="C#" Class="load_user" %>

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


public class load_user : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        //指定回送数据的类型
        context.Response.ContentType = "application/json";

        //准备回送的字符串
        string outstr = "";

        //执行写入操作
        outstr = doSelect();

        //回送结果
        context.Response.Write(outstr);
    }
    public string doSelect()
    {
        //执行查询操作，并获得返回的行数
        string sql =
            " SELECT top 5 * from (SELECT t_student.student_id, t_student.student_picUrl, t_student.student_name, t_class.class_name, t_major.major_name, COUNT(*) " +
            " FROM t_student,t_record, t_major, t_class "+
            " WHERE t_student.student_id = t_record.student_id and t_major.major_id = t_student.student_major and t_class.class_id = t_student.student_class "+
            " GROUP BY t_student.student_id, t_student.student_name, t_student.student_picUrl, t_class.class_name, t_major.major_name "+
            " ORDER BY COUNT(*) desc ) as t ";
        DataSet ds = DBHelper.sqlMethod(sql);
        int i = ds.Tables[0].Rows.Count;

        StringBuilder Builder = new StringBuilder();
        Builder.Append("{");
        Builder.Append("\"r\":" + i + "");

        if (i > 0)
        {
            List<MyUser> list = new List<MyUser>();

            for (int j = 0; j < i; j++)
            {
                MyUser temp = new MyUser(ds.Tables[0].Rows[j][0].ToString(), ds.Tables[0].Rows[j][1].ToString(), ds.Tables[0].Rows[j][2].ToString(), ds.Tables[0].Rows[j][3].ToString(), ds.Tables[0].Rows[j][4].ToString());
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