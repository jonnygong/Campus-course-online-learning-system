<%@ WebHandler Language="C#" Class="load_prof" %>

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

public class load_prof : IHttpHandler {
    
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
        DataSet ds = DBHelper.sqlMethod("select major_name, major_info, major_icon from t_major order by major_icon");
        int i = ds.Tables[0].Rows.Count;

        StringBuilder Builder = new StringBuilder();
        Builder.Append("{");
        Builder.Append("\"r\":" + i + "");

        if (i > 0)
        {
            List<MyMajor> list = new List<MyMajor>();

            for (int j = 0; j < i; j++)
            {
                MyMajor temp = new MyMajor(ds.Tables[0].Rows[j][0].ToString(), ds.Tables[0].Rows[j][1].ToString(), int.Parse(ds.Tables[0].Rows[j][2].ToString()));
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