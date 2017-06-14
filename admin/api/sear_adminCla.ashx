<%@ WebHandler Language="C#" Class="sear_adminCla" %>

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

public class sear_adminCla : IHttpHandler {

    public void ProcessRequest(HttpContext context)
    {

        //指定接收数据的类型
        context.Response.ContentType = "application/json";
        //接收数据
        string keyword = context.Request["keyword"];

        //准备回送的字符串
        string outstr = "";

        //执行写入操作
        outstr = doSelect(keyword);

        //回送结果
        context.Response.Write(outstr);
    }
    public string doSelect(string name)
    {
        string sql1;
        if (name == "nothing")
        {
            sql1 = "SELECT major_name,class_name FROM t_class ,t_major where t_class.class_major=t_major.major_id";
        }
        else
        {

            sql1 = "SELECT major_name,class_name FROM t_class ,t_major where t_class.class_major=t_major.major_id and t_class.class_name like '%"+name+"%' or t_major.major_name like '%"+name +"%';";

        }

        DataSet ds = DBHelper.sqlMethod(sql1);
        int i = ds.Tables[0].Rows.Count;
        StringBuilder Builder = new StringBuilder();
        Builder.Append("{");
        Builder.Append("\"r\":" + i + "");
        if (i > 0)
        {
            List<MyAdminCla> list = new List<MyAdminCla>();
            for (int j = 0; j < i; j++)
            {
                MyAdminCla temp = new MyAdminCla(ds.Tables[0].Rows[j][0].ToString(), ds.Tables[0].Rows[j][1].ToString());
                list.Add(temp);
            }

            string json = new JavaScriptSerializer().Serialize(list);//这个很关键，否则error 

            Builder.Append(",\"data\":");
            Builder.Append(json);
        }

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