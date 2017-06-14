// JScript 文件
function init() {

     if (GetQueryString("content") !== null) {
        $("#keyword").val(GetQueryString("content"));
        searchDoc(GetQueryString("content"));
    } else {
       $("#js-SearchDoc").html("<li style=\"margin-top:10px\"><h2>未找到相应结果！</h2></li>");
        $("#search_result").html("0");
    }
}
init();
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

            if (json.r === "0") {

                //alert("加载失败，请刷新页面！");
              $("#js-SearchDoc").html("<li style=\"margin-top:10px\"><h2>未找到相应结果！</h2></li>");    
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
