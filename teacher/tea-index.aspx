<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tea-index.aspx.cs" Inherits="tea_index" %>

<%@ Register Src="~/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/footer.ascx" TagPrefix="uc1" TagName="footer" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="UTF-8">
    <title>教师中心－动态</title>
        <uc1:header runat="server" ID="header" />
<div class="container">
    <!-- code here -->

    <div class="bg-other">
        <div class="bg-other-in">
            <div class="bg-other-l">
                <div class="bg-other-l-in">
                    <div id="tea-img"><img src="./images/tx.jpg" alt=""/></div>
                    <!-- <div class="bg-other-tx-hover"></div> -->
                </div>
            </div>
            <div class="bg-other-r">
                <h3 class="user-name clearfix">
                    <span id="tea-name">全栈梦想师JonnyGong</span>
                </h3>

                <p class="about-info" id="tea-edu">全栈工程师</p>
                <p class="user-desc" id="tea-desc">这位同学很懒，木有签名的说～</p>
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
                        <p>最新动态</p>
                    </div>
                    <div class="tea-main-r-content" id="tea-index-notes">

                        
                    </div>

                       

                    <div class="clear"></div>


                    <div class="tea-main-r-content fr" id="tea-index-qa">

                        
                    </div>

                        <div class="tea-main-r-content fr" id="tea-index-lesson">

                            


                            

                        </div>


                        

                    </div>
                </div>


            </div>
        </div>


    </div>
</div>
    <uc1:footer runat="server" ID="footer" />
     <script type="text/javascript" src="../js/tea_index.js"></script>
    </div>
    </form>
</body>
</html>
