using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.SessionState;//第一步：导入此命名空间

public partial class header : System.Web.UI.UserControl
{
    public string usermenu = "";
    public string usernav = "";
    public string user_id = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        // 已登陆情况
        if (Session["is_login"] != null && Session["is_login"].ToString() == "1")
        {
            user_id = Session["user_id"].ToString();
            // 判断用户身份，0为学生，1为教师
            if (Session["user_type"].ToString() == "0")
            {
                usermenu = "<ul class=\"user-menu login js-userMenu\">" +
                "<li class=\"user-text\">" +
                        "<a href=\"javascript:void(0)\">学号: " + Session["user_number"].ToString() + "</a>" +
                        " </li>" +
                        "<li class=\"menu-text\">" +
                        "<a href=\"" + URLHelper.getPath() + "student/index.aspx\">个人中心</a>" +
                        "</li>" +
                        "<li class=\"menu-text\">" +
                        "<a href=\"" + URLHelper.getPath() + "student/index.aspx\">我的学习</a>" +
                        "</li>" +
                        "<li class=\"menu-text\">" +
                        "<a href=\"javascript:void(0)\" id=\"js-logout\">退出登录</a>" +
                        "</li>" + "</ul>";
                usernav = "<a href=\"javascript:void(0)\" class=\"js-login\" id=\"js-userinfo\">" + Session["user_name"].ToString() +"</a>";
            }
            else if (Session["user_type"].ToString() == "1")
            {
                usermenu = "<ul class=\"user-menu login js-userMenu\">" +
               "<li class=\"user-text\">" +
                       "<a href=\"javascript:void(0)\">工号: " + Session["user_number"].ToString() + "</a>" +
                       " </li>" +
                       "<li class=\"menu-text\">" +
                       "<a href=\"" + URLHelper.getPath() + "teacher/index.aspx\">个人中心</a>" +
                       "</li>" +
                       "<li class=\"menu-text\">" +
                       "<a href=\"" + URLHelper.getPath() + "teacher/tea-lesson.aspx\">我的课程</a>" +
                       "</li>" +
                       "<li class=\"menu-text\">" +
                       "<a href=\"javascript:void(0)\" id=\"js-logout\">退出登录</a>" +
                       "</li>" + "</ul>";
                usernav = "<a href=\"javascript:void(0)\" class=\"js-login\" id=\"js-userinfo\">" + Session["user_name"].ToString() + "</a>";
            }

        }
        // 未登陆情况
        else
        {

            usermenu = "<ul class=\"user-menu notlogin js-userMenu\">" +
                    "<li class=\"user-text\">"+
                        "<a href=\"javascript:void(0)\" class=\"js-login notlogin\">身份: 游客</a>" +
                    "</li>"+
                    "<li class=\"menu-text\">"+
                        "<a href=\"javascript:void(0)\" class=\"js-login notlogin\">请登录...</a>" +
                    "</li>"+
                "</ul>";
            usernav = "<a href=\"javascript:void(0)\" class=\"js-login notlogin\" id=\"js-userinfo\">登录</a>";
               
        }
    }
}