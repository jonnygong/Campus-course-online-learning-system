


function loadTeaIndexLesson(id) {
    var _json = jQuery.param({ "id": getPath("user_id") });
    var request = $.ajax({
        url: getPath("lib_path") + "api/teacher/tea_index_lesson.ashx",
        type: "POST",
        async: false,
        data: _json, //不能直接写成 {id:"123",code:"tomcat"}  
        dataType: "json",
        // contentType: "charset=utf-8",  
        cache: false,

        //4 接受返回过来的数据，同样是json格式的，根据返回过来的数据给出相应的提示或操作
        success: function (data) {
            var json = data;
            //                userDetail = json[0];
            //返回过来的是1 表示插入成功了
            if (json.r == "0") {
                //提示插入成功

            }
                //否则则是插入失败了
            else {

                displayTeaIndexLesson(json.data);

            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) { alert(XMLHttpRequest.readyState); }
    });
}

function displayTeaIndexLesson(data) {
    var mystr = ""
    //中间读数据
    $.each(data, function (index, item) {

        //循环获取数据  
        mystr += "<div class=\"tea-main-body pr cf\">" +
                      "      <a href=\"tea-course-content.aspx\" class=\"bg-lesson\" target=_blank>" +
                      "     <img class=\"fl\" src=\"" + item.imgurl + "\"" +
            "  width=\"240\" height=\"135\"/>" +

            " <div class=\"content fl w636\">" +

            "  <div class=\"subtitle_les\">" +
            "    <a href=\"tea-course-content.aspx\" target=\"_blank\">vue.js入门基础</a>" +
            " </div>" +
        "  <div class=\"describe\">" +
        "     <span>教师：" + item.teaname + "</span>" +
        "     <span class=\"ml20\"><strong> " + item.score + "</strong>学分<strong>" + item.time + "</strong>学时</span>" +

        "   </div>" +
        "   <div class=\"course-detail\">" +

        "       " + item.introduction + "" +
        "  </div>" +

        " </div>" +
        "</a>" +
      " <button class=\"test\"><a href=\"tea-course-content.aspx\">查 看</a></button>"+
        "</div>";
    });
    $("#tea-course").html(mystr);

}

function init() {
    loadTeaIndexLesson(getPath("user_id"));

}

init();