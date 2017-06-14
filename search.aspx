<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="index" %>

<%@ Register Src="~/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/footer.ascx" TagPrefix="uc1" TagName="footer" %>



<!DOCTYPE html>
<html lang="zh_CN">
<head>
    <meta charset="UTF-8">
    <title>搜索页-全部</title>
    <uc1:header runat="server" ID="header" />
    <div class="container">
        <!-- code here -->

        <div id="search-course-header">

            <div id="search-course-searchbox">
                <div class="search-course-searchbox-ico">
                    <i class="fa fa-search" aria-hidden="true"></i>
                </div>
                <input type="text" class="search-course-searchbox-ipt" placeholder="请输入想搜索的内容" id="keyword">
                <input type="button" class="search-course-searchbox-but" value="搜索" id="js-search-btn">
            </div>

        </div>


        <ul class="search-course-list">
            <li class="on"><a href="<% =URLHelper.getPath() %>search.aspx?content=<% =URLHelper.getUrlParam() %>">全部</a></li>
            <li><a href="<% =URLHelper.getPath() %>search-course.aspx?content=<% =URLHelper.getUrlParam() %>">课程</a></li>
            <li><a href="<% =URLHelper.getPath() %>search-doc.aspx?content=<% =URLHelper.getUrlParam() %>">资源</a></li>
            <li><a href="<% =URLHelper.getPath() %>search-user.aspx?content=<% =URLHelper.getUrlParam() %>">用户</a></li>


        </ul>
        <div class="search-course-title">课程<span class="search-more"><a href="<% =URLHelper.getPath() %>search-course.aspx?content=<% =URLHelper.getUrlParam() %>">更多></a></span></div>

       
            <hr size="1" width="840px" align="center" color="#dadde2">
            <div id="js-searchcourse">
<%--  
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
        <div class="search-course-contentdetails"><img src="images/search-course-js3.png">
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
    </div> --%>
        </div>


        <div class="search-course-title">资源<span class="search-more"><a href="<% =URLHelper.getPath() %>search-doc.aspx?content=<% =URLHelper.getUrlParam() %>">更多></a></span></div>
        <hr size="1" width="840px" align="center" color="#dadde2">

        <ul class="search-DOC-content cf" id="js-SearchDoc">
            <!--
            <li class="search-DOC-li">
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
            </li>
            -->
        </ul>


        <div class="search-course-title">用户<span class="search-more"><a href="<% =URLHelper.getPath() %>search-user.aspx?content=<% =URLHelper.getUrlParam() %>">更多></a></span></div>
        <hr size="1" width="840px" align="center" color="#dadde2">


        <ul class="search-course-content cf" id="js-searchuser">
            <%-- <li class="index-people-card search-teacher-item">
            <a target="_blank" href="#" class="teacher-item">
                <img class="search-teacher-avatar" src="http://img.mukewang.com/583f11e40001c79506400960-100-100.jpg">
                <span class="teacher-name">晴天</span>
                <span class="teacher-job">神秘讲师</span>
            </a>
        </li>
        <li class="index-people-card search-teacher-item">
            <a target="_blank" href="#" class="teacher-item">
                <img class="search-teacher-avatar" src="./images/search_user_tou3.png">
                <span class="teacher-name">夏天</span>
                <span class="teacher-job">高级讲师</span>
            </a>
        </li>
        <li class="index-people-card search-teacher-item">
            <a target="_blank" href="#" class="teacher-item">
                <img class="search-teacher-avatar" src="./images/search_user_tou1.png">
                <span class="teacher-name">smile浅笑</span>
                <span class="teacher-job">普通讲师</span>
            </a>
        </li>
        <li class="index-people-card search-teacher-item">
            <a target="_blank" href="#" class="teacher-item">
                <img class="search-teacher-avatar" src="./images/search_user_tou2.png">
                <span class="teacher-name">七月在夏天</span>
                <span class="teacher-job">讲师</span>
            </a>
        </li>--%>
        </ul>


    </div>
    </div>


    <div class="search-course-main"></div>
    <uc1:footer runat="server" ID="footer" />
    <script src="js/search.js"></script>
</body>
</html>
