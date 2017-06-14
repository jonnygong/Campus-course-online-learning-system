<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tea-lesson.aspx.cs" Inherits="teacher_tea_lesson" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <meta charset="UTF-8">
    <title>教师中心－课程</title>
<a href="~/header.ascx">~/header.ascx</a>
<div class="container">
    <!-- code here -->

    <div class="bg-other">
        <div class="bg-other-in">
            <div class="bg-other-l">
                <div class="bg-other-l-in">
                    <img src="../images/tx.jpg" alt=""/>
                </div>
            </div>
            <div class="bg-other-r">
                <h3 class="user-name clearfix">
                    <span>全栈梦想师JonnyGong</span>
                </h3>

                <p class="about-info">全栈工程师</p>
                <p class="user-desc">这位同学很懒，木有签名的说～</p>
            </div>
        </div>
    </div>
    <div class="tea-main">
        <div class="tea-main-in">
            <div class="tea-main-l">

                <ul>
                    <li><a href="tea-index.aspx">
                        <i class="fa fa-hand-peace-o" aria-hidden="true"></i>
                        <span>个人主页</span>
                        <i class="fa fa-caret-right" aria-hidden="true"></i>
                    </a>
                    </li>
                    <li><a href="tea-lesson.aspx">
                        <i class="fa fa-hand-peace-o" aria-hidden="true"></i>
                        <span>我的课程</span>
                        <i class="fa fa-caret-right" aria-hidden="true"></i></a>
                    </li>
                    <li><a href="tea-question.aspx">
                        <i class="fa fa-hand-peace-o" aria-hidden="true"></i>
                        <span>我的问答</span>
                        <i class="fa fa-caret-right" aria-hidden="true"></i></a>
                    </li>
                    <li><a href="tea-notes.aspx">
                        <i class="fa fa-hand-peace-o" aria-hidden="true"></i>
                        <span>我的笔记</span>
                        <i class="fa fa-caret-right" aria-hidden="true"></i></a>
                    </li>

                    <li><a href="tea-information.aspx">
                        <i class="fa fa-hand-peace-o" aria-hidden="true"></i>
                        <span>个人设置</span>
                        <i class="fa fa-caret-right" aria-hidden="true"></i></a>
                    </li>
                </ul>

            </div>
            <div class="tea-main-r">
                <div class="tea-main-r-in">
                    <div class="tea-main-r-t">
                <ul>
                      <li><a href="tea-lesson.aspx">负责课程</a></li>
                      <li><a href="tea-lesson-upload.aspx">主讲课程</a></li>
                      
                  </ul>


               </div>


                    <div class="tea-main-r-content fl" id="tea-course">


                        <div class="tea-main-body pr cf">
                            <a href="tea-course-content.aspx" class="bg-lesson" target=_blank>
                                <img class="fl" src="http://img.mukewang.com/57a0676800013b2506000338.jpg"
                                     width="240" height="135"/>

                                <div class="content fl w636">

                                    <div class="subtitle_les">
                                        <a href="tea-course-content.html" target="_blank">vue.js入门基础</a>
                                    </div>
                                    <div class="describe">
                                        <span>教师：吴龙</span>
                                        <span class="ml20"><strong> 1</strong>学分<strong>50</strong>学时</span>
                                        <span class="ml20"> 更新完毕 </span>
                                    </div>
                                    <div class="course-detail">

                                        本课程主要讲解了vuejs 是如何站在前端巨人肩膀上，进行新项目的搭建，并通过简...
                                    </div>

                                </div>
                            </a>
                            <button class="man">管理教师</button>
                            <button class="add">添加教师</button>
                        </div>


                        <div class="tea-main-body pr cf">
                            <a href="tea-course-content.aspx" class="bg-lesson" target=_blank>
                                <img class="fl" src="http://imgsize.ph.126.net/?enlarge=true&imgurl=http://img1.ph.126.net/aQBMef6XOsNgmXoQRdmpcw==/6631550451304410247.jpg_223x124x1x95.jpg"
                                     width="240" height="135"/>

                                <div class="content fl w636">

                                    <div class="subtitle_les">
                                        <a href="tea-course-content.aspx" target="_blank">手机摄影达人速成</a>
                                    </div>
                                    <div class="describe">
                                        <span>教师：吴龙</span>
                                        <span class="ml20"><strong> 2</strong>学分<strong>60</strong>学时</span>
                                        <span class="ml20"> 更新完毕 </span>
                                    </div>
                                    <div class="course-detail">

                                        本课程主要讲解了手机摄影达人速成 是如何站在前端巨人肩膀上，进行新项目的搭建...
                                    </div>
                                </div>
                            </a>
                            <button class="man">管理教师</button>
                            <button class="add">添加教师</button>
                        </div>
                        <div class="tea-main-body pr cf">
                            <a href="tea-course-content.aspx" class="bg-lesson" target=_blank>
                                <img class="fl" src="http://imgsize.ph.126.net/?enlarge=true&imgurl=http://img0.ph.126.net/JxJ5eSXCTNHys3NRA7qSJw==/6630845664350329782.jpg_223x124x1x95.jpg"
                                     width="240" height="135"/>

                                <div class="content fl w636">

                                    <div class="subtitle_les">
                                        <a href="tea-course-content.aspx" target="_blank">Excel学习的最佳方式</a>
                                    </div>
                                    <div class="describe">
                                        <span>教师：吴龙</span>
                                        <span class="ml20"><strong> 3</strong>学分<strong>70</strong>学时</span>
                                        <span class="ml20"> 更新完毕 </span>
                                    </div>
                                    <div class="course-detail">

                                        本课程主要讲解了Excel学习的最佳方式是如何站在前端巨人肩膀上，进行新项目的搭建，并通过简...
                                    </div>
                                </div>
                            </a>
                            <button class="man">管理教师</button>
                            <button class="add">添加教师</button>
                        </div>


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


        </div>
    </div>


</div>
</div>


<div class="bg-model"
     style="position:absolute;top:0%;left:0%;display:none;background:rgba(0,0,0,0.5);width:100%;height:100%;position:fixed;z-index:9">
    　　
    <div class='con-model'
         style="position: absolute;left: 18%;top: 15%;border-radius: 8px;width: 850px;height: 600px;z-index:99">
            <table cellspacing="0">
    <tr><th>教师工号</th><th>教师姓名</th><th>所在课程</th><th>操作</th></tr>
    <tr><td>434324</td><td>吴一龙</td><td>C#</td><td><button>添加</button></td></tr>
    <tr><td>7657657657657</td><td>吴二龙</td><td>C#</td><td><button>添加</button></td></tr>
    <tr><td>78768768</td><td>吴三龙</td><td>C#</td><td><button>添加</button></td></tr>
    <tr><td>46357868</td><td>吴四龙</td><td>C#</td><td><button>添加</button></td></tr>
    <tr><td>794674564</td><td>吴五龙</td><td>C#</td><td><button>添加</button></td></tr>
    </table>
        　　
    </div>
</div>


<div class="bg-model2"
     style="position:absolute;top:0%;left:0%;display:none;background:rgba(0,0,0,0.5);width:100%;height:100%;position:fixed;z-index:9">
    　　
    <div class='con-model2'
         style="position: absolute;left: 18%;top: 15%;border-radius: 8px;width: 850px;height: 600px;z-index:99">
            <table cellspacing="0">
    <tr><th>教师</th><th>教师姓名</th><th>所在课程</th><th>操作</th></tr>
    <tr><td>434324</td><td>吴一龙</td><td>C#</td><td><button>删除</button></td></tr>
    <tr><td>7657657657657</td><td>吴二龙</td><td>C#</td><td><button>删除</button></td></tr>
    <tr><td>78768768</td><td>吴三龙</td><td>C#</td><td><button>删除</button></td></tr>
    <tr><td>46357868</td><td>吴四龙</td><td>C#</td><td><button>删除</button></td></tr>
    <tr><td>794674564</td><td>吴五龙</td><td>C#</td><td><button>删除</button></td></tr>
    </table>
        　　
    </div>
</div>
    <a href="~/footer.ascx">~/footer.ascx</a>
<script src="../js/tea-lesson.js"></script>
<script>

    //加入购物车点击事件
    $(".man").click(function () {
        $(".bg-model2").fadeTo(300, 1)
        //隐藏窗体的滚动条
        $("body").css({ "overflow": "hidden" });
    });

    $(".add").click(function () {
        $(".bg-model").fadeTo(300, 1)
        //隐藏窗体的滚动条
        $("body").css({ "overflow": "hidden" });
    });

    $(".add_lesson").click(function () {
        $(".bg-model3").fadeTo(300, 1)
        //隐藏窗体的滚动条
        $("body").css({ "overflow": "hidden" });
    });
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

    $(".bg-model2").click(function () {
        $(this).hide();
    })
    $(".con-model2").click(function (e) {
        e.stopPropagation();

    })

    $(".bg-model3").click(function () {
        $(this).hide();
    })

    $(".con-model3").click(function (e) {
        e.stopPropagation();

    })
    //table

    $(function () {
        /* For zebra striping */
        $("table tr:nth-child(odd)").addClass("odd-row");
        /* For cell text alignment */
        $("table td:first-child, table th:first-child").addClass("first");
        /* For removing the last border */
        $("table td:last-child, table th:last-child").addClass("last");
    });

</script>
    </div>
    </form>
</body>
</html>
