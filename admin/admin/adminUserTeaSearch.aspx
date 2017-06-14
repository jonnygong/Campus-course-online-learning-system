<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminUserTeaSearch.aspx.cs"
    Inherits="admin_adminUserTeaSearch" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <title>教师搜索</title>
    <!-- load css -->
    <link rel="stylesheet" href="../css/layui.css" media="all" />
    <style type="text/css">
    th,td,table{
        text-align: center;
    }
        .layui-table td, .layui-table th{padding: 0px;width: 50px;height: 25px;}
    </style>

    <script src="../layui/layui.js" charset="utf-8"></script>

    <script src="../../libs/jquery/jquery.min.js"></script>

    <script type="text/javascript">
    layui.use(['element','laypage'], function(){
      var element = layui.element(); //导航的hover效果、二级菜单等功能，需要依赖element模块
      
      //监听导航点击
      element.on('nav(demo)', function(elem){
        //console.log(elem)
        layer.msg(elem.text());
      });
    });
    </script>

    <script type="text/javascript">
    
    function init(){
       loadTeaTable();
    };
    
   
    function loadTeaTable(curr){
        var _json; 
        var c1=$('#txtSearch').val();
        var curr = curr || 1; // 当前页码
        var pagesize = 2;
        if(c1==="")
        {
            _json = jQuery.param({ "keyword": "nothing", "pageindex": curr, "pagesize": pagesize });  
        }
        else
        {
            _json = jQuery.param({ "keyword": c1, "pageindex": curr, "pagesize": pagesize});
        }
        var request = $.ajax({  
                url: "../api/search_adminUserTea.ashx",  
                type: "POST",  
                async: false,  
                dataType: "json",  
                data: _json,
                cache: false,  
                success: function (data) {  
                    var json=data;
                     if(json.r=="0")
                     {
                        alert('没有数据');
                     }
                     else
                     {
                      //此处仅仅是为了演示变化的内容
                        
                        //显示分页
                        layui.laypage({
                          cont: 'pages', //容器。值支持id名、原生dom对象，jquery对象。【如该容器为】：<div id="page1"></div>
                          pages: Math.ceil( json.r / pagesize), //通过后台拿到的总条数，前端来计算
                          curr: curr || 1, //当前页
                          jump: function(obj, first){ //触发分页后的回调
                            if(!first){ //点击跳页触发函数自身，并传递当前页：obj.curr
                              loadTeaTable(obj.curr);
                            }
                          }
                        });
                        renderTable(json.data);                   
                     }
                     
                },  
                error: function (XMLHttpRequest, textStatus, errorThrown) { alert(XMLHttpRequest.readyState); }  
            }); 
            
            
            
            
            
            
            
    };
    
    
    function renderTable(data){
        var mystr="";
        
        
         $.each(data, function (index, item) {
                var teaName =item.teaName;
                var teaId =item.teaId;
                var teaTeam=item.teaTeam;
                mystr += " <tr><td>"+teaName+"</td><td>"+teaId+"</td><td>"+teaTeam+"</td></tr>";
            });
         $("#tea").html(mystr);
    };
    

   
    
    
    </script>

</head>
<body style="width: 600px; height: 300px; padding: 20px; margin: 0 auto;" onload="init()">
    <form id="form1" runat="server">
        <div>
            <!-- 输入框代码 -->
            <input type="text" name="title" required lay-verify="required" placeholder="请输入查找关键词"
                autocomplete="off" style="height: 32px; width: 180px; float: left; margin-left: 10px;"
                id="txtSearch" />
            <!-- 按钮代码 -->
            <input name="" type="button" class="layui-btn" value="搜索" style="height: 35px; float: right;
                margin-right: 10px;" onclick="loadTeaTable();return false;" />
            <!-- 表格代码 -->
            <div style="padding: 10px; clear: both;">
                <table class="layui-table">
                    <colgroup>
                        <col width="100">
                        <col width="100">
                        <col width="100">
                        <col width="100">
                    </colgroup>
                    <thead>
                        <tr>
                            <th style="text-align: center;">
                                姓名</th>
                            <th style="text-align: center;">
                                教工号</th>
                            <th style="text-align: center;">
                                团队</th>
                        </tr>
                    </thead>
                    <tbody id="tea">
                    </tbody>
                </table>
                <div id="pages"></div>
            </div>
        </div>
    </form>
</body>
</html>
