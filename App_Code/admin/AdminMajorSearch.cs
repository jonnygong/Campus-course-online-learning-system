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
/// Search_adm_t_maj 的摘要说明
/// </summary>
public class AdminMajorSearch
{
    public string majName;
   
	public AdminMajorSearch()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
    public AdminMajorSearch(string majName)
    {
        this.majName = majName;
        
    }
    public string getmajName() {
        return this.majName;
    }
  
}