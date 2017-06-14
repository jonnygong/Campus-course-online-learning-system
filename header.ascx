<%@ Control Language="C#" AutoEventWireup="true" CodeFile="header.ascx.cs" Inherits="header" %>
<link rel="stylesheet" href="<% =URLHelper.getPath() %>css/style.css">
<link rel="stylesheet" href="<% =URLHelper.getPath() %>libs/font-awesome/css/font-awesome.min.css" />
<script>
    function getPath(name) {
        return window.localStorage.getItem(name) || "/";
    }
    function setPath(name, value) {
        window.localStorage.setItem(name, value);
    }
    // 路径读取
    var PATH = "<% =URLHelper.getPath() %>";
    var USERID = "<% =user_id %>";
    setPath("lib_path",PATH);
    setPath("user_id", USERID);

</script>
</head>
<body>
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
                <form method="get" action="" id="loginForm">
                    <div class="form-control pseudo-element js-login-type">
                        <input type="radio" id="example1" name="usertpye" class="pseudo-radio" value="0" checked />
                        <label for="example1"></label>
                        <span>学生</span>
                        <input type="radio" id="example2" name="usertpye" class="pseudo-radio" value="1" />
                        <label for="example2"></label>
                        <span>教师</span>
                        <input type="radio" id="example3" name="usertpye" class="pseudo-radio" value="2" />
                        <label for="example3"></label>
                        <span>专家</span>
                    </div>
                    <div class="form-control icon-user">
                        <input type="text" class="form-input" name="s_number" placeholder="输入您的学号/工号">
                    </div>
                    <div class="form-control icon-pw">
                        <input type="password" class="form-input" name="password" placeholder="输入密码">
                    </div>
                    <button type="submit" class="form-button" id="loginBtn">
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
                    <div class="form-control">
                        <input type="text" class="form-input" name="mail" placeholder="请输入联系邮箱">
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
                <a href="<% =URLHelper.getPath() %>index.aspx">
                    <img src="<% =URLHelper.getPath() %>images/logo3.png" alt=""></a>
            </div>
            <ul class="nav fl" id="js-nav">
                <!--<li class="nav-item"><a href="course/course-list.html">全部课程</a></li>-->
            </ul>
            <div class="user fr">
                <div class="user-avatar js-userAvatar fr">
                    <img src="<% =URLHelper.getPath() %>images/small.jpg" alt="">
                   
                <%=usermenu %>
                     <!--already login-->
                     <!--<ul class="user-menu login js-userMenu">
                        
                    </ul>-->
                    <!--already login-->
                <!-- not login -->
                <!--<ul class="user-menu notlogin js-userMenu">
                    <li class="user-text">
                        <a href="javascript:void(0)" class="js-login">身份: 游客</a>
                    </li>
                    <li class="menu-text">
                        <a href="javascript:void(0)" class="js-login">请登录...</a>
                    </li>
                </ul>-->
                <!-- not login -->

            </div>
            <div class="user-nav fr">
                <!--<a href="javascript:void(0)" class="js-login" id="js-userinfo">登录</a>-->
                <%=usernav %>
            </div>
            
        </div>
        <div class="search fr cf">
            <div class="search-type fl">
                <!-- js -->
                <span class="selected-type js-select">全部</span>
                <b class="bottom-arr"></b>
                <!-- js -->
                <ul class="search-list js-selectList hidden">
                    <li>全部</li>
                    <li>课程</li>
                    <li>用户</li>
                    <li>资源</li>
                </ul>
            </div>
            <div class="search-content fl">
                <form method="get" action="search.aspx" name="searchForm" id="searchForm">
                    <input class="search-input" name="content" type="text" placeholder="请输入内容">
                </form>
            </div>
            <button type="button" class="search-btn fr js-search"></button>
        </div>
    </div>
</div>