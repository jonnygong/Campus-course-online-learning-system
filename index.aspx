<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>
<%@ Register Src="~/header.ascx" TagPrefix="uc1" TagName="header" %>
<%@ Register Src="~/footer.ascx" TagPrefix="uc1" TagName="footer" %>

<!DOCTYPE html>
<html lang="zh_CN">
<head>
    <meta charset="UTF-8">
    <title>首页</title>
    <uc1:header runat="server" ID="header" />
    <div class="container">
        <div class="index-main">
            <!-- 轮播图 -->
            <div class=" index-banner">
                <div class="index-loop-banner-list" id="js-slider">
                    <!--<div class="index-loop-banner js-loop-item selected">
                        <a href="#" class="link" title="">
                            <img src="http://edu-image.nosdn.127.net/99d93db7-2652-470d-9f4b-d8c08b7b3eb0.png?imageView&thumbnail=960y440&quality=100"
                                 alt="">
                        </a>
                    </div>-->

                </div>
                <ul class="index-loop-dot-list">
                    <li class="js-loop-dot-item on"></li>
                    <li class="js-loop-dot-item"></li>
                    <li class="js-loop-dot-item"></li>
                    <li class="js-loop-dot-item"></li>
                </ul>
                <div class="index-news">
                    <div class="index-news-title">
                        <span>最新动态</span>
                    </div>
                    <div class="index-news-list">
                        <ul id="js-trends">
                        <!--<li class="index-news-item">
                            <span class="num">10</span>
                            <a class="text" href="course/course-content.html">《JavaScript基础》课程更新了</a>
                        </li>-->
                        </ul>
                    </div>
                </div>
            </div>
            <div class="index-prof index-block" id="js-prof">
                <!--<div class="prof-item">
                <a href="course/course-list.html" target="_blank">
                    <div class="imgbox f-icon icon-e912 fl"></div>
                    <div class="tit fl">数字媒体专业</div>
                    <div class="tip">面向设计和影视媒体企业一线</div>
                </a>
                </div>-->
            </div>

            <!-- 最新课程 -->
            <div class=" index-latest-course index-block">
                <div class="index-title cf">
                    <h1 class="fl">最新课程
                    </h1>
                    <div class="index-more fr">
                        <a href="course/course-list.html">更多</a>
                        <i class="icon-more"></i>
                    </div>
                </div>
                <div class="index-content cf">
                    <!-- 长图 -->
                    <div class="index-cell">
                        <a href="course/course-list.html">
                            <img src="images/index-new.jpg"
                                alt="">
                        </a>
                    </div>
                    <div class="index-cover" id="js-newcourse">
                        <!-- <div class="index-cover-item">
                        <a href="course/course-content.html">
                            <div class="cover-pic">
                                <img class="imgPic"
                                     src="http://imgsize.ph.126.net/?enlarge=true&imgurl=http://img1.ph.126.net/aQBMef6XOsNgmXoQRdmpcw==/6631550451304410247.jpg_223x124x1x95.jpg"
                                     alt="">
                            </div>
                            <div class="cover-tit">
                                <h3>手机摄影达人速成</h3>
                                <p class="cover-desc">咔图摄影教育中心</p>
                            </div>
                        </a>
                    </div>
                    -->
                    </div>
                </div>
            </div>

            <!-- 教师风采 -->
            <div class="index-student index-block" id="teachers">
                <div class="index-title">
                    <h1>教师风采</h1>
                </div>
                <ul class="index-content cf" id="js-teacher">
                    <!--<li class="index-people-card index-teacher-item">
                    <a target="_blank" href="user/user.html" class="teacher-item">
                        <img class="teacher-avatar" src="http://img.mukewang.com/583f11e40001c79506400960-100-100.jpg">
                        <span class="teacher-name">七月在夏天</span>
                        <span class="teacher-job">神秘讲师“七月”</span>
                        <span class="teacher-intro">
                        作为微信小程序第一波开发者，他受邀编写小程序开发书籍，不久就会出版。八年研发及团队管理经验，
                        做过程序员、当过项目经理、技术总监、CTO的开发者，他喜欢写代码带来成就感。
                    </span>
                    </a>
                </li>
                -->
                </ul>
            </div>

            <!--精品课程 -->
            <div class=" index-great-course index-block" id="great-course">
                <div class="index-title cf">
                    <h1 class="fl">精品微课
                    </h1>
                    <div class="index-more fr">
                        <a href="course/course-list.html">更多</a>
                        <i class="icon-more"></i>
                    </div>
                </div>
                <div class=" index-content-left index-content cf">
                    <div class="index-cover" id="js-boutiquecourse">
                        <!--<div class="index-cover-item">
                        <a href="course/course-content.html">
                            <div class="cover-pic">
                                <img class="imgPic"
                                     src="http://imgsize.ph.126.net/?enlarge=true&imgurl=http://img2.ph.126.net/LrVWKyZOdRiMARgOXBdNwg==/6632033136909046127.png_223x124x1x95.png"
                                     alt="">
                            </div>
                            <div class="cover-tit">
                                <h3>PPT2016企业级版式设计</h3>
                                <p class="cover-desc">上海职领网络科技有限公司</p>
                            </div>
                        </a>
                    </div>-->
                    </div>
                    <!-- 长图 -->
                    <div class="index-cell">
                        <a href="course/course-list.html">
                            <img src="images/index-course.jpg"
                                alt="">
                        </a>
                    </div>
                </div>
            </div>

            <!-- 优秀学生 -->
            <div class="index-student index-block" id="students">
                <div class="index-title">
                    <h1>优秀学生</h1>
                </div>
                <ul class="index-content cf" id="js-student">
                    <!--<li class="index-people-card index-student-item">
                    <a target="_blank" href="user/user.html" class="student-item">
                        <img class="student-avatar"
                             src="http://imgsize.ph.126.net/?enlarge=true&imgurl=http://img0.ph.126.net/GIgnvGE4e9Sx1z0xTWyR9Q==/6632455349372892786.jpg_120x120x1x95.jpg">
                        <div class="student-info fl">
                            <span class="student-name">赵一</span>
                            <span class="student-job">计算机网络1503</span>
                        </div>
                    </a>
                </li>
                -->
                </ul>
            </div>

            <!-- 广告 -->
            <div class="index-ad index-block cf">
                <div class="index-ad-left fl" id="js-ad-left">
                    <!-- <a href="index.html"><img
                        src="https://haitaoad.nosdn.127.net/ad.bid.material_d02b27337540407090ebd5a6f81ebcbd?imageView&thumbnail=960x130&quality=100"
                        alt=""></a> -->
                </div>
                <div class="index-ad-right fr" id="js-ad-right">
                    <!--<a href="index.html"><img
                        src="https://haitaoad.nosdn.127.net/ad.bid.material_b809907717fc4bada06e2206f63f7a2b?imageView&thumbnail=225x130&quality=85"
                        alt=""></a> -->
                </div>
            </div>
        </div>
    </div>
    <uc1:footer runat="server" ID="footer" />
    <!--首页使用-->
    <script src="js/index.js"></script>
</body>
</html>
