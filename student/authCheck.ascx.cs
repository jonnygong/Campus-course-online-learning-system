using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.Mobile;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.MobileControls;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Web.SessionState;//第一步：导入此命名空间

public partial class authCheck : System.Web.UI.MobileControls.MobileUserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // 已登陆情况
        if (Session["is_login"] != null && Session["is_login"].ToString() == "1")
        {

            // 判断用户身份，0为学生，1为教师
            if (Session["user_type"].ToString() == "1")
            {
                Response.Redirect("~/student/index.aspx");
            }

        }
        // 未登陆情况
        else
        {
            Response.Redirect("~/index.aspx");
        }
    }
}
