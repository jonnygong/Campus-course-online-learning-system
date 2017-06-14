<%@ Control Language="C#" AutoEventWireup="true" CodeFile="footer.ascx.cs" Inherits="footer" %>
    <div class="footer">
        <div class="footer-in">
            <div class="footer-link cf" id="js-links">
                <!--<a href="#" target="_blank">友情链接</a>-->
            </div>
            <p id="js-copy">Copyright © 2017 domain.com All Rights Reserved</p>
            <p id="js-icp">京ICP备 1234567890</p>
            <a href="admin/index.html">.</a>
        </div>
    </div>
    <div class="backtop"></div>
    <script src="<% =URLHelper.getPath() %>libs/jquery/jquery.min.js"></script>
    <!-- 全局使用（表单验证及登录框） -->
    <script src="<% =URLHelper.getPath() %>libs/jquery-validation/jquery.validate.min.js"></script>
    <script src="<% =URLHelper.getPath() %>libs/jquery-validation/localization/messages_zh.js"></script>
    <script src="<% =URLHelper.getPath() %>libs/jquery/jquery.cookie.js"></script>
    <script src="<%=URLHelper.getPath() %>js/main.js"></script>
    <script>
        // 搜索跳转
        document.querySelector(".js-search").addEventListener("click", function () {
            var search_content = encodeURI(searchForm.content.value);
            var select_type = document.querySelector(".js-select").innerHTML;
            switch (select_type) {
                case "全部":
                    window.location.href = "<% =URLHelper.getPath() %>search.aspx?content=" + search_content;
                    break;
                case "课程":
                    window.location.href = "<% =URLHelper.getPath() %>search-course.aspx?content=" + search_content;
                    break;
                case "用户":
                    window.location.href = "<% =URLHelper.getPath() %>search-user.aspx?content=" + search_content;
                    break;
                case "资源":
                    window.location.href = "<% =URLHelper.getPath() %>search-doc.aspx?content=" + search_content;
                    break;
            }
            
        });
    </script>
