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
///MySlider 的摘要说明
/// </summary>
public class MySlider
{
    public string slider_url;
    public string slider_image_url;

	public MySlider()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    public MySlider(string slider_url, string slider_image_url)
    {
        this.slider_url = slider_url ;
        this.slider_image_url = slider_image_url;
    }

}
