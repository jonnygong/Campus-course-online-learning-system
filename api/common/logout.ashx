<%@ WebHandler Language="C#" Class="logout" %>

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
using System.Web.SessionState;//第一步：导入此命名空间

public class logout : IHttpHandler, IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        HttpContext.Current.Session.Abandon();
        HttpContext.Current.Session.Clear();
        StringBuilder Builder = new StringBuilder();
        Builder.Append("{");
        Builder.Append("\"r\":1");
        Builder.Append("}");
        string outstr =  Builder.ToString();
        context.Response.Write(outstr);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}