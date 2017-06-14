<%@ WebHandler Language="C#" Class="get_search_doc" %>

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

public class get_search_doc : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        //指定回送数据的类型
        context.Response.ContentType = "application/json";
        string keyword = context.Request["keyword"];
       
        //准备回送的字符串
        string outstr = "";

        //执行写入操作
        outstr = doSelect(keyword);

        //回送结果
        context.Response.Write(outstr);
    }


    public string doSelect(string keyword)
    {
        int i;
        DataSet ds = new DataSet();
        //if (keyword == "")
        //{
        //    ds = DBHelper.sqlMethod("select t_re.resource_name,t_c.course_name from t_resource as t_re,t_course as t_c where t_re.resource_lesson=t_c.course_id ");
        //    i = ds.Tables[0].Rows.Count;
        //}
        //else {
            ds = DBHelper.sqlMethod("select t_re.resource_name,t_c.course_name from t_resource as t_re,t_course as t_c where t_re.resource_lesson=t_c.course_id AND t_re.resource_name like '%" + keyword + "%'");
            i = ds.Tables[0].Rows.Count;
        //}
       

        StringBuilder Builder = new StringBuilder();
        Builder.Append("{");
        Builder.Append("\"r\":" + i + "");

        if (i > 0)
        {
            List<MySearchDoc> list = new List<MySearchDoc>();

            for (int j = 0; j < i; j++)
            {
                MySearchDoc temp = new MySearchDoc(ds.Tables[0].Rows[j][0].ToString(), ds.Tables[0].Rows[j][1].ToString());
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