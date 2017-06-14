<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tea-notes.aspx.cs" Inherits="teacher_tea_notes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
 <meta charset="UTF-8">
    <title>教师中心－手记</title>
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
                    <div class="tea-main-r-nav">
                        我的手记
                        <button class="takenote">发手记</button>
                    </div>
                    
                    
                    <div class="tea-main-r-content fl" id="tea-notes">
                        
                        <a href="../note-index.html" target="_blank">
                        <h3>我是手记我是手记我是手记</h3>
                        我是手记我是手记我是手记我是手记我是手记我是手记我是手记我是手记我是手记我是手记我是手记我是手记我是手记我是手记我是手记我是手记我是手记我是手记我是手记我是手记我是手记我是手记我是手记我是手记我是手记我是手记我是手记我是手记我是手记我是手记...

                    </a>

                    
                    </div>


                </div>
            </div>


        </div>
    </div>


</div>
</div>


        <div class = "bg-model" style="position:absolute;top:0%;left:0%;display:none;background:rgba(0,0,0,0.5);width:100%;height:100%;position:fixed;z-index:9">
                        　　<div class = 'con-model' style="position: absolute;left: 18%;top: 6%;border-radius: 8px;width: 850px;height: 600px;background-color: #fff;z-index:99">
                        　　




                        <div class="index-left" style="margin:0 auto;">
                            <h2 class="new-save-title">发表手记</h2>
                            <div id="js-inputques" class="inputques">
                                <div class="quesdetail clearfix">
                                    <span class="ques-label first-label">*</span>
                                    <div class="question-area">
                                        <input type="text"  id="ques-title" class="ipt autocomplete" maxlength="255" name="title" placeholder="请一句话说明你的问题，以问号结尾"/>

                                        <dl class="send-area-result">
                                        </dl>
                                    </div>
                                </div>
                                <textarea class="form-text"></textarea>
                                <div class="mbottom">
                                    <span class="ques-lal">*</span>
                                    <div id="tag-title" class="new-tags ques-tag defaultbox">
                                        <p class="new-tag-info">选择问题分类，最多可选3个</p>
                                        <!-- <p class="tag-tip">您最多可以从以下选择3个标签哟！</p> -->
                                        <div id="js-tags" class="taglist clearfix">
                                            <a href="javascript:;" class="save-list-tag" data-id="12" name="Android">Android</a>
                                            <a href="javascript:;" class="save-list-tag" data-id="22" name="AngularJS">AngularJS</a>
                                            <a href="javascript:;" class="save-list-tag" data-id="24" name="Bootstrap">Bootstrap</a>
                                            <a href="javascript:;" class="save-list-tag" data-id="28" name="C">C</a>
                                            <a href="javascript:;" class="save-list-tag" data-id="38" name="C#">C#</a>
                                            <a href="javascript:;" class="save-list-tag" data-id="30" name="C++">C++</a>
                                            <a href="javascript:;" class="save-list-tag" data-id="34" name="Cocos2d-x">Cocos2d-x</a>
                                            <a href="javascript:;" class="save-list-tag" data-id="25" name="CSS3">CSS3</a>

                                        </div>
                                        <p class="errortip firse"></p>
                                    </div>
                                </div>
                            </div>
                            <div class="form-fa">
                                <button id="js-submit" class="btn btn-red">发布<span> (Ctrl+Enter)</span></button><br/><br/><br/><br/>
                            </div>
                        </div>
                    </div>
                    </div>
    <a href="~/footer.ascx">~/footer.ascx</a>
<script src="../js/tea-notes.js"></script>
<script>
    //加入购物车点击事件
    $(".takenote").click(function () {
        $(".bg-model").fadeTo(300, 1)
        //隐藏窗体的滚动条
        $("body").css({ "overflow": "hidden" });
    });

    //模态框OK按钮点击事件
    $(".bg-model-ok").click(function () {
        $(".bg-model").hide();
        //显示窗体的滚动条
        $("body").css({ "overflow": "visible" });
    }).hover(function () {
        $(this).css({ "backgroundColor": "#8CC8C8" });
    }, function () {
        $(this).css({ "backgroundColor": "#8CD4E6" });
    });


    //点击空白隐藏
    $(".bg-model").click(function () {
        $(".bg-model").hide();
    })

    $(".con-model").click(function (e) {
        e.stopPropagation();

    })
</script>
    </div>
    </form>
</body>
</html>
