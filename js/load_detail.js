// JScript 文件


    
    //根据id查询某一个类别
    function loadLessonTitle(id)
    {
        var _json = jQuery.param({ "id": GetQueryString("id") });
        var request = $.ajax({ 
                url: getPath("lib_path") + "api/course/load_detail.ashx",  
                type: "POST",  
                async: false,  
                data: _json, //不能直接写成 {id:"123",code:"tomcat"}  
                dataType: "json",  
                // contentType: "charset=utf-8",  
                cache: false,  
                
             //4 接受返回过来的数据，同样是json格式的，根据返回过来的数据给出相应的提示或操作
                success: function (data) {  
                    var json=data;
                    
                    //返回过来的是1 表示插入成功了
                     if(json.r=="0")
                     {
                        //提示插入成功
                       
                     }
                     //否则则是插入失败了
                     else
                     {
                       
                         displayLessonTitle(json.data);
                         
                     }
                },  
                error: function (XMLHttpRequest, textStatus, errorThrown) { alert(XMLHttpRequest.readyState); }  
            }); 
    }
    
    //显示类别，其中某条直接显示
    function displayLessonTitle(data)
    {
//        var img = "";
        //中间读数据
        $.each(data, function (index, item) {
           
            //循环获取数据  
            $("#lesson-title").html(item.name);
            $("#lesson-profession").html(item.profession);
            $("#lesson-time").html(item.time);
            $("#lesson-introduction").html(item.introduction);
            $("#lesson-introduction-down").html(item.introduction);
            $("#lesson-imgurl").html("<img src=\""+item.imgurl+"\" width=\"450\"  height=\"251\">");
            $("#lesson-content-img").html("<img src=\"../images/course-content3.jpg\" width=\"116\" height=\"65\">");
            $("#lesson-teaname").html(item.teaname);
            $("#lesson-teaname-down").html(item.teaname);
            $("#lesson-tea-description").html(item.desc);
            $("#lesson-teaimg-down").html("<img class=\"teacher-slider-avatar\" src=\"" + item.teaimg + "\">");
            //$("#resource-desc").html(item.resourcedesc);
        });
        
    
    }
    


//课程详情页视频资源
    function loadLessonVideo(id) {
        var _json = jQuery.param({ "id": GetQueryString("id") });
        var request = $.ajax({
            url: getPath("lib_path") + "api/course/load_lesson_video.ashx",
            type: "POST",
            async: false,
            data: _json, //不能直接写成 {id:"123",code:"tomcat"}  
            dataType: "json",
            // contentType: "charset=utf-8",  
            cache: false,

            //4 接受返回过来的数据，同样是json格式的，根据返回过来的数据给出相应的提示或操作
            success: function (data) {
                var json = data;

                //返回过来的是1 表示插入成功了
                if (json.r == "0") {
                    //提示插入成功

                }
                    //否则则是插入失败了
                else {


                    displayLessonVideo(json.data);
                }
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) { alert(XMLHttpRequest.readyState); }
        });
    }

    function displayLessonVideo(data) {
        //先加表头
        var mystr = "";
                       

        //中间读数据
        $.each(data, function (index, item) {
            //循环获取数据  
            var a = item.id;
            var b = item.name;
            mystr += "<div class=\"couse-detail-content_lefter_topin fl\">" +
                        "<div class=\"course-img\">" +
                             "<a href=\""+ item.videourl +"\">" +
                                "<div id=\"lesson-content-img\"><img src=\"" + item.resourceimg +"\" width=\"116\" height=\"65\"></div>"+
                                "<div class=\"couse-list-order\">"+ item.videoname +"</div>"+
                             "</a>"+
                         "</div>"+
                         "<div class=\"couse-detail-content_lefter_topin_font\">"+
                            "<a href=\"./video/video-course-content.aspx\" id=\"resource-desc\">" + item.resourcedesc + "</a>" +
                            "<span class=\"trash\"></span>"+
                         "</div>" +
                     "</div>";

        });

        //最后加表尾
       

        //显示在页面上
        $("#resourcevideo").html(mystr);

    }
//    function displayLessonContent(data) {
//        //先加表头
//        var mystr = "<div class=\"couse-detail-content_lefter_top fl\">"
//                    "<div class=\"couse-detail-content_lefter_topin fl\">"
//                        "<div class=\"course-img\">"
//                            "<a href=\"../video/video-course-content.html\">";

//        //中间读数据
//        $.each(data, function (index, item) {
//            //循环获取数据  
//            var a = item.id;
//            var b = item.name;
//            mystr += "<option value=\"" + a + "\">" + b + "</option>";

//        });

//        //最后加表尾
//        mystr += "</a></div>";

//        //显示在页面上
//        $("#div_list").html(mystr);
//   }
    



    //教师个人中心
//根据id查询某一个类别

    var userDetail = [];

    function loadTeaIndex(id) {
        var _json = jQuery.param({ "id": GetQueryString("id") });
        var request = $.ajax({
            url: getPath("lib_path") + "api/course/load-tea-index.ashx",
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
            $("#note-title").html(item.notetitle);
            $("#note-content").html(item.notecontent);
        });


    }

    
    
    function init() {
        loadLessonTitle();
        loadLessonVideo();
    }

    init();