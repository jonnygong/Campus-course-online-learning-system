$(function () {
    // 首页幻灯片轮播
    var index = 0;
    var length = $(".js-loop-item").length;
    var timer;

    $(".js-loop-dot-item").click(function () {
        if ($(this).hasClass("on")) {
            return;
        }
        $(this).addClass("on").siblings().removeClass("on");
        index = $(this).index();
        go(index);
    });

    function go(index) {
        $(".js-loop-item").eq(index).addClass("selected").siblings().removeClass("selected");
        $(".js-loop-dot-item").eq(index).addClass("on").siblings().removeClass("on");
    }

    function autogo() {
        if (index > length - 1) {
            index = 0;
        }
        go(index);
        index++;
        timer = setTimeout(autogo, 3000); //可以执行
    }

    autogo();

    // 首页导航锚点跳转缓动动画
    $(".nav-item > a").click(function () {
        var PADDING = 20;
        var href = $(this).attr("href");
        console.log(href);
        var pos = $(href).offset().top - $(".header").height() - PADDING;
        console.log(pos);
        $("html,body").animate({
            scrollTop: pos
        }, 800);
        return false;
    });
});



// 轮播图

function loadSlider() {
    $.ajax({
        url: "api/index/load_slider.ashx",
        type: "POST",
        async: false,
        //data: _json, //不能直接写成 {id:"123",code:"tomcat"}
        dataType: "json",
        // contentType: "charset=utf-8",
        cache: false,

        //4 接受返回过来的数据，同样是json格式的，根据返回过来的数据给出相应的提示或操作
        success: function (data) {
            var json = data;

            //返回过来的是1 表示插入成功了
            if (json.r === "0") {
                //失败
                alert("加载失败，请刷新页面！");
            }
            else {
                // 成功
                // 渲染
                var outstr = "";
                $.each(json.data, function (index, item) {
                    outstr +=
                        '<div class="index-loop-banner js-loop-item selected"> ' +
                        '<a href="' + item.slider_url + '" class="link" title=""> ' +
                        '<img src="' + item.slider_image_url + '" alt=""> ' +
                        '</a> ' +
                        '</div> ';

                });

                $("#js-slider").html(outstr);
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.readyState);
            alert("加载失败，请刷新页面！");
        }
    });

}


// 最新动态
function loadTrends() {
    $.ajax({
        url: "api/index/load_trends.ashx",
        type: "POST",
        async: false,
        //data: _json, //不能直接写成 {id:"123",code:"tomcat"}
        dataType: "json",
        // contentType: "charset=utf-8",
        cache: false,

        //4 接受返回过来的数据，同样是json格式的，根据返回过来的数据给出相应的提示或操作
        success: function (data) {
            var json = data;

            //返回过来的是1 表示插入成功了
            if (json.r === "0") {
                //失败
                alert("加载失败，请刷新页面！");
            }
            else {
                // 成功
                // 渲染
                var outstr = "";
                $.each(json.data, function (index, item) {
                    var order = (index + 1) * 1 + '';
                    // console.log(order);
                    if (index < 3) {
                        outstr +=
                            '<li class="index-news-item">' +
                            '<span class="num num' + order + '">' + padLeftZero(order) + '</span>' +
                            '<a class="text" href="' + item.resource_url + '">《' + item.course_name + '》课程更新了</a>' +
                            '</li>'

                    } else {
                        outstr +=
                            '<li class="index-news-item">' +
                            '<span class="num">' + padLeftZero(order) + '</span>' +
                            '<a class="text" href="' + item.resource_url + '">《' + item.course_name + '》课程更新了</a>' +
                            '</li>'
                    }
                });
                $("#js-trends").html(outstr);
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.readyState);
            alert("加载失败，请刷新页面！");
        }
    });

}
// 专业显示
function loadProf() {
    $.ajax({
        url: "api/index/load_prof.ashx",
        type: "POST",
        async: false,
        //data: _json, //不能直接写成 {id:"123",code:"tomcat"}
        dataType: "json",
        // contentType: "charset=utf-8",
        cache: false,

        //4 接受返回过来的数据，同样是json格式的，根据返回过来的数据给出相应的提示或操作
        success: function (data) {
            var json = data;

            //返回过来的是1 表示插入成功了
            if (json.r === "0") {
                //失败
                alert("加载失败，请刷新页面！");
            }
            else {
                // 成功
                // 渲染
                var outstr = "";
                var iconArr = ['icon-e912', 'icon-e913', 'icon-e62b', 'icon-e635'] // 0 数字媒体专业 1 网络商务专业 2 移动互联专业 3 网站开发专业
                $.each(json.data, function (index, item) {

                    outstr +=
                        '<div class="prof-item">' +
                        '<a href="course/course-list.html" target="_blank">' +
                        '<div class="imgbox f-icon ' + iconArr[item.major_icon] + ' fl"></div>' +
                        '<div class="tit fl">' + item.major_name + '</div>' +
                        '<div class="tip">' + item.major_info + '</div>' +
                        '</a>' +
                        '</div>';

                });
                $("#js-prof").html(outstr);
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.readyState);
            alert("加载失败，请刷新页面！");
        }
    });

}


// 底部广告

function loadAds() {
    $.ajax({
        url: "api/index/load_ad.ashx",
        type: "POST",
        async: false,
        //data: _json, //不能直接写成 {id:"123",code:"tomcat"}
        dataType: "json",
        // contentType: "charset=utf-8",
        cache: false,

        //4 接受返回过来的数据，同样是json格式的，根据返回过来的数据给出相应的提示或操作
        success: function (data) {
            var json = data;

            //返回过来的是1 表示插入成功了
            if (json.r === "0") {
                //失败
                alert("加载失败，请刷新页面！");
            }
            else {
                // 成功
                // 渲染
                var outstr = "";
                $.each(json.data, function (index, item) {
                    if (item.ad_type === "0") {
                        outstr =
                            '<a href="' + item.ad_url + '">' +
                            '<img src="' + item.ad_img + '" alt="">' +
                            '</a>';
                        $("#js-ad-left").html(outstr);
                    } else {
                        outstr =
                            '<a href="' + item.ad_url + '">' +
                            '<img src="' + item.ad_img + '" alt="">' +
                            '</a>';
                        $("#js-ad-right").html(outstr);
                    }
                });

            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.readyState);
            alert("加载失败，请刷新页面！");
        }
    });

}

// 教师风采
function loadTeacher() {
    var request = $.ajax({
        url: "api/index/load_teacher.ashx",
        type: "POST",
        async: false,
        //data: _json, //不能直接写成 {id:"123",code:"tomcat"}  
        dataType: "json",

        cache: false,

        //4 接受返回过来的数据，同样是json格式的，根据返回过来的数据给出相应的提示或操作
        success: function (data) {
            var json = data;

            //返回过来的是1 表示插入成功了
            if (json.r == "0") {
                //提示插入成功
                alert("加载失败，请刷新页面！");
            }
                //否则则是插入失败了
            else {

                var mystr = "";
                $.each(json.data, function (index, item) {

                    mystr +=
                 '<li class="index-people-card index-teacher-item">' +
                 '<a target="_blank" href="user/user.html" class="teacher-item">' +
                    '<img class="teacher-avatar" src="' + item.teacher_picUrl + '">' +
                    '<span class="teacher-name">' + item.teacher_name + '</span>' +
                    '<span class="teacher-job">' + item.teacher_degree + '</span>' +
                    '<span class="teacher-intro">' + item.teacher_intro + '</span>' +
                '</a>'
                    '</li> '
                }),
                $("#js-teacher").html(mystr);

            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.readyState);
            alert("加载失败，请刷新页面！");
        }
    });

}


// 最新课程
function loadNewcourse() {
    $.ajax({
        url: "api/index/load_newcourse.ashx",
        type: "POST",
        async: false,
        //data: _json, 
        dataType: "json",
        // contentType: "charset=utf-8",
        cache: false,


        success: function (data) {
            var json = data;


            if (json.r === "0") {

            }
            else {

                var outstr = "";

                $.each(json.data, function (index, item) {

                    outstr +=
                           '<div class="index-cover-item">' +
                                  '<a href="course/course-content.html">' +
                                      '<div class="cover-pic">' +
                                          '<img class="imgPic"' +
                                               'src="' + item.course_img_url + '"' +
                                               'alt="">' +
                                      '</div>' +
                                      '<div class="cover-tit">' +
                                          '<h3>' + item.course_name + '</h3>' +
                                          '<p class="cover-desc">' + item.course_introduction + '</p>' +
                                      '</div>' +
                                  '</a>' +
                              '</div>';

                });
                $("#js-newcourse").html(outstr);
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.readyState);

        }
    });

}


// 精品课程
function loadBoutiquecourse() {
    $.ajax({
        url: "api/index/load_boutiquecourse.ashx",
        type: "POST",
        async: false,
        //data: _json, 
        dataType: "json",
        // contentType: "charset=utf-8",
        cache: false,


        success: function (data) {
            var json = data;


            if (json.r === "0") {

            }
            else {

                var outstr = "";

                $.each(json.data, function (index, item) {

                    outstr +=
                           '<div class="index-cover-item">' +
                                  '<a href="course/course-content.html">' +
                                      '<div class="cover-pic">' +
                                          '<img class="imgPic"' +
                                               'src="' + item.course_img_url + '"' +
                                               'alt="">' +
                                      '</div>' +
                                      '<div class="cover-tit">' +
                                          '<h3>' + item.course_name + '</h3>' +
                                          '<p class="cover-desc">' + item.course_introduction + '</p>' +
                                      '</div>' +
                                  '</a>' +
                              '</div>';

                });
                $("#js-boutiquecourse").html(outstr);
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.readyState);

        }
    });

}

// 优秀学生
function loadUser() {
    $.ajax({
        url: "api/index/load_user.ashx",
        type: "POST",
        async: false,
        dataType: "json",
        cache: false,

        success: function (data) {
            var json = data;

            if (json.r === "0") {

                alert("加载失败，请刷新页面！");
            }
            else {

                var outstr = "";
                $.each(json.data, function (index, item) {

                    outstr +=
                        '<li class="index-people-card index-student-item">' +
                                '<a target="_blank" href="student.aspx?id=' + item.student_id + '" class="student-item">' +
                                    '<img class="student-avatar"' +
                                'src="' + item.student_picUrl + '">' +
                                '<div class="student-info fl">' +
                                        '<span class="student-name">' + item.student_name + '</span>' +
                                        '<span class="student-job">' + item.major_name + item.class_name + '</span>' +
                                    '</div>' +
                                '</a>' +
                            '</li>';

                });
                $("#js-student").html(outstr);
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.readyState);
            alert("加载失败，请刷新页面！");
        }
    });

}

// 初始化

function init() {
    loadNav(true); // 仅在首页
    loadSlider();
    loadTrends();
    loadProf();
    loadAds();
    loadTeacher();
    loadNewcourse();
    loadBoutiquecourse();
    loadUser();
}

init();
