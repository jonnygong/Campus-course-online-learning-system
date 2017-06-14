<%@ WebHandler Language="C#" Class="load_footer" %>

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

public class load_footer : IHttpHandler {
    
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
        DataSet ds = DBHelper.sqlMethod("select link_url,link_name, link_order from t_link order by link_order asc");
        int i = ds.Tables[0].Rows.Count;

        StringBuilder Builder = new StringBuilder();
        Builder.Append("{");
        Builder.Append("\"r\":" + i + "");

        if (i > 0)
        {
            List<MyLinks> list = new List<MyLinks>();

            for (int j = 0; j < i; j++)
            {
                MyLinks temp = new MyLinks(ds.Tables[0].Rows[j][0].ToString(), ds.Tables[0].Rows[j][1].ToString());
                list.Add(temp);
            }

            string links = new JavaScriptSerializer().Serialize(list);//这个很关键，否则error 

            Builder.Append(",\"data\":{");
            Builder.Append("\"links\":");
            Builder.Append(links);
        }

        //执行查询操作，并获得返回的行数
        DataSet ds_info = DBHelper.sqlMethod("select bi_webname,bi_subtitle,bi_domain,bi_picUrl,bi_seoKeyword,bi_seoDescribe,bi_record from t_basicinfo");
        int rows = ds_info.Tables[0].Rows.Count;


        if (rows > 0)
        {
            List<MyBasicInfo> list = new List<MyBasicInfo>();

            for (int j = 0; j < rows; j++)
            {
                MyBasicInfo temp = new MyBasicInfo(ds_info.Tables[0].Rows[j][0].ToString(), ds_info.Tables[0].Rows[j][1].ToString(), ds_info.Tables[0].Rows[j][2].ToString(), ds_info.Tables[0].Rows[j][3].ToString(), ds_info.Tables[0].Rows[j][4].ToString(), ds_info.Tables[0].Rows[j][5].ToString(), ds_info.Tables[0].Rows[j][6].ToString());
                list.Add(temp);
            }

            string basicinfo = new JavaScriptSerializer().Serialize(list);//这个很关键，否则error 
            
            Builder.Append(",\"basicinfo\":");
            Builder.Append(basicinfo);
            Builder.Append("}");
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