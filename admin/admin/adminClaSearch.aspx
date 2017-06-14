<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminClaSearch.aspx.cs" Inherits="admin_adminClaSearch" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <meta charset="UTF-8">
    <title>搜索班级</title>
    <!-- load css -->
     <link rel="stylesheet" href="../css/layui.css"  media="all">
     <script type="text/javascript" src="../libs/jquery/jquery.min.js"></script>
     <script src="../../layui/layui.js" charset="utf-8"></script>
</head>
<style type="text/css">
    th,td,table{
        text-align: center;
    }
    .layui-table td, .layui-table th{padding: 0px;width: 50px;height: 25px;}
    <script>
layui.use('element', function(){
  var element = layui.element(); //导航的hover效果、二级菜单等功能，需要依赖element模块
  
  //监听导航点击
  element.on('nav(demo)', function(elem){
    //console.log(elem)
    layer.msg(elem.text());
  });
});
</script>

</style>
    <script type="text/javascript">
    
    function init(){
       loadClaTable(0);
    };
    
   
    function loadClaTable(number){
        var _json; 
        
        if(number==0)
        {
            _json = jQuery.param({ "keyword": "nothing" });  
        }
        else
        {
            var c1=$('#txtSearch').val();
            _json = jQuery.param({ "keyword": c1});
        }
    //_json = jQuery.param({ "keyword": "nothing" });
        var request = $.ajax({  
                url: "../api/sear_adminCla.ashx",  
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
        var mystr="<table class=\"layui-table\"><colgroup><col width=\"80\"/><col width=\"80\"/></colgroup><thead ><tr>"
     +"<th style=\"text-align: center;\">专业</th><th style=\"text-align: center;\">班级</th></tr> </thead><tbody>";
        
        
         $.each(data, function (index, item) {
                var majorName=item.majorName
                var claName =item.claName;
                mystr += "<tr><td>"+majorName+"</td><td>"+claName+"</td></tr>";
            });
         mystr+="</tbody></table>";
         $("#cla").html(mystr);
    };
    
    </script>

<body style="width:600px; height:300px;padding:20px; margin: 0 auto;" onload ="init()">
    <form id="form1" runat="server">
    <div>
             <input  id="txtSearch" type="text" name="title" required  lay-verify="required" placeholder="  请输入需搜索的关键词" autocomplete="off" style=" height: 30px; width:180px; float:left; margin-left:12px;line-height:30px">
<!-- 按钮代码 -->
    <input type="button" class="layui-btn" style=" float: right; margin-right:12px" onclick="loadClaTable(1);" value="搜索" />
    <!-- 表格代码 -->
    <div style="padding: 10px;clear: both;"id="cla">
       

 </div>       

    </div>
    </form>
    
    

    
</body>
</html>
