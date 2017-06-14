<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminMajAdd.aspx.cs" Inherits="admin_adminMajAdd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <meta charset="UTF-8">
    <title>专业添加</title>
    <link rel="stylesheet" href="../css/layui.css"  media="all">    <script src="../layui/layui.js" charset="utf-8"></script>
    <script src="../../libs/jquery/jquery.min.js"></script>    <style type="text/css">
        th,td,table{
            text-align: center;
        }
        .layui-table td, .layui-table th{padding: 0px;width: 50px;height: 25px;}
    </style>    <script type="text/javascript">
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
        _json = jQuery.param({ "keyword": "nothing" });  
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
    
    
    
     function submitForm()
	     {  
	     
	        // 1 先获取文本框的数据
	        var c1=$('#majName').val();
	        
	        // 2 组装好送往后台的json数据
            var _json = jQuery.param({ "c1": c1});  
            
            // 3 指定送向后台哪个处理程序以及传送的方式，并传送
            var request = $.ajax({  
                url: "../api/add_adminMaj.ashx",  
                type: "POST",  
                async: false,  
                data: _json, //不能直接写成 {id:"123",code:"tomcat"}  
                dataType: "json",  
                // contentType: "charset=utf-8",  
                cache: false,  
                
             //4 接受返回过来的数据，同样是json格式的，根据返回过来的数据给出相应的提示或操作
                success: function (data) {  
                    var json=data;
                    
                    //返回过来的是1 表示插入成功了
                     if(json.r=="1")
                     {
                        //提示插入成功
                        alert('插入成功。');
                      
                     }
                     //否则则是插入失败了
                     else
                     {
                       alert('对不起，插入，请检查您的输入。');                        
                     }
                },  
                error: function (XMLHttpRequest, textStatus, errorThrown) { alert(XMLHttpRequest.readyState); }  
            }); 
        }    </script>
</head>
<body style="width:600px; height:300px;padding:20px; margin: 0 auto;" onload ="init()">
    <form id="form1" runat="server">
    <div>
        <input type="text" name="title" required  lay-verify="required" placeholder="  请输入需添加专业名" autocomplete="off" style=" height: 30px; width:180px; float:left; margin-left:12px;line-height:30px" id="majName">
<!-- 按钮代码 -->
<button class="layui-btn" style=" float: right; margin-right:12px" onclick="submitForm()"  >添加</button>
    <!-- 表格代码 -->
    <div style="padding: 10px;clear: both;" id="maj">       
 </div>
 <button class="layui-btn" style=" float: right; margin-right:12px">保存</button> 
    </div>
    </form>
</body>
</html>
