<%@ WebHandler Language="C#" Class="findPwd" %>

using System;
using System.Web;
using System.Data.OleDb;
using System.Data;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web.Security;
using System.Xml.Linq;
using System.Web.Script.Serialization;
using System.Text;
using System.IO;
using System.Runtime.Serialization;
using System.Runtime.Serialization.Formatters.Binary;
using System.Net.Mail;
using System.Net;

public class findPwd : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        //指定接收数据的类型
        context.Response.ContentType = "application/json";
        //接收数据
        string s_number = context.Request["s_number"];
        string realname = context.Request["realname"];
        string mail = context.Request["mail"];


        //准备回送的字符串
        string outstr = "";

        //执行写入操作
        outstr = SendMailUseGmail();
        //回送结果
        context.Response.Write(outstr);
    }

    public string SendMailUseZj() 
    { 
        System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage(); 
        msg.To.Add("1911938257@qq.com"); 
        // msg.To.Add(b@b.com); 
        /* 
        * msg.To.Add("b@b.com"); 
        * msg.To.Add("b@b.com"); 
        * msg.To.Add("b@b.com");可以发送给多人 
        */ 
        //msg.CC.Add("c@c.com"); 
        /* 
        * msg.CC.Add("c@c.com"); 
        * msg.CC.Add("c@c.com");可以抄送给多人 
        */ 
        msg.From = new MailAddress("1911938257@qq.com", "admin", System.Text.Encoding.UTF8); 
        /* 上面3个参数分别是发件人地址（可以随便写），发件人姓名，编码*/ 
        msg.Subject = "这是测试邮件";//邮件标题 
        msg.SubjectEncoding = System.Text.Encoding.UTF8;//邮件标题编码 
        msg.Body = "邮件内容";//邮件内容 
        msg.BodyEncoding = System.Text.Encoding.UTF8;//邮件内容编码 
        msg.IsBodyHtml = false;//是否是HTML邮件 
        msg.Priority = MailPriority.High;//邮件优先级 

        SmtpClient client = new SmtpClient();
        client.Credentials = new System.Net.NetworkCredential("1911938257@qq.com", ""); 
        //在zj.com注册的邮箱和密码 
        client.Host = "smtp.qq.com"; 
        object userState = msg; 
        try 
        { 
            client.SendAsync(msg, userState); 
            //简单一点儿可以client.Send(msg); 
            return "发送成功"; 
        } 
        catch (System.Net.Mail.SmtpException ex) 
        {
            return ex.ToString(); 
        } 
    }

    public string SendMailUseGmail()   
{   
System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage();   
msg.To.Add("1911938257@qq.com");   
msg.To.Add("1911938257@qq.com");     
/*  
* msg.To.Add("b@b.com");  
* msg.To.Add("b@b.com");  
* msg.To.Add("b@b.com");可以发送给多人  
*/
msg.To.Add("1911938257@qq.com");   
/*  
* msg.CC.Add("c@c.com");  
* msg.CC.Add("c@c.com");可以抄送给多人  
*/   
msg.From = new MailAddress("a@a.com", "AlphaWu", System.Text.Encoding.UTF8);   
/* 上面3个参数分别是发件人地址（可以随便写），发件人姓名，编码*/   
msg.Subject = "这是测试邮件";//邮件标题   
msg.SubjectEncoding = System.Text.Encoding.UTF8;//邮件标题编码   
msg.Body = "邮件内容";//邮件内容   
msg.BodyEncoding = System.Text.Encoding.UTF8;//邮件内容编码   
msg.IsBodyHtml = false;//是否是HTML邮件   
msg.Priority = MailPriority.High;//邮件优先级   
SmtpClient client = new SmtpClient();   
client.Credentials = new System.Net.NetworkCredential("1911938257@qq.com", "qoheuawtddbibfjj");   
//上述写你的GMail邮箱和密码   
client.Port = 587;//Gmail使用的端口   
client.Host = "smtp.qq.com";   
client.EnableSsl = true;//经过ssl加密   
object userState = msg;   
try   
{   
client.SendAsync(msg, userState);   
//简单一点儿可以client.Send(msg);   
return "发送成功"; 
}   
catch (System.Net.Mail.SmtpException ex)   
{
    return ex.ToString();   
}   
}  
    

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}