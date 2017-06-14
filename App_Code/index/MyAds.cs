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
///MyAds 的摘要说明
/// </summary>
public class MyAds
{
    public string ad_img;
    public string ad_type;
    public string ad_url;

	public MyAds()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    public MyAds(string ad_img, string ad_type, string ad_url)
    {
        this.ad_img = ad_img;
        this.ad_type = ad_type;
        this.ad_url = ad_url;
    }
}
