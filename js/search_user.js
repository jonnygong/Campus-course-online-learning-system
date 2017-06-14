// JScript 文件
function init() {

    if (GetQueryString("content") !== null) {
        $("#keyword").val(GetQueryString("content"));
        searchUser(GetQueryString("content"));
    } else {
        $("#js-search-user").html("<li><h2>未找到相应结果！</h2></li>");
        $("#search_result").html("0");
    }
    
    
}
init();

$("#js-search-btn").on("click", function () {
    
    if ($("#keyword").val() !== "") {
        searchUser($("#keyword").val());
    } else {
        $("#js-search-user").html("<li><h2>未找到相应结果！</h2></li>");
        $("#search_result").html("0");
    }


});

function searchUser(keyword) {
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

            if (json.r === "0") {

                alert("加载失败，请刷新页面！");
            }
            else {

                var outstr = "";
                $.each(json.data, function (index, item) {

                    outstr +=
                                '<li class="index-people-card search-teacher-item">' +
                               '<a target="_blank" href="#" class="teacher-item">' +
                                  ' <img class="search-teacher-avatar" src="' + item.teacher_picUrl + '">' +
                                   '<span class="teacher-name">' + item.teacher_name + '</span>' +
                                   '<span class="teacher-job">' + item.teacher_degree + '</span>' +
                               '</a>' +
                           '</li>'

                });
                $("#js-search-user").html(outstr);
                $("#search_result").html(json.r);
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.readyState);
            alert("加载失败，请刷新页面！");
        }
    });

}
