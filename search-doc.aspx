<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search-doc.aspx.cs" Inherits="search_doc" %>

<%@ Register Src="~/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/footer.ascx" TagPrefix="uc1" TagName="footer" %>



<!DOCTYPE html>
<html lang="zh_CN">
<head>
    <meta charset="UTF-8">
    <title>搜索页-资源</title>
    <uc1:header runat="server" ID="header" />
    <div class="container">
        <!-- code here -->

        <div id="search-course-header">

            <div id="search-course-searchbox">
                <div class="search-course-searchbox-ico">
                    <i class="fa fa-search" aria-hidden="true"></i>
                </div>
                <form action="">
                    <input type="text" class="search-course-searchbox-ipt" placeholder="请输入想搜索的内容" id="keyword">
                    <input type="button" class="search-course-searchbox-but" value="搜索" onclick="searchDoc()">
                </form>
            </div>

        </div>


        <ul class="search-course-list">
            <li><a href="<% =URLHelper.getPath() %>search.aspx?content=<% =URLHelper.getUrlParam() %>">全部</a></li>
            <li><a href="<% =URLHelper.getPath() %>search-course.aspx?content=<% =URLHelper.getUrlParam() %>">课程</a></li>
            <li class="on"><a href="<% =URLHelper.getPath() %>search-doc.aspx?content=<% =URLHelper.getUrlParam() %>">资源</a></li>
            <li><a href="<% =URLHelper.getPath() %>search-user.aspx?content=<% =URLHelper.getUrlParam() %>">用户</a></li>


        </ul>
        <div class="search-course-list-record">共找到<span id="search_result"></span>个相关内容</div>


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
    <uc1:footer runat="server" ID="footer" />
    <script src="js/search_doc.js"></script>
</div>
</body>
</html>
