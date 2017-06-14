using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;//第一步：导入此命名空间

/// <summary>
/// URLHelper 的摘要说明
/// </summary>
public class URLHelper
{
	public URLHelper()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public static string formatURL(string url)
    {
        return url == "/" ? "/" : url + "/";
    }
    public static string getPath()
    {
        return HttpContext.Current.Request.ApplicationPath == "/" ? "/" : HttpContext.Current.Request.ApplicationPath + "/";
        
    }

    public static string getUrlParam(){
        return HttpUtility.UrlEncode(HttpContext.Current.Request.QueryString["content"]);
    }
}