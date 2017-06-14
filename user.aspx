﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="user_user" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <title>教师详情页</title>
    <link rel="stylesheet" href="libs/font-awesome/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/style.css"/>
</head>
<body>
    <div>
        
<div class="mask hidden"></div>
<div class="login-panel js-loginPanel hidden">
    <div class="login-header">
        <span class="close js-close">关闭</span>
    </div>
    <div class="login-content">
        <ul class="login-title js-tabTitle cf">
            <!-- js -->
            <li class="active fl">用户登录</li>
            <li class="fl">找回密码</li>
        </ul>
        <!-- login -->
        <div class="login-form js-forms">
            <form action="#" id="loginForm">
                <div class="form-control pseudo-element js-login-type">
                    <input type="radio" id="example1" name="usertpye" class="pseudo-radio" value="0" checked/>
                    <label for="example1"></label><span>学生</span>
                    <input type="radio" id="example2" name="usertpye" class="pseudo-radio" value="1"/>
                    <label for="example2"></label><span>教师</span>
                    <input type="radio" id="example3" name="usertpye" class="pseudo-radio" value="2"/>
                    <label for="example3"></label><span>专家</span>
                </div>
                <div class="form-control icon-user">
                    <input type="text" class="form-input" name="s_number" placeholder="输入您的学号/工号">
                </div>
                <div class="form-control icon-pw">
                    <input type="password" class="form-input" name="password" placeholder="输入密码">
                </div>
                <button type="submit" class="form-button">
                    立即登录
                </button>
            </form>
        </div>
        <!-- find password -->
        <div class="login-form js-forms hidden">
            <form action="#" id="findPwd">
                <div class="form-control icon-user ">
                    <input type="text" class="form-input" name="s_number" placeholder="输入您的学号/工号">
                </div>
                <div class="form-control icon-pw">
                    <input type="text" class="form-input" name="realname" placeholder="请输入你的真实姓名">
                </div>
                <button type="submit" class="form-button">
                    提交重置密码邮件
                </button>
            </form>
        </div>
    </div>

</div>
<div class="header">
    <div class="header-in cf">
        <div class="logo fl">
            <a href="#"><img src="images/logo3.png" style=" margin-top:10px;" alt=""></a>
        </div>
        <ul class="nav fl">
            <li class="nav-item"><a href="course/course-list.html">全部课程</a></li>
        </ul>
        <div class="user fr">
            <div class="user-avatar js-userAvatar fr">
                <img src="images/small.jpg" alt="">

                <!-- not login -->
                <ul class="user-menu js-userMenu notlogin">
                    <li class="user-text">
                        <a href="#">身份: 游客</a>
                    </li>
                    <li class="menu-text">
                        <a href="#">请登录...</a>
                    </li>
                </ul>
                <!-- already login -->
                <ul class="user-menu login hidden">
                    <li class="user-text">
                        <a href="#">学号: 201502525</a>
                    </li>
                    <li class="menu-text">
                        <a href="#">个人中心</a>
                    </li>
                    <li class="menu-text">
                        <a href="#">我的学习</a>
                    </li>
                    <li class="menu-text">
                        <a href="#">退出登录</a>
                    </li>
                </ul>

            </div>


            <div class="user-nav fr">
                <a href="#" class="js-login">登录</a>
            </div>
        </div>
        <div class="search fr cf">
            <div class="search-type fl">
                <!-- js -->
                <span class="selected-type js-select">课程</span>
                <b class="bottom-arr"></b>
                <!-- js -->
                <ul class="search-list js-selectList hidden">
                    <li>课程</li>
                    <li>用户</li>
                    <li>资源</li>
                </ul>
            </div>
            <div class="search-content fl">
                <form action="">
                    <input class="search-input" type="text" placeholder="请输入内容">
                </form>
            </div>
            <button type="submit" class="search-btn fr js-login"></button>
        </div>
    </div>
</div>
<div class="container">
    <!-- code here -->


    <div class="bg-other">
        <div  id="user_infor" class="bg-other-in">
            <%--<div class="bg-other-l">
                <div class="bg-other-l-in">
                    <img class="teacher-slider-avatar" src="http://img.mukewang.com/53df3b7a0001b45c01400140-200-200.jpg">
                </div>
            </div>
            <div class="bg-other-r">
                <h3 class="user-name clearfix">
                    <span>milanlover</span>
                </h3>

                <p class="about-info">JAVA开发工程师</p>
                <p class="user-desc">这位同学很懒，木有签名的说～</p>
            </div>--%>
        </div>
    </div>


    <div class="search-course-title">Ta主讲的<span class="search-more"><a href="#">全部课程></a></span></div>

    <div id="course_content">
        <%--<hr size="1" width="840px" align="center" color="#dadde2">

    <div class="search-course-content">
        <div class="search-course-contentdetails"><img src="../images/teacher_content_js4.png">
            <div class="search-course-contentdetails-wend">

                <p><span class="teacher-content-font"><a href="#">形形色色的下拉菜单</a></span></p>
                <div class="search-course-contentdetails-wend-ziti2" style="line-height: 65px">JavaScript<span
                        class="search-course-contentdetails-wend-null"></span>高级讲师
                </div>


                <div class="search-course-contentdetails-wend-ziti2">
                    使用不同的技术实现丰富多彩的下拉菜单
                </div>

            </div>
        </div>
    </div>


    <hr size="1" width="840px" align="center" color="#dadde2">

    <div class="search-course-content">
        <div class="search-course-contentdetails"><img src="../images/teacher_content_js5.png">
            <div class="search-course-contentdetails-wend">

                <p><span class="teacher-content-font"><a href="#">商城分类导航效果</a></span></p>
                <div class="search-course-contentdetails-wend-ziti2" style="line-height: 65px">JavaScript<span
                        class="search-course-contentdetails-wend-null"></span>高级讲师
                </div>


                <div class="search-course-contentdetails-wend-ziti2">
                    两种方法实现分类，还有小技巧哦！
                </div>

            </div>
        </div>
    </div>


    <hr size="1" width="840px" align="center" color="#dadde2">

    <div class="search-course-content">
        <div class="search-course-contentdetails"><img src="../images/teacher_content_js6.png">
            <div class="search-course-contentdetails-wend">

                <p><span class="teacher-content-font"><a href="#">展开与收起效果</a></span></p>
                <div class="search-course-contentdetails-wend-ziti2" style="line-height: 65px">JavaScript<span
                        class="search-course-contentdetails-wend-null"></span>高级讲师
                </div>
                <div class="search-course-contentdetails-wend-ziti2">
                    将您实现不同的展开收起效果！
                </div>

            </div>
        </div>
    </div>--%>
    </div>
    


    <div class="footer">
        <div class="footer-in">
            <div class="footer-link cf">
                <a href="#" target="_blank">友情链接</a>
                <a href="#" target="_blank">友情链接</a>
                <a href="#" target="_blank">友情链接</a>
                <a href="#" target="_blank">友情链接</a>
                <a href="#" target="_blank">友情链接</a>
                <a href="#" target="_blank">友情链接</a>
            </div>
            <p>Copyright © 2017 domain.com All Rights Reserved</p>
            <p>京ICP备 1234567890</p>
        </div>
    </div>
    <div class="backtop"></div>
</div>

    </div>
<script src="libs/jquery/jquery.min.js"></script>
<!-- 全局使用（表单验证及登录框） -->
<script src="libs/jquery-validation/jquery.validate.min.js"></script>
<script src="libs/jquery-validation/localization/messages_zh.js"></script>
<script src="js/main.js"></script>

<script src="js/user.js"></script>

</body>
</html>
