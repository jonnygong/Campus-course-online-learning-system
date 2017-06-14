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
using System.Security.Cryptography;

/// <summary>
///MD5 的摘要说明
/// </summary>
public class MD5
{
	public MD5()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    public static string getMD5(string Sourcein)
    {
        //MD5加密函数
        MD5CryptoServiceProvider MD5CSP = new MD5CryptoServiceProvider();
        byte[] MD5Source = System.Text.Encoding.UTF8.GetBytes(Sourcein);
        byte[] MD5Out = MD5CSP.ComputeHash(MD5Source);
        return Convert.ToBase64String(MD5Out);
    }
}
