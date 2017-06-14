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
///MyBasicInfo 的摘要说明
/// </summary>
public class MyBasicInfo
{
    public string bi_webname;
    public string bi_subtitle;
    public string bi_domain;
    public string bi_picUrl;
    public string bi_seoKeyword;
    public string bi_seoDescribe;
    public string bi_record;

	public MyBasicInfo()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
    public MyBasicInfo(string bi_webname, string bi_subtitle, string bi_domain, string bi_picUrl, string bi_seoKeyword, string bi_seoDescribe, string bi_record)
    {
        this.bi_webname = bi_webname;
        this.bi_subtitle = bi_subtitle;
        this.bi_domain = bi_domain;
        this.bi_picUrl = bi_picUrl;
        this.bi_seoKeyword = bi_seoKeyword;
        this.bi_seoDescribe = bi_seoDescribe;
        this.bi_record = bi_record;
    }
}
