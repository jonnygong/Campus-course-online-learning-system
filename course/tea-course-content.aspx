<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tea-course-content.aspx.cs" Inherits="tea_course_content" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <title>课程详情－视频</title>
    <link rel="stylesheet" href="../css/iconfonts-arrow/iconfont.css" />
    <link rel="stylesheet" href="./css/style.css" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="mask hidden"></div>
        <div class="login-panel js-loginPanel hidden">
            <div class="login-header">
                <span class="close js-close">关闭</span>

                <div class="login-form js-forms">
                    <form action="#" id="loginForm">
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
                    <a href="../index.html">
                        <img src="./images/logo3.png" alt=""></a>
                </div>
                <ul class="nav fl">
                    <li class="nav-item"><a href="../course/course-list.html">全部课程</a></li>
                </ul>
                <div class="user fr">
                    <div class="user-avatar js-userAvatar fr">
                        <img src="./images/small.jpg" alt="">

                        <!-- not login -->
                        <ul class="user-menu notlogin hidden">
                            <li class="user-text">
                                <a href="#">身份: 游客</a>
                            </li>
                            <li class="menu-text">
                                <a href="#">请登录...</a>
                            </li>
                        </ul>
                        <!-- already login -->
                        <ul class="user-menu js-userMenu login">
                            <li class="user-text">
                                <a href="tea-index.html">工号: 0001</a>
                            </li>
                            <li class="menu-text">
                                <a href="tea-index.html">个人中心</a>
                            </li>
                            <li class="menu-text">
                                <a href="tea-lesson.html">我的课程 </a>
                            </li>
                            <li class="menu-text">
                                <a href="#">退出登录</a>
                            </li>
                        </ul>

                    </div>


                    <div class="user-nav fr">
                        <!--  -->
                        <a href="tea-index.html">这里显示教师用户名</a>
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
            <div class="couse-detail">
                <div class="couse-detail-classification ">
                    <ul class=" couse fl">
                        <li class="couse-item"><a href="#">首页 ></a></li>
                        <li class="couse-item"><a href="#">全部课程 ></a></li>
                        <li class="couse-item"><a href="#">课程开发 ></a></li>
                        <li class="couse-item"><a href="#">编程开发 ></a></li>
                        <li class="couse-item"><a href="#">课程详情</a></li>

                    </ul>

                </div>
                <div class="couse-detail-introduction course-shadow fl">
                    <div class="couse-detail-introduction_left fl" id="lesson-imgurl">
                        <img src="./images/couse-detail-introduction.jpg" width="450"
                            height="251">
                    </div>
                    <div class="couse-detail-introduction_right fl ">
                        <div class="couse-detail-introduction_right_top">
                            <h1 class="" ondblclick="edit(this)" id="lesson-title">Laravel实战：任务管理系统</h1>
                            <div class="couse-detail-introduction_right_topfont">
                                <span class="course-detail-info">课程负责人：<span class="" ondblclick="edit(this)" id="lesson-teaname">XXX</span></span>
                                <span class="course-detail-info">学分：<span class="" ondblclick="edit(this)" id="lesson-profession">XXX</span></span>
                                <span class="course-detail-info">学时：<span class="" ondblclick="edit(this)" id="lesson-time">XXX</span></span>
                            </div>


                        </div>
                        <div class="couse-detail-introduction_right_foot ">
                            <h2>课程简介</h2>
                            <p class="couse-detail-introduction_right_footfont" ondblclick="edit(this)" id="lesson-introduction">
                                目前国内最in最规范的laravel中文教程，全五星好评，laravel入门及进阶必学；
                        以实战的形式，不照搬文档，实用而可迁移，触类旁通后可应对大部分日常开发；
                        率先使用homestead这一最优雅最先进的配置环境，抛弃傻瓜而缺乏长远用处的wamp；
                            </p>
                            <input type="submit" name="register" value="上传视频" class="btn_btn-submit disabled btn_enabled add_video"
                                tabindex="6">
                        </div>

                    </div>


                </div>
                <div class="couse-detail-content fl">
                    <div class="couse-detail-content_left course-shadow fl">
                        <ul class=" couse fl">
                            <li class="couse-content-item active"><a href="tea-course-content.html">视频</a></li>
                            <li class="couse-content-item"><a href="course-content-doc.html">文档 </a></li>
                            <li class="couse-content-item"><a href="course-content-test.html">试题 </a></li>
                            <li class="couse-content-item"><a href="course-content-qanda.html">问答</a></li>

                        </ul>
                    </div>
                    <div class="couse-detail-content_lefter course-shadow fl">

                        <div class="couse-detail-content_lefter_top fl" id="resourcevideo">
                            <%--<div class="couse-detail-content_lefter_topin fl">
                        <div class="course-img">
                            <a href="../video/video-course-content.html">
                                <div id="lesson-content-img"><img src="./images/course-content3.jpg"
                                     width="116" height="65"></div>
                                <div class="couse-list-order">第1集</div>
                            </a>
                        </div>
                        <div class="couse-detail-content_lefter_topin_font"><a href="../video/video-course-content.html" id="resource-desc">详细了解Java课程</a><span class="trash"></span></div>
                    </div>
                    <div class="couse-detail-content_lefter_topin fl">
                        <div class="course-img">
                            <a href="../video/video-course-content.html">
                                <img src="./images/course-content1.jpg"
                                     width="116" height="65">
                                <div class="couse-list-order">第2集</div>
                            </a>
                        </div>
                        <div class="couse-detail-content_lefter_topin_font"><a href="../video/video-course-content.html" id="resource-desc2">更详细了解Java课程</a><span class="trash"></span></div>
                    </div>
                    <div class="couse-detail-content_lefter_topin fl">
                        <div class="course-img">
                            <a href="../video/video-course-content.html">
                                <img src="./images/course-content2.jpg"
                                     width="116" height="65">
                                <div class="couse-list-order">第3集</div>
                            </a>
                        </div>
                        <div class="couse-detail-content_lefter_topin_font"><a href="../video/video-course-content.html" id="resource-desc3">再详细了解Java课程</a><span class="trash"></span></div>
                    </div>
                    <div class="couse-detail-content_lefter_topin fl">
                        <div class="course-img">
                            <a href="../video/video-course-content.html">
                                <img src="./images/course-content3.jpg"
                                     width="116" height="65">
                                <div class="couse-list-order">第4集</div>
                            </a>
                        </div>
                        <div class="couse-detail-content_lefter_topin_font"><a href="../video/video-course-content.html" id="resource-desc4">仍详细了解Java课程</a><span class="trash"></span></div>
                    </div>
                    <div class="couse-detail-content_lefter_topin fl">
                        <div class="course-img">
                            <a href="../video/video-course-content.html">
                                <img src="./images/course-content1.jpg"
                                     width="116" height="65">
                                <div class="couse-list-order">第5集</div>
                            </a>
                        </div>
                        <div class="couse-detail-content_lefter_topin_font"><a href="../video/video-course-content.html" id="resource-desc5">又详细了解Java课程</a><span class="trash"></span></div>
                    </div>
                    <div class="couse-detail-content_lefter_topin fl">
                        <div class="course-img">
                            <a href="../video/video-course-content.html">
                                <img src="./images/course-content2.jpg"
                                     width="116" height="65">
                                <div class="couse-list-order">第6集</div>
                            </a>
                        </div>
                        <div class="couse-detail-content_lefter_topin_font"><a href="../video/video-course-content.html" id="resource-desc6">双详细了解Java课程</a><span class="trash"></span></div>
                    </div>
                    <div class="couse-detail-content_lefter_topin fl">
                        <div class="course-img">
                            <a href="../video/video-course-content.html">
                                <img src="./images/course-content3.jpg"
                                     width="116" height="65">
                                <div class="couse-list-order">第7集</div>
                            </a>
                        </div>
                        <div class="couse-detail-content_lefter_topin_font"><a href="../video/video-course-content.html" id="resource-desc7">叒详细了解Java课程</a><span class="trash"></span></div>
                    </div>
                    <div class="couse-detail-content_lefter_topin fl">
                        <div class="course-img">
                            <a href="../video/video-course-content.html">
                                <img src="./images/course-content1.jpg"
                                     width="116" height="65">
                                <div class="couse-list-order">第8集</div>
                            </a>
                        </div>
                        <div class="couse-detail-content_lefter_topin_font"><a href="../video/video-course-content.html" id="resource-desc8">叕详细了解Java课程</a><span class="trash"></span></div>
                    </div>--%>
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
                    <div class="course-content-sidebar fr">
                        <div class="couse-detail-content_right course-shadow">
                            <h3>课程简介：</h3>
                            <div class="couse-detail-content_right_footfont" ondblclick="edit(this)" id="lesson-introduction-down">
                                &nbsp;&nbsp;需要有一定的网页基础知识如HTML、CSS样式等，并且已经学习完成《PHP入门篇》对PHP已经有了简单的了解，如变量、常量、数据类型等。全面的掌握PHP的理论知识与实践中的应用方法，提高编程能力与掌握网页开发技能。
                            </div>

                        </div>
                        <div class="couse-detail-content_righter course-shadow">
                            <div id="course-teacher-slider">
                                <ul class="">
                                    <li class="teacher-slider-item">

                                        <a target="_blank" href="#" class="teacher-item">
                                            <div id="lesson-teaimg-down">
                                                <img class="teacher-slider-avatar" src="http://img.mukewang.com/583f11e40001c79506400960-100-100.jpg"></div>
                                            <span class="teacher-slider-name" id="lesson-teaname-down">七月在夏天</span>
                                            <span class="teacher-slider-job" id="lesson-tea-description">神秘讲师“七月”</span>
                                        </a>
                                    </li>
                                    <li class="teacher-slider-item">

                                        <a target="_blank" href="#" class="teacher-item">
                                            <div id="lesson-teaimg-down">
                                                <img class="teacher-slider-avatar" src="http://img.mukewang.com/583f11e40001c79506400960-100-100.jpg"></div>
                                            <span class="teacher-slider-name" id="lesson-teaname-down">七月在夏天</span>
                                            <span class="teacher-slider-job" id="lesson-tea-description">神秘讲师“七月”</span>
                                        </a>
                                    </li>
                                    <li class="teacher-slider-item">

                                        <a target="_blank" href="#" class="teacher-item">
                                            <div id="lesson-teaimg-down">
                                                <img class="teacher-slider-avatar" src="http://img.mukewang.com/583f11e40001c79506400960-100-100.jpg"></div>
                                            <span class="teacher-slider-name" id="lesson-teaname-down">七月在夏天</span>
                                            <span class="teacher-slider-job" id="lesson-tea-description">神秘讲师“七月”</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <span class="slider-arrow slider-arrow-left" id="prev"><i class="iconfont icon-fanhui"></i></span>
                            <span class="slider-arrow slider-arrow-right" id="next"><i class="iconfont icon-gengduo"></i></span>
                        </div>
                    </div>
                </div>

            </div>
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


        <div class="bg-model"
            style="position: absolute; top: 0%; left: 0%; display: none; background: rgba(0,0,0,0.5); width: 100%; height: 100%; position: fixed; z-index: 9">

            <div class='con-model'
                style="position: absolute; left: 23%; top: 35%; border-radius: 8px; width: 55%; height: 15%; z-index: 99; background: #fff;">
                <ul>
                    <li style="padding: 50px 80px 50px 80px;">上传视频：
                    <input style="width: 220px;" class="add_lesson_input" type="text">
                        <button class="add_lesson_btn" style="margin: 0px 38px 30px 0px">上传</button>
                        <button class="add_lesson_btn" style="margin: 0px 8px 10px 0px">选择</button>
                    </li>

                </ul>

            </div>
        </div>

        <script src="libs/jquery/jquery.min.js"></script>


        <!-- 全局使用（表单验证及登录框） -->
        <script src="libs/jquery-validation/jquery.validate.min.js"></script>
        <script src="libs/jquery-validation/localization/messages_zh.js"></script>
        <script src="js/main.js"></script>
        <!-- 右侧教师轮播 -->
        <script src="js/jquery.marquee.js"></script>
        <script src="js/slide.js"></script>
        <script type="text/javascript" src="js/tether.js"></script>
        <script src="js/select.js"></script>
        <script type="text/javascript" src="js/load_detail.js"></script>
        <script>
            $('select.drop-select').each(function () {
                new Select({
                    el: this,
                    selectLikeAlignment: $(this).attr('data-select-like-alignement') || 'auto',
                    className: 'select-theme-dark'
                });
            });


            //双击编辑


            function edit(element) {

                var oldhtml = element.innerHTML;//获得元素之前的内容
                var newobj = document.createElement('input');//创建一个input元素
                newobj.type = 'text';//为newobj元素添加类型
                newobj.value = oldhtml;
                element.innerHTML = '';　　 //设置元素内容为空
                element.appendChild(newobj);//添加子元素
                newobj.focus();//获得焦点
                //设置newobj失去焦点的事件
                newobj.onblur = function () {
                    //下面应该判断是否做了修改并使用ajax代码请求服务端将id与修改后的数据提交
                    //alert(element.id);
                    //当触发时判断newobj的值是否为空，为空则不修改，并返回oldhtml
                    element.innerHTML = this.value ? this.value : oldhtml;
                }
            }


            //加入购物车点击事件


            // $(".add_video").click(function () {
            //     $(".bg-model").fadeTo(300,1)
            //     //隐藏窗体的滚动条
            //     $("body").css({ "overflow": "hidden" });
            // });

            // //模态框OK按钮点击事件
            // $(".bg-model-ok").click(function () {
            //     $(".bg-model").hide();
            //     //显示窗体的滚动条
            //     $("body").css({ "overflow": "visible" });
            // }).hover(function () {
            //     $(this).css({ "backgroundColor": "#8CC8C8" });
            // }, function () {
            //     $(this).css({ "backgroundColor": "#8CD4E6" });
            // });


            //点击空白隐藏
            $(".bg-model").click(function () {
                $(this).hide();
            })

            $(".con-model").click(function (e) {
                e.stopPropagation();

            })


            $('.add_video').on('click', function () {
                layer.open({
                    type: 1,
                    area: ['600px', '360px'],
                    shadeClose: true, //点击遮罩关闭
                    content: '\<\div style="padding:20px;">自定义内容\<\/div>'
                });
            });
        </script>
    </form>
</body>
</html>
