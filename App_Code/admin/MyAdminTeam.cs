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
/// MyAdminTeam 的摘要说明
/// </summary>
public class MyAdminTeam
{
    public string teamName;
    public string teamCharge;
	public MyAdminTeam()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public MyAdminTeam(string teamName, string teamCharge)
    {
        this.teamName = teamName;
        this.teamCharge = teamCharge;
    }
    public string getTeamName() {
        return this.teamName;
    }
    public string getTeamCharge()
    {
        return this.teamCharge;
    }
}
