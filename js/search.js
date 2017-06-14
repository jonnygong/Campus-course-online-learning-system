// 初始化



function init() {
    loadNav(false);
    if (GetQueryString("content") !== null) {
        $("#keyword").val(GetQueryString("content"));
        searchDoc(GetQueryString("content"));
        loadSearchUser(GetQueryString("content"));
        loadSearchcourse(GetQueryString("content"));
    } else {
        $("#js-searchuser").html("<li><h2>未找到相应结果！</h2></li>");
        $("#js-searchcourse").html("<div class=\"search-course-content\"><h2>未找到相应结果！</h2></div>");
        $("#js-SearchDoc").html("<li><h2>未找到相应结果！</h2></li>");
        $(".js-search-record").html("0");
    }

}


init();

$("#js-search-btn").on("click", function () {

    if ($("#keyword").val() !== "") {
        searchDoc($("#keyword").val());
        loadSearchUser($("#keyword").val());
        loadSearchcourse($("#keyword").val());
    } else {
        $("#js-search-user").html("<li><h2>未找到相应结果！</h2></li>");
    }


});


function searchDoc(keyword) {
    var keyword = $("#keyword").val();
    var _json = jQuery.param({ "keyword": keyword })
    $.ajax({
        url: "api/search/get_search_doc.ashx",
        type: "POST",
        async: false,
        data: _json,
        dataType: "json",
        cache: false,

        success: function (data) {
            var json = data;

            if (json.r === 0) {

                //alert("加载失败，请刷新页面！");
                $("#js-SearchDoc").html("<li><h2>未找到相应结果！</h2></li>");
            }
            else {

                var outstr = "";
                $.each(json.data, function (index, item) {


                    outstr +=
                                '<li class="search-DOC-li">' +
                                    '<a href="">' +
                                        '<div class="couse-detail-content_lefter_topin_docleft fl">' +
                                            '<i class="file-icon icon-pdf"></i>' +
                                        '</div>' +
                                        '<div class="couse-detail-content_lefter_topin_docrig fl">' +
                                            '<h1>' + item.resource_name + '</h1>' +
                                            '<div class="couse-detail-content_lefter_topin_docrig_font fl">' + item.course_name + '</div>' +
                                        '</div>' +
                                    '</a>' +
                                '</li>'

                });
                $("#js-SearchDoc").html(outstr);
                $("#search_result").html(json.r);
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.readyState);
            alert("加载失败，请刷新页面！");
        }
    });

}

function loadSearchUser(keyword) {
    var _json = jQuery.param({ "keyword": keyword })
    $.ajax({
        url: "api/search/load_searchuser.ashx",
        type: "POST",
        async: false,
        data: _json,
        dataType: "json",
        cache: false,


    success: function (data) {
      var json = data;


      if (json.r === 0) {
        $("#js-searchuser").html("<li><h2>未找到相应结果！</h2></li>");
      }
      else {

        var outstr = "";

        $.each(json.data, function (index, item) {

          outstr +=
             '<li class="index-people-card search-teacher-item">'+
            '<a target="_blank" href="#" class="teacher-item">'+
               ' <img class="search-teacher-avatar" src="'+item.teacher_picUrl+'">'+
                '<span class="teacher-name">'+item.teacher_name+'</span>'+
                '<span class="teacher-job">'+item.teacher_degree+'</span>'+
            '</a>'+
        '</li>'

        });
        $("#js-searchuser").html(outstr);
      }
    },
    error: function (XMLHttpRequest, textStatus, errorThrown) {
      console.log(XMLHttpRequest.readyState);
    
    }
  });

}


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


            if (json.r === 0) {
                $("#js-searchcourse").html("<div class=\"search-course-content\"><h2>未找到相应结果！</h2></div>");
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
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.readyState);

        }
    });

}

