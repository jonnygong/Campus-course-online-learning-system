using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// MyAdminCla 的摘要说明
/// </summary>
public class MyAdminCla
{
  public string majorName;
    public string claName;
	public MyAdminCla()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public MyAdminCla(string claName, string majorName)
    {
        this.majorName = majorName;
        this.claName = claName;
    }
    public string getClaName()
    {
        return this.claName;
    }
    public string getMajorName()
    {
        return this.majorName;
    }
}