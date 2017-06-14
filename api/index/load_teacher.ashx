<%@ WebHandler Language="C#" Class="load_teacherStyle" %>

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

public class load_teacherStyle : IHttpHandler {
    
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
        //执行查询操作，并获得返回的行数select top 5 teacher_id, teacher_name,teacher_degree,teacher_picUrl,teacher_intro,resource_owner,count(*) from t_teacher,t_resource group by resource_owner  where t_teacher.teacher_id=t_resource.resource_owner order by resource_owner desc   
        //select top 5 * from (select top 3 p.teacher_id, p.teacher_name, p.teacher_sex, count(*) from t_teacher p inner join t_resource m on p.teacher_id = m.resource_owner group by p.teacher_id, p.teacher_name, p.teacher_sex order by count(*) desc ) as t 
        DataSet ds = DBHelper.sqlMethod("select top 5 teacher_picUrl,teacher_name,teacher_degree,teacher_intro from (select p.teacher_name, p.teacher_picUrl, p.teacher_degree, p.teacher_intro, count(*) from t_teacher p inner join t_resource m on p.teacher_id = m.resource_owner group by p.teacher_picUrl, p.teacher_name,p.teacher_degree,  p.teacher_intro order by count(*) desc ) as t ");
        int i = ds.Tables[0].Rows.Count;

        StringBuilder Builder = new StringBuilder();
        Builder.Append("{");
        Builder.Append("\"r\":" + i + "");

        if (i > 0)
        {
            List<MyStyle> list = new List<MyStyle>();

            for (int j = 0; j < i; j++)
            {
                MyStyle temp = new MyStyle(ds.Tables[0].Rows[j][0].ToString(), ds.Tables[0].Rows[j][1].ToString(), ds.Tables[0].Rows[j][2].ToString(), ds.Tables[0].Rows[j][3].ToString());
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