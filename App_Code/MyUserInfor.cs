using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
/// <summary>
///MypersonInfor 的摘要说明
/// </summary>
public class MyUserInfor
{
    public string user_picUrl;
    public string user_name;
    public string user_degree;
    public string user_intro;

	public MyUserInfor()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    public MyUserInfor(string user_picUrl, string user_name, string user_degree, string user_intro)
    {
        this.user_picUrl = user_picUrl;
        this.user_name = user_name;
        this.user_degree = user_degree;
        this.user_intro = user_intro;
    }

}
