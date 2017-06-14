<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search_doc.aspx.cs" Inherits="search_doc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <title>搜索页-资源</title>
    <link rel="stylesheet" href="libs/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/search.css">
   
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
                <div class="form-control icon-user">
                    <input type="text" class="form-input" name="s_number" placeholder="输入您的学号">
                </div>
                <div class="form-control icon-pw">
                    <input type="text" class="form-input" name="password" placeholder="输入密码">
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
                    <input type="text" class="form-input" name="s_number" placeholder="输入您的学号">
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
            <a href="#"><img src="images/logo3.png" alt=""></a>
        </div>
        <ul class="nav fl">
            <li class="nav-item"><a href="course-list.html">全部课程</a></li>
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
                <a href="#">其他</a>
                <a href="#">其他</a>
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
            <button type="submit" class="search-btn fr"></button>
        </div>
    </div>
</div>
<div class="container">
    <!-- code here -->

    <div id="search-course-header">

        <div id="search-course-searchbox">
            <div class="search-course-searchbox-ico">
                <i class="fa fa-search" aria-hidden="true"></i>
            </div>
            <input type="text" class="search-course-searchbox-ipt" placeholder="请输入想搜索的内容" id="keyword">
            <input type="button" class="search-course-searchbox-but" value="搜索" onclick="searchDoc()">

            <ul class="search-course-searchbox-hot">
                <li>热门搜索：</li>
                <li><a href="#" target="_blank">java</a></li>
                <li><a href="#" target="_blank">AngularJS</a></li>
                <li><a href="#" target="_blank">mysql</a></li>
                <li><a href="#" target="_blank">php</a></li>
                <li><a href="#" target="_blank">ajax</a></li>
                <li><a href="#" target="_blank">C#</a></li>


            </ul>
        </div>

    </div>


    <ul class="search-course-list">
        <li><a href="search.html">全部</a></li>
        <li><a href="search-course.html">课程</a></li>
        <li class="on"><a href="search-doc.html">资源</a></li>
        <li><a href="search-user.html">用户</a></li>


    </ul>
    <div class="search-course-list-record">共找到543个相关内容</div>


    <ul class="search-DOC-content cf" id="js-SearchDoc">
       <%-- <li class="search-DOC-li">
            <a href="">
                <div class="couse-detail-content_lefter_topin_docleft fl">
                    <i class="file-icon icon-pdf"></i>
                </div>
                <div class="couse-detail-content_lefter_topin_docrig fl">
                    <h1>PHP环境LAMP/LNMP安装与配置</h1>
                    <div class="couse-detail-content_lefter_topin_docrig_font fl">PHP</div>
                </div>
            </a>
        </li>

        <li class="search-DOC-li">
            <a href="">
                <div class="couse-detail-content_lefter_topin_docleft fl">
                    <i class="file-icon icon-word"></i>
                </div>
                <div class="couse-detail-content_lefter_topin_docrig fl">
                    <h1>Ajax全接触</h1>
                    <div class="couse-detail-content_lefter_topin_docrig_font fl">ajax</div>
                </div>
            </a>
        </li>
        <li class="search-DOC-li">
            <a href="">
                <div class="couse-detail-content_lefter_topin_docleft fl">
                    <i class="file-icon icon-video"></i>
                </div>
                <div class="couse-detail-content_lefter_topin_docrig fl">
                    <h1>实现图片水印</h1>
                    <div class="couse-detail-content_lefter_topin_docrig_font fl">JAVA</div>
                </div>
            </a>
        </li>
        <li class="search-DOC-li">
            <a href="">
                <div class="couse-detail-content_lefter_topin_docleft fl">
                    <i class="file-icon icon-ppt"></i>
                </div>
                <div class="couse-detail-content_lefter_topin_docrig fl">
                    <h1>PHP与MySQL关系大揭秘</h1>
                    <div class="couse-detail-content_lefter_topin_docrig_font fl">MySQL</div>
                </div>
            </a>
        </li>
        <li class="search-DOC-li">
            <a href="">
                <div class="couse-detail-content_lefter_topin_docleft fl">
                    <i class="file-icon icon-audio"></i>
                </div>
                <div class="couse-detail-content_lefter_topin_docrig fl">
                    <h1>用JS实现图片剪切效果</h1>
                    <div class="couse-detail-content_lefter_topin_docrig_font fl">JavaScript</div>
                </div>
            </a>
        </li>
        <li class="search-DOC-li">
            <a href="">
                <div class="couse-detail-content_lefter_topin_docleft fl">
                    <i class="file-icon icon-txt"></i>
                </div>
                <div class="couse-detail-content_lefter_topin_docrig fl">
                    <h1>JavaScript的基础总结</h1>
                    <div class="couse-detail-content_lefter_topin_docrig_font fl">JavaScript</div>
                </div>
            </a>
        </li>
        <li class="search-DOC-li">
            <a href="">
                <div class="couse-detail-content_lefter_topin_docleft fl">
                    <i class="file-icon icon-html"></i>
                </div>
                <div class="couse-detail-content_lefter_topin_docrig fl">
                    <h1>VUX</h1>
                    <div class="couse-detail-content_lefter_topin_docrig_font fl">所属课程名称</div>
                </div>
            </a>
        </li>--%>
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
<script src="libs/jquery/jquery.min.js"></script>
<!-- 全局使用（表单验证及登录框） -->
<script src="libs/jquery-validation/jquery.validate.min.js"></script>
<script src="libs/jquery-validation/localization/messages_zh.js"></script>
<script src="js/main.js"></script>
<script src="js/search_doc.js"></script>
    </div>
</body>
</html>
