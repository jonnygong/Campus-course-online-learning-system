<%@ WebHandler Language="C#" Class="search_adminUserTea" %>

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

public class search_adminUserTea : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {

        //指定接收数据的类型
        context.Response.ContentType = "application/json";
        //接收数据
        string keyword = context.Request["keyword"];
        string pageindex = context.Request["pageindex"]; // 当前页码
        string pagesize = context.Request["pagesize"]; // 每页显示条数
        //准备回送的字符串
        string outstr = "";

        //执行写入操作
        outstr = doSelect(keyword, pageindex, pagesize);

        //回送结果
        context.Response.Write(outstr);
    }
    public string doSelect(string name, string pageindex, string pagesize)
    {
        /*
         * 
         * select top pagesize * from table where id not in (select top (pageindex -1)* pagesize
         * 
         * 
         * 
         SELECT top 2 teacher_name,teacher_number,team_name,t_teacher.teacher_id FROM t_teacher INNER JOIN t_pt_member ON t_teacher.teacher_id=t_pt_member.teacher_id where  t_teacher.teacher_id not in (SELECT top 2 t_teacher.teacher_id FROM t_teacher INNER JOIN t_pt_member ON t_teacher.teacher_id=t_pt_member.teacher_id )
         * 
         * 
         * 
         * SELECT top 2 teacher_name,teacher_number,team_name,t_teacher.teacher_id FROM t_teacher INNER JOIN t_pt_member ON t_teacher.teacher_id=t_pt_member.teacher_id WHERE teacher_name like '%%' or teacher_number like '%%' or team_name like  '%%' and t_teacher.teacher_id not in (SELECT top 2 t_teacher.teacher_id FROM t_teacher INNER JOIN t_pt_member ON t_teacher.teacher_id=t_pt_member.teacher_id WHERE teacher_name like '%%' or teacher_number like '%%' or team_name like  '%%')
         * 
         * 
         * 
         */
        string sql;
        string sql1;
        int filterNum = 0;
        if (name == "nothing")
        {
            filterNum = (int.Parse(pageindex) - 1) * int.Parse(pagesize);
            // 获取总数据条数
            sql = "SELECT teacher_name,teacher_number,team_name FROM t_teacher INNER JOIN t_pt_member ON t_teacher.teacher_id=t_pt_member.teacher_id";
            // 当页码为1时
            if (pageindex == "1")
            {
                sql1 = " SELECT top " + pagesize + " teacher_name,teacher_number,team_name,t_teacher.teacher_id FROM t_teacher INNER JOIN t_pt_member ON t_teacher.teacher_id=t_pt_member.teacher_id";
            }
            // 当页码为其他页时
            else
            {
                sql1 = " SELECT top " + pagesize + " teacher_name,teacher_number,team_name,t_teacher.teacher_id FROM t_teacher INNER JOIN t_pt_member ON t_teacher.teacher_id=t_pt_member.teacher_id where t_teacher.teacher_id not in (SELECT top " + filterNum.ToString() + " t_teacher.teacher_id FROM t_teacher INNER JOIN t_pt_member ON t_teacher.teacher_id=t_pt_member.teacher_id)";
            }
        }
        else
        {   
             // 筛选条件
             filterNum = (int.Parse(pageindex) - 1) * int.Parse(pagesize);
             // 获取总数据条数
            sql = "SELECT teacher_name,teacher_number,team_name FROM t_teacher INNER JOIN t_pt_member ON t_teacher.teacher_id=t_pt_member.teacher_id WHERE teacher_name like '%" + name + "%' or teacher_number like '%" + name + "%' or team_name like  '%" + name + "%'";
            // 当页码为1时
            if (pageindex == "1")
            {
                sql1 = "SELECT top " + pagesize + " teacher_name,teacher_number,team_name,t_teacher.teacher_id FROM t_teacher INNER JOIN t_pt_member ON t_teacher.teacher_id=t_pt_member.teacher_id WHERE teacher_name like  '%" + name + "%' or teacher_number like  '%" + name + "%' or team_name like  '%" + name + "%'";
            }
            // 当页码为其他页时
            else
            {
                sql1 = "SELECT top " + pagesize + " teacher_name,teacher_number,team_name,t_teacher.teacher_id FROM t_teacher INNER JOIN t_pt_member ON t_teacher.teacher_id=t_pt_member.teacher_id WHERE teacher_name like  '%" + name + "%' or teacher_number like  '%" + name + "%' or team_name like  '%" + name + "%' and t_teacher.teacher_id  not in (SELECT top " + filterNum.ToString() + " t_teacher.teacher_id FROM t_teacher INNER JOIN t_pt_member ON t_teacher.teacher_id=t_pt_member.teacher_id WHERE teacher_name like '%" + name + "%' or teacher_number like '%" + name + "%' or team_name like  '%" + name + "%')";
            }
            
            


        }

        // 总条数
        DataSet source_ds = DBHelper.sqlMethod(sql);
        // 分页条数
        DataSet ds = DBHelper.sqlMethod(sql1);
        int source_i = source_ds.Tables[0].Rows.Count;
        int i = ds.Tables[0].Rows.Count;
        StringBuilder Builder = new StringBuilder();
        Builder.Append("{");
        Builder.Append("\"r\":" + source_i + "");
        if (i > 0)
        {
            List<MyAdminUserTea> list = new List<MyAdminUserTea>();
            for (int j = 0; j < i; j++)
            {
                MyAdminUserTea temp = new MyAdminUserTea(ds.Tables[0].Rows[j][0].ToString(), ds.Tables[0].Rows[j][1].ToString(), ds.Tables[0].Rows[j][2].ToString());
                list.Add(temp);
            }

            string json = new JavaScriptSerializer().Serialize(list);//这个很关键，否则error 

            Builder.Append(",\"data\":");
            Builder.Append(json);
        }
        
        Builder.Append("}");
        return Builder.ToString();
    }
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}