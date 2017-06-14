<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search-user.aspx.cs" Inherits="search_user" %>

<%@ Register Src="~/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/footer.ascx" TagPrefix="uc1" TagName="footer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>搜索页-用户</title>
    <uc1:header runat="server" ID="header" />
    <div class="container">
        <!-- code here -->

        <div id="search-course-header">

            <div id="search-course-searchbox">
                <div class="search-course-searchbox-ico">
                    <i class="fa fa-search" aria-hidden="true"></i>
                </div>
                <input type="text" class="search-course-searchbox-ipt" placeholder="请输入想搜索的内容" id="keyword">
                <input type="button" class="search-course-searchbox-but" value="搜索" id="js-search-btn">

               
            </div>

        </div>


        <ul class="search-course-list">
            <li><a href="<% =URLHelper.getPath() %>search.aspx?content=<% =URLHelper.getUrlParam() %>">全部</a></li>
            <li><a href="<% =URLHelper.getPath() %>search-course.aspx?content=<% =URLHelper.getUrlParam() %>">课程</a></li>
            <li><a href="<% =URLHelper.getPath() %>search-doc.aspx?content=<% =URLHelper.getUrlParam() %>">资源</a></li>
            <li class="on"><a href="<% =URLHelper.getPath() %>search-user.aspx?content=<% =URLHelper.getUrlParam() %>">用户</a></li>


        </ul>
        <div class="search-course-list-record">共找到<span id="search_result"></span>个相关内容</div>

        <ul class="search-course-content cf" id="js-search-user">
            <!--<li class="index-people-card search-teacher-item">
                <a target="_blank" href="user/user.html" class="teacher-item">
                    <img class="search-teacher-avatar" src="http://img.mukewang.com/583f11e40001c79506400960-100-100.jpg">
                    <span class="teacher-name">晴天</span>
                    <span class="teacher-job">神秘讲师</span>
                </a>
            </li>
            
            <li class="index-people-card search-teacher-item">
                <a target="_blank" href="user/user.html" class="teacher-item">
                    <img class="search-teacher-avatar" src="./images/search_user_tou3.png">
                    <span class="teacher-name">夏天</span>
                    <span class="teacher-job">高级讲师</span>
                </a>
            </li>
            <li class="index-people-card search-teacher-item">
                <a target="_blank" href="user/user.html" class="teacher-item">
                    <img class="search-teacher-avatar" src="./images/search_user_tou1.png">
                    <span class="teacher-name">smile浅笑</span>
                    <span class="teacher-job">普通讲师</span>
                </a>
            </li>
            <li class="index-people-card search-teacher-item">
                <a target="_blank" href="user/user.html" class="teacher-item">
                    <img class="search-teacher-avatar" src="./images/search_user_tou2.png">
                    <span class="teacher-name">七月在夏天</span>
                    <span class="teacher-job">讲师</span>
                </a>
            </li>
            -->
        </ul>


        <div class="page">

            <span class="disabled_page">首页</span>
            <span class="disabled_page">上一页</span>
            <a href="javascript:void(0)" class="active text-page-tag">1</a>
            <a class="text-page-tag" href="/course/list?page=2">2</a>
            <a class="text-page-tag" href="/course/list?page=3">3</a>
            <a class="text-page-tag" href="/course/list?page=4">4</a>
            <a class="text-page-tag" href="/course/list?page=5">5</a>
            <a class="text-page-tag" href="/course/list?page=6">6</a>
            <a class="text-page-tag" href="/course/list?page=7">7</a>
            <a href="/course/list?page=2">下一页</a>
            <a href="/course/list?page=28">尾页</a>

        </div>


    </div>


    <div class="search-course-main"></div>
    <uc1:footer runat="server" ID="footer" />
    <script src="js/search_user.js"></script>
</div>
</body>
</html>
