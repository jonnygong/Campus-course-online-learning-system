// JScript 文件


//教师个人中心
//根据id查询某一个类别

    
//    var userDetail = [];
    function loadTeaIndex(id) {
        var _json = jQuery.param({ "id": getPath("user_id") });
        var request = $.ajax({
            url: getPath("lib_path") + "api/teacher/load-tea-index.ashx",
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

                    displayTeaIndex(json.data);

                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) { alert(XMLHttpRequest.readyState); }
        });
    }

    //显示类别，其中某条直接显示
    function displayTeaIndex(data) {

        //中间读数据
        $.each(data, function (index, item) {

            //循环获取数据  
            $("#tea-name").html(item.name);
            $("#tea-edu").html(item.edu);
            $("#tea-desc").html(item.desc);
            $("#tea-img").html("<img src=\"" + item.imgurl + "\" alt=\"\"/>");
        });


    }

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
        var mystr=""
        //中间读数据
        $.each(data, function (index, item) {

            //循环获取数据  
            mystr += "<a href=\"../user/user.html\" target=\"_blank\">"+
            "  <img src=\"" + item.teaimg + "\" class=\"userHead\" " +
                "  style=\"margin-top:20px;\" width=\"40\" height=\"40\" data-userid=\"3471850\">"+
                "</a>"+

            " <div class=\"content\">"+
            "  <div class=\"tea-main-head\">"+
            "  <div class=\"teacher-name\">"+
            "     <a class=\" \" href=\"../user/user.html\" data-userid=3471850 target=\"_blank\" id=\"\">"+
            "         "+ item.name +""+
            "     </a>"+
            " </div>"+
            "   <div class=\"time\">"+
            "       3天前"+
            "  </div>"+
            "   <div class=\"title\">"+
            "       发表了手记"+
            "  </div>"+


            " </div>"+
            " <a href=\"./note-index.html\" target=\"_blank\"> "+
            "  <div class=\"tea-main-body fl\" style=\"margin-left: 60px;\">"+
            "   <div class=\"content    \">"+
                                        
            "     <div class=\"subtitle\">"+
            "         <a href=\"../note-index.html\" id=\"note-title\">" + item.notestitle + "</a>" +
               "    </div>"+

              "     <div class=\"detail\" id=\"note-content\">"+
                "       " + item.notescontent + "" +
               "    </div>"+
                                    
              "     <div class=\"cb\"></div>"+
            "   </div>"+
         "  </div>"+
      " </a>"+
  " </div>";
        });
        $("#tea-index-notes").html(mystr);

    }

    function loadTeaIndexQa(id) {
        var _json = jQuery.param({ "id": getPath("user_id") });
        var request = $.ajax({
            url: getPath("lib_path") + "api/teacher/tea_index_qa.ashx",
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

                    displayTeaIndexQa(json.data);

                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) { alert(XMLHttpRequest.readyState); }
        });
    }

    function displayTeaIndexQa(data) {
        var mystr = ""
        //中间读数据
        $.each(data, function (index, item) {

            //循环获取数据  
            mystr += "<a href=\"../user/user.html\" target=\"_blank\">" +
            "  <img src=\""+ item.teaimg +"\" class=\"userHead\" " +
                "  style=\"margin-top:20px;\" width=\"40\" height=\"40\" data-userid=\"3471850\">" +
                "</a>" +

            " <div class=\"content\">" +
            "  <div class=\"tea-main-head\">" +
            "  <div class=\"teacher-name\">" +
            "     <a class=\" \" href=\"../user/user.html\" data-userid=3471850 target=\"_blank\" id=\"\">" +
            "         " + item.name + "" +
            "     </a>" +
            " </div>" +
            "   <div class=\"time\">" +
            "       3天前" +
            "  </div>" +
            "   <div class=\"title\">" +
            "       提出了问题" +
            "  </div>" +


            " </div>" +
            " <a href=\"./note-index.html\" target=\"_blank\"> " +
            "  <div class=\"tea-main-body fl\" style=\"margin-left: 60px;\">" +
            "   <div class=\"content    \">" +

            "     <div class=\"subtitle\">" +
            "         <a href=\"../note-index.html\" id=\"note-title\">" + item.qatitle + "</a>" +
               "    </div>" +

              "     <div class=\"detail\" id=\"note-content\">" +
                "       " + item.qacontent + "" +
               "    </div>" +

              "     <div class=\"cb\"></div>" +
            "   </div>" +
         "  </div>" +
      " </a>" +
  " </div>";
        });
        $("#tea-index-qa").html(mystr);

    }



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
            mystr += "<a href=\"./user/user.html\" target=\"_blank\">"+
            "        <img src=\"" + item.teaimg + "\"" +
                "                class=\"userHead \" width=\"40\" height=\"40\" data-userid=\"3471850\">"+
                "       </a>"+
            "       <div class=\"content\">"+
            "       <div class=\"tea-main-head\">"+
            "            <div class=\"teacher-name\">"+
            "                 <a class=\" \" date-userid=\"3471850\" href=\"../user/user.html\" target=\"_blank\">"+
            "                       " + item.teaname + "" +
            "                    </a>"+
            "                </div>"+
            "                <div class=\"time\">"+
            "                   2016-12-28"+
            "                </div>"+
            "               <div class=\"title\">"+
            "                  修改了课程"+
            "                </div>"+
            "             </div>"+
            "              <div class=\"tea-main-body-index pr cf\">"+
            "                  <a href=\"tea-course-content.aspx\" class=\"bg-lesson\" target=_blank>"+
            "                     <img class=\"fl\" src=\"../" + item.imgurl + "\"" +
                "   width=\"240\" height=\"135\"/>"+

                " <div class=\"content fl w636\">"+

                " <div class=\"subtitle_les\">"+
                "    <a href=\"tea-course-content.aspx\" target=\"_blank\">" + item.coursename + "</a>" +
                "  </div>"+
            "  <div class=\"describe\">"+
            "     <span>教师：" + item.teaname + "</span>" +
            "    <span class=\"ml20\"><strong> " + item.score + "</strong>学分<strong>" + item.time + "</strong>学时</span>" +
           
            "  </div>"+
            "  <div class=\"detail\">"+

            "  " + item.introduction + "" +
            "  </div>"+
            "   </div>"+
            "  </a>"+

            "</div> "+


            "</div>";
        });
        $("#tea-index-lesson").html(mystr);

    }
    
    
    function init() {
        loadTeaIndex(getPath("user_id"));
        loadTeaIndexNotes(getPath("user_id"));
        loadTeaIndexQa(getPath("user_id"));
        loadTeaIndexLesson(getPath("user_id"));
    }

    init();