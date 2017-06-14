<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tea-information.aspx.cs" Inherits="teacher_tea_information" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="UTF-8">
    <title>教师中心－个人信息</title>
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

                            <li><a href="tea-information.aspx">个人信息</a></li>
                            <li><a href="tea-postin.aspx">操作记录</a></li>
                        </ul>
                        <button class="takenote change-info" onClick="updateInformation();">修 改</button>

                    </div>
                    <div class="tea-main-r-content" id="information">


                        <div class="info-wapper">
                            
                            <div class="info-box clearfix">
                                <label class="pull-left">头像</label>
                                <div class="pull-left"><button class="upload-tx">点击更换头像</button></div>
                            </div>
                            <div class="info-box clearfix">
                                <label class="pull-left">姓名</label>
                                <div class="pull-left" onDblClick="edit(this)"><input type="text" value="全栈梦想师JonnyGong"></div>
                            </div>
                            <div class="info-box clearfix">
                                <label class="pull-left">邮箱</label>
                                <div class="pull-left" onDblClick="edit(this)"><input type="text" value="2010666@qq.com"></div>
                            </div>
                            <div class="info-box clearfix">
                                <label class="pull-left">密码</label>
                                <div class="pull-left" onDblClick="edit(this)"><input type="text" value="********"></div>
                            </div>
                            <div class="info-box clearfix">
                                <label class="pull-left">性别</label>
                                <div class="scroll-parent pull-left">
                                    <select>
                                        <option value="man" selected="selected">男</option>
                                        <option value="women">女</option>
                                        <option value="none">未设置</option>


                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="info-box clearfix">
                            <label class="pull-left">年龄</label>
                            <div class="pull-left" onDblClick="edit(this)">
                                <input type="text" value="13">
                            </div>
                        </div>
                        <div class="info-box clearfix">
                            <label class="pull-left">专业</label>
                            <div class="pull-left" onDblClick="edit(this)"><input type="text" value="未设置"></div>
                        </div>
                        <div class="info-box clearfix">
                            <label class="pull-left">学历</label>
                            <div class="pull-left" onDblClick="edit(this)"><input type="text" value="未设置"></div>
                        </div>
                    </div>


                </div>


            </div>

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
         style="position: absolute;left: 28%;top: 10%;border-radius: 8px;width: 500px;height: 400px;z-index:99;background:#fff;">
            <ul>
                <li style="font-size:18px;font-weight:blod;color:#000;padding:15px 0px 0px 15px;">更换头像</li>
                <li><img src="../images/tx.jpg" width="180" height="180" style=" border-radius: 180px; margin-left:150px; margin-top: 20px;" alt=""></li>
                <li style="margin-left:190px; margin-top:20px; font-size: 12px; color: #4ead54;"><span>换一换</span><span style="margin-left: 20px;">更换头像</span></li>
                <li style="margin-right:30%;"><button class="add_lesson_btn">取消</button>
                  <button class="add_lesson_btn">确定</button></li>
            </ul>
        　　
    </div>
</div>


    <a href="~/footer.ascx">~/footer.ascx</a>

<script src="../js/tea-information.js"></script>
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


    $(".upload-tx").click(function () {
        $(".bg-model").fadeTo(300, 1)
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
</script>
    </div>
    </form>
</body>
</html>
