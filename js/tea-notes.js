


function loadTeaIndexNotes(id) {
    var _json = jQuery.param({ "id": getPath("user_id") });
    var request = $.ajax({
        url: getPath("lib_path") + "api/teacher/tea_index_notes.ashx",
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

                displayTeaIndexNotes(json.data);

            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) { alert(XMLHttpRequest.readyState); }
    });
}

function displayTeaIndexNotes(data) {
    var mystr = ""
    //中间读数据
    $.each(data, function (index, item) {

        //循环获取数据  
        mystr += "<a href=\"../note-index.html\" target=\"_blank\">"+
        "  <h3>" + item.notestitle + "</h3>" +
       " " + item.notescontent + "" +

   " </a>";
    });
    $("#tea-index-notes").html(mystr);

}


function init() {
    loadTeaIndexNotes(getPath("user_id"));
}

init();