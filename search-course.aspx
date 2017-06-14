<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search-course.aspx.cs" Inherits="index" %>

<%@ Register Src="~/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/footer.ascx" TagPrefix="uc1" TagName="footer" %>



<!DOCTYPE html>
<html lang="zh_CN">
<head>
    <meta charset="UTF-8">
    <title>搜索页-课程</title>
    <uc1:header runat="server" ID="header" />
    <div class="container">

        <div id="search-course-header">

            <div id="search-course-searchbox">
                <div class="search-course-searchbox-ico">
                    <i class="fa fa-search" aria-hidden="true"></i>
                </div>
                <form action="">
                    <input type="text" class="search-course-searchbox-ipt" placeholder="请输入想搜索的内容" id="keyword">
                    <input type="button" class="search-course-searchbox-but" value="搜索" id="js-search-btn">
                </form>
            </div>

        </div>


        <ul class="search-course-list">
            <li><a href="<% =URLHelper.getPath() %>search.aspx?content=<% =URLHelper.getUrlParam() %>">全部</a></li>
            <li class="on"><a href="<% =URLHelper.getPath() %>search-course.aspx?content=<% =URLHelper.getUrlParam() %>">课程</a></li>
            <li><a href="<% =URLHelper.getPath() %>search-doc.aspx?content=<% =URLHelper.getUrlParam() %>">资源</a></li>
            <li><a href="<% =URLHelper.getPath() %>search-user.aspx?content=<% =URLHelper.getUrlParam() %>">用户</a></li>


        </ul>
        <div class="search-course-list-record">共找到<span id="search_result"></span>个相关内容</div>
        <div id="js-searchcourse">

            
            <!--
    <div class="search-course-content">
        <div class="search-course-contentdetails"><img src="images/search_course_js.jpg">
            <div class="search-course-contentdetails-wend">

                <p>[课程]<span class="search-course-contentdetails-wend-ziti"><a href="#">JavaScript进阶篇</a></span></p>
                <div class="search-course-contentdetails-wend-ziti2">
                    <span>所属课程：javascript</span>

                    <span>讲师：XXX</span>
                    <span>学分：XXX</span>
                    <span>学时：XXX</span>
                </div>

                <div class="search-course-contentdetails-wend-jianjie">课程简介： 做为WEB攻城师必备技术<a href="#">JavaScript</a>，本课程从如何插入JS代码开始，学习JS基础语法、语法、函数、方法等，让你掌握JS编程思路、知识的使用等，实现运用JS语言为网页增加动态效果，达到与用户交互的目的。
                </div>
            </div>
        </div>

    </div>


    <hr size="1" width="840px" align="center" color="#dadde2">

    <div class="search-course-content">
        <div class="search-course-contentdetails"><img src="images/search_course_js1.png">
            <div class="search-course-contentdetails-wend">

                <p>[课程]<span class="search-course-contentdetails-wend-ziti"><a href="#">JavaScript入门篇</a></span></p>
                <div class="search-course-contentdetails-wend-ziti2">
                    <span>所属课程：javascript</span>

                    <span>讲师：XXX</span>
                    <span>学分：XXX</span>
                    <span>学时：XXX</span>
                </div>

                <div class="search-course-contentdetails-wend-jianjie">课程简介： 这是一个帮助您系统学习<a href="#">JavaScript</a>编程语言的课程，该课由浅入深的介绍<a
                        href="#">JavaScript</a>的语言特性，结合实际例子解析常见误区，启发你的思考，帮助学习者从入门到掌握，提升您的 <a href="#">JavaScript</a> 技能。
                </div>
            </div>
        </div>
    </div>


    <hr size="1" width="840px" align="center" color="#dadde2">

    <div class="search-course-content">
        <div class="search-course-contentdetails"><img src="images/search-course-js2.png">
            <div class="search-course-contentdetails-wend">

                <p>[课程]<span class="search-course-contentdetails-wend-ziti"><a href="#">JavaScript深入浅出</a></span></p>
                <div class="search-course-contentdetails-wend-ziti2">
                    <span>所属课程：javascript</span>

                    <span>讲师：XXX</span>
                    <span>学分：XXX</span>
                    <span>学时：XXX</span>
                </div>

                <div class="search-course-contentdetails-wend-jianjie">课程简介： 这是一个帮助您系统学习<a href="#">JavaScript</a>编程语言的课程，该课由浅入深的介绍<a
                        href="#">JavaScript</a>的语言特性，结合实际例子解析常见误区，启发你的思考，帮助学习者从入门到掌握，提升您的 <a href="#">JavaScript</a> 技能。
                </div>
            </div>
        </div>
    </div>


    <hr size="1" width="840px" align="center" color="#dadde2">

    <div class="search-course-content">
        <div class="search-course-contentdetails"><img src="images/search-course-js3.png">
            <div class="search-course-contentdetails-wend">

                <p>[课程]<span class="search-course-contentdetails-wend-ziti">用<a href="#">JavaScript实现图片缓慢缩放效果</a></span>
                </p>
                <div class="search-course-contentdetails-wend-ziti2">
                    <span>所属课程：javascript</span>

                    <span>讲师：XXX</span>
                    <span>学分：XXX</span>
                    <span>学时：XXX</span>
                </div>

                <div class="search-course-contentdetails-wend-jianjie">课程简介：
                    在网页制作当中，我们经常会对图片做一些处理，比如图片的放大和缩小。本课程讲解如何使用<a href="#">JavaScript</a>技术实现图片缩放效果，其中将用到setInterval()和clearInterval()两个重
                </div>
            </div>
        </div>
    </div>-->
        </div>

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
    <script src="js/search_course.js"></script>
</body>
</html>
