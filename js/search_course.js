// 初始化



function init() {
    loadNav(false);
    if (GetQueryString("content") !== null) {
        $("#keyword").val(GetQueryString("content"));
        loadSearchcourse(GetQueryString("content"));
    } else {
        $("#js-searchcourse").html("<div class=\"search-course-content\"><h2>未找到相应结果！</h2></div>");
        $("#search_result").html("0");
    }


}

init();

$("#js-search-btn").on("click", function () {

    if ($("#keyword").val() !== "") {
        loadSearchcourse($("#keyword").val());
    } else {
        $("#js-searchcourse").html("<div class=\"search-course-content\"><h2>未找到相应结果！</h2></div>");
        $("#search_result").html("0");
    }


});


function loadSearchcourse(keyword) {
    var _json = jQuery.param({ "keyword": keyword })
    $.ajax({
        url: "api/search/load_searchcourse.ashx",
        type: "POST",
        async: false,
        data: _json, 
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
                        '<div class="search-course-content">' +
                       '<div class="search-course-contentdetails"><img src="images/search_course_js.jpg">' +
                      '<div class="search-course-contentdetails-wend">' +

                          '<p>[课程]<span class="search-course-contentdetails-wend-ziti"><a href="#">' + item.course_name + '</a></span></p>' +
                          '<div class="search-course-contentdetails-wend-ziti2">' +
                              '<span>所属课程：' + item.course_name + '</span>' +

                              '<span>讲师：' + item.teacher_name + '</span>' +
                              '<span>学分：' + item.course_score + '</span>' +
                              '<span>学时：' + item.course_time + '</span>' +
                          '</div>' +

                          '<div class="search-course-contentdetails-wend-jianjie">课程简介：' + item.course_introduction + '</div>' +
                      '</div>' +
                  '</div></div>';
                });
                $("#js-searchcourse").html(outstr);
                $("#search_result").html(json.r);
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.readyState);

        }
    });

}

