<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="course-list.aspx.cs" Inherits="_Default" %>
<%@ Register Src="~/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/footer.ascx" TagPrefix="uc1" TagName="footer" %>

<!DOCTYPE html>
<html lang="zh_CN">
<head>
    <meta charset="UTF-8">
    <title>课程列表页</title>
    <uc1:header runat="server" ID="header" />
<div class="container">
    <!-- code here -->
    <div class="index-main">
        <div class="course-list-container-nav ">

            <div id="course_nav" class="course-list-container-nav-direction ">
                <%--<span>专业方向：</span>
                <a href="course-list.aspx" class="on">全部</a>
                <a href="course-list.aspx">计算机网络技术</a>
                <a href="course-list.aspx">计算机应用网站开发</a>
                <a href="course-list.aspx">数字媒体</a>
                <a href="course-list.aspx">移动互联</a>--%>
            </div>
        </div>

        <div class="course-list-container-sort ">
            <a href="course-list.aspx">好评</a>&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<a href="course-list.aspx">最新</a>
        </div>

        <div class="course-list-container-list cf">
            <ul id="cf" class="cf">
                <%--<li>
                    <a href="course-content.html">
                        <div class="course-list-img">
                            <img src="../images/course-list-container-cover1.jpg" width="223" height="124">
                        </div>
                        <p class="course-list-container-list-book-name">PHP从入门到精通</p>
                        <p class="course-list-container-list-difficulty">所属专业：计算机应用网站开发</p>
                        <p class="course-list-container-list-teather">主讲人：王某某</p>
                        <p class="course-list-container-list-study">1429人已学过</p>

                    </a>
                </li>
                <li>
                    <a href="course-content.html">
                        <div class="course-list-img">
                            <img src="../images/course-list-container-cover2.jpg" width="223" height="124">
                        </div>
                        <p class="course-list-container-list-book-name">HTML5+CSS3从入门到精通</p>
                        <p class="course-list-container-list-difficulty">所属专业：计算机应用网站开发</p>
                        <p class="course-list-container-list-teather">主讲人：张某某</p>
                        <p class="course-list-container-list-study">1429人已学过</p>

                    </a>
                </li>
                <li>
                    <a href="course-content.html">
                        <div class="course-list-img">
                            <img src="../images/course-list-container-cover3.jpg" width="223" height="124">
                        </div>
                        <p class="course-list-container-list-book-name">零点起飞 JavaScript+jQuery</p>
                        <p class="course-list-container-list-difficulty">所属专业：计算机应用网站开发</p>
                        <p class="course-list-container-list-teather">主讲人：沈某某</p>
                        <p class="course-list-container-list-study">1429人已学过</p>

                    </a>
                </li>
                <li>
                    <a href="course-content.html">
                        <div class="course-list-img">
                            <img src="../images/course-list-container-cover4.jpg" width="223" height="124">
                        </div>
                        <p class="course-list-container-list-book-name">web程序设计——ASP.NET</p>
                        <p class="course-list-container-list-difficulty">所属专业：计算机应用网站开发</p>
                        <p class="course-list-container-list-teather">主讲人：李某某</p>
                        <p class="course-list-container-list-study">1429人已学过</p>

                    </a>
                </li>
                <li>
                    <a href="course-content.html">
                        <div class="course-list-img">
                            <img src="../images/course-list-container-cover5.jpg" width="223" height="124">
                        </div>
                        <p class="course-list-container-list-book-name">CSS3从入门到精通</p>
                        <p class="course-list-container-list-difficulty">所属专业：计算机应用网站开发</p>
                        <p class="course-list-container-list-teather">主讲人：夏某某</p>
                        <p class="course-list-container-list-study">1429人已学过</p>

                    </a>
                </li>
                <li>
                    <a href="course-content.html">
                        <div class="course-list-img">
                            <img src="../images/course-list-container-cover7.jpg" width="223" height="124">
                        </div>
                        <p class="course-list-container-list-book-name">Java从入门到精通</p>
                        <p class="course-list-container-list-difficulty">所属专业：计算机应用网站开发</p>
                        <p class="course-list-container-list-teather">主讲人：张某某</p>
                        <p class="course-list-container-list-study">1429人已学过</p>

                    </a>
                </li>
                <li>
                    <a href="course-content.html">
                        <div class="course-list-img">
                            <img src="../images/course-list-container-cover6.jpg" width="223" height="124">
                        </div>
                        <p class="course-list-container-list-book-name">HTML5+CSS3从入门到精通</p>
                        <p class="course-list-container-list-difficulty">所属专业：计算机应用网站开发</p>
                        <p class="course-list-container-list-teather">主讲人：张某某</p>
                        <p class="course-list-container-list-study">1429人已学过</p>

                    </a>
                </li>
                <li>
                    <a href="course-content.html">
                        <div class="course-list-img">
                            <img src="../images/course-list-container-cover8.jpg" width="223" height="124">
                        </div>
                        <p class="course-list-container-list-book-name">Java从入门到精通</p>
                        <p class="course-list-container-list-difficulty">所属专业：计算机应用网站开发</p>
                        <p class="course-list-container-list-teather">主讲人：张某某</p>
                        <p class="course-list-container-list-study">1429人已学过</p>

                    </a>
                </li>
                <li>
                    <a href="course-content.html">
                        <div class="course-list-img">
                            <img src="../images/course-list-container-cover10.jpg" width="223" height="124">
                        </div>
                        <p class="course-list-container-list-book-name">C#程序设计基础教程</p>
                        <p class="course-list-container-list-difficulty">所属专业：计算机应用网站开发</p>
                        <p class="course-list-container-list-teather">主讲人：陈某某</p>
                        <p class="course-list-container-list-study">1429人已学过</p>

                    </a>
                </li>
                <li>
                    <a href="course-content.html">
                        <div class="course-list-img">
                            <img src="../images/course-list-container-cover9.jpg" width="223" height="124">
                        </div>
                        <p class="course-list-container-list-book-name">SQL Server从入门到精通</p>
                        <p class="course-list-container-list-difficulty">所属专业：计算机应用网站开发</p>
                        <p class="course-list-container-list-teather">主讲人：赵某某</p>
                        <p class="course-list-container-list-study">1429人已学过</p>

                    </a>
                </li>
--%>
            </ul>
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
</div>


<uc1:footer runat="server" ID="footer" />
<script src="js/courseList.js"></script>
</body>
</html>
