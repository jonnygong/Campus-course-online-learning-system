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
/// MyAdminUserTea 的摘要说明
/// </summary>
public class MyAdminUserTea
{
	public string teaName;
    public string teaId;
    public string teaTeam;
	public MyAdminUserTea()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public MyAdminUserTea(string teaName, string teaId, string teaTeam)
    {
        this.teaName = teaName;
        this.teaId = teaId;
        this.teaTeam = teaTeam;
    }
    public string getTeaName() {
        return this.teaName;
    }
    public string getTeaId()
    {
        return this.teaId;
    }
    public string getTeaTeam()
    {
        return this.teaTeam;
    }
}
