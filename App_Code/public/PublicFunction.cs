using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text;

/// <summary>
///PublicFunction 的摘要说明
/// </summary>
public class PublicFunction
{
	public PublicFunction()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    public static void callJs(Page p, string jsname)
    {
        StringBuilder Builder = new StringBuilder();
        Builder.Append("<script language=javascript>");
        Builder.Append(jsname);
        Builder.Append(";");
        Builder.Append("</script>");
        if (!p.IsStartupScriptRegistered("Call" + jsname))
        {
            p.RegisterStartupScript("Call" + jsname, Builder.ToString());
        }
    }
}
