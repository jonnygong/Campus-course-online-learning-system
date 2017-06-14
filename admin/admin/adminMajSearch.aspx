<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminMajSearch.aspx.cs" Inherits="adminMajSearch" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <meta charset="UTF-8"/>
    <title>专业搜索</title>
    <!-- load css -->
     <link rel="stylesheet" href="../css/layui.css"  media="all"/>
     <script src="../layui/layui.js" charset="utf-8"></script>
     <script src="../../libs/jquery/jquery.min.js"></script>
     <style type="text/css">
      th,td,table{
        text-align: center;
      }
      .layui-table td, .layui-table th{padding: 0px;width: 50px;height: 25px;}
     </style>
     <script type="text/javascript">
    layui.use('element', function(){
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
       loadmajTable();
    };
    
   
    function loadmajTable(){
        var _json; 
        var c1=$('#txtSearch').val();
        if(c1==="")
        {
            _json = jQuery.param({ "keyword": "nothing" });  
        }
        else
        {
            _json = jQuery.param({ "keyword": c1});
        }
        var request = $.ajax({  
                url: "../api/search_adminMaj.ashx",  
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
                        renderTable(json.data);                   
                     }
                },  
                error: function (XMLHttpRequest, textStatus, errorThrown) { alert(XMLHttpRequest.readyState); }  
            }); 
    };
    
    function renderTable(data){
        var mystr="<table class=\"layui-table\"  ><colgroup><col width=\"100\"></colgroup><thead ><tr>"+"<th style=\"text-align: center;\">专业名称</th></tr></thead><tbody>";
        
        
         $.each(data, function (index, item) {
                var majName =item.majName;
                mystr += "<tr><td>"+majName+"</td></tr>";
            });
         mystr+="</tbody></table>";
         $("#maj").html(mystr);
    };
    

   
    
    
    </script>

</head>
<body style="width:600px; height:300px;padding:20px; margin: 0 auto;"  onload ="init()">
    <form id="form1" runat="server">
   <input type="text" name="title" required  lay-verify="required" placeholder="  请输入需搜索专业名" autocomplete="off" style=" height: 30px; width:180px; float:left; margin-left:12px;line-height:30px" id="txtSearch" />
<!-- 按钮代码 -->
<button class="layui-btn" style=" float: right; margin-right:12px"; onclick="loadmajTable();return false">搜索</button>
    <!-- 表格代码 -->
    <div id="maj" style="padding: 10px;clear: both"; >

 </div>       
    </form>
</body>
</html>
