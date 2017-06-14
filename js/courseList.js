

// 初始化

function init() {
    loadNav(false);
    loadStyle();
    loadStyle2();
    loadStyle3(id);
    loadStyle4(id);
    loadStyle5();
   
}

init();



//课程列表nav
function loadStyle() {
    var request = $.ajax({
        url: getPath("lib_path") + "api/course/load_course_list_nav.ashx",
        type: "POST",
        async: false,
        //data: _json, //不能直接写成 {id:"123",code:"tomcat"}  
        dataType: "json",

        cache: false,

        //4 接受返回过来的数据，同样是json格式的，根据返回过来的数据给出相应的提示或操作
        success: function(data) {
            var json = data;

            //返回过来的是1 表示插入成功了
            if (json.r == "0") {
                //提示插入成功
                alert('失败');
            }
            //否则则是插入失败了
            else {
                //alert('成功');

                var mystr = "<span>专业方向：</span><a href=\"course-list.aspx\" class=\"on\">全部</a>";
                $.each(json.data, function(index, item) {

                    mystr +=
                    '<a href="javascript:void(0);" onclick="loadStyle3(' + item.id + ')">' + item.a + '</a>'

                });
                mystr += "";
                $("#course_nav").html(mystr);

            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.readyState);
            alert("加载失败，请刷新页面！");
        }
    });
}


//课程列表内容
function loadStyle2() {
    var request = $.ajax({
        url: getPath("lib_path") + "api/course/load_course_content.ashx",
        type: "POST",
        async: false,
        //data: _json, //不能直接写成 {id:"123",code:"tomcat"}  
        dataType: "json",

        cache: false,

        //4 接受返回过来的数据，同样是json格式的，根据返回过来的数据给出相应的提示或操作
        success: function(data) {
            var json = data;

            //返回过来的是1 表示插入成功了
            if (json.r == "0") {
                //提示插入成功
                alert('失败');
            }
            //否则则是插入失败了
            else {
                //alert('成功');

                var mystr = "";
                $.each(json.data, function(index, item) {

                mystr +=
                    
                    '<li>'+
                    '<a href="course-content.html">'+
                        '<div class="course-list-img">'+
                            '<img src="../' + item.imgurl + '" width="223" height="124">' +
                        '</div>'+
                        '<p class="course-list-container-list-book-name">' + item.name + '</p>' +
                        '<p class="course-list-container-list-difficulty">所属专业：' + item.profession + '</p>' +
                       ' <p class="course-list-container-list-teather">主讲人：' + item.teather + '</p>' +
                       ' <p class="course-list-container-list-study">' + item.visitNum + '人已学过</p>' +
                    '</a>'+
                '</li>'


                }),
                mystr += "";
                $("#cf").html(mystr);

            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.readyState);
            alert("加载失败，请刷新页面！");
        }
    });
}



//根据专业ID获取相关课程列表内容
function loadStyle3(id) {

    var _json = jQuery.param({ "id": id });
    
    var request = $.ajax({
        url: getPath("lib_path") + "api/course/load_course_list_nav_click.ashx",
        type: "POST",
        async: false,
        data: _json, //不能直接写成 {id:"123",code:"tomcat"}  
        dataType: "json",

        cache: false,

        //4 接受返回过来的数据，同样是json格式的，根据返回过来的数据给出相应的提示或操作
        success: function(data) {
            var json = data;

            //返回过来的是1 表示插入成功了
            if (json.r == "0") {
                //提示插入成功
                alert('失败');
            }
            //否则则是插入失败了
            else {
                //alert('成功');

                var mystr = "";
                $.each(json.data, function(index, item) {

                    mystr +=

                    '<li>' +
                    '<a href="course-content.html">' +
                        '<div class="course-list-img">' +
                            '<img src="../' + item.imgurl + '" width="223" height="124">' +
                        '</div>' +
                        '<p class="course-list-container-list-book-name">' + item.name + '</p>' +
                        '<p class="course-list-container-list-difficulty">所属专业：' + item.profession + '</p>' +
                       ' <p class="course-list-container-list-teather">主讲人：' + item.teather + '</p>' +
                       ' <p class="course-list-container-list-study">' + item.visitNum + '人已学过</p>' +
                    '</a>' +
                '</li>'


                }),
                mystr += "";
                $("#cf").html(mystr);

            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.readyState);
            alert("加载失败，请刷新页面！");
        }
    });
}





//根据热门获取相关课程列表内容
function loadStyle4() {

    //var _json = jQuery.param({ "id": id });

    var request = $.ajax({
        url: getPath("lib_path") + "api/course/load_course_list_hot.ashx",
        type: "POST",
        async: false,
        //data: _json, //不能直接写成 {id:"123",code:"tomcat"}  
        dataType: "json",

        cache: false,

        //4 接受返回过来的数据，同样是json格式的，根据返回过来的数据给出相应的提示或操作
        success: function(data) {
            var json = data;

            //返回过来的是1 表示插入成功了
            if (json.r == "0") {
                //提示插入成功
                alert('失败');
            }
            //否则则是插入失败了
            else {
                //alert('成功');

                var mystr = "";
          
                $.each(json.data, function(index, item) {

                    mystr +=

                    '<li>' +
                    '<a href="course-content.html">' +
                        '<div class="course-list-img">' +
                            '<img src="../' + item.imgurl + '" width="223" height="124">' +
                        '</div>' +
                        '<p class="course-list-container-list-book-name">' + item.name + '</p>' +
                        '<p class="course-list-container-list-difficulty">所属专业：' + item.profession + '</p>' +
                       ' <p class="course-list-container-list-teather">主讲人：' + item.teather + '</p>' +
                       ' <p class="course-list-container-list-study">' + item.visitNum + '人已学过</p>' +
                    '</a>' +
                '</li>'


                }),
                mystr += "";
                $("#cf").html(mystr);

            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.readyState);
            alert("加载失败，请刷新页面！");
        }
    });
}


//根据最新获取相关课程列表内容
function loadStyle5() {

    //var _json = jQuery.param({ "id": id });

    var request = $.ajax({
        url: getPath("lib_path") + "api/course/load_course_list_recent.ashx",
        type: "POST",
        async: false,
        //data: _json, //不能直接写成 {id:"123",code:"tomcat"}  
        dataType: "json",

        cache: false,

        //4 接受返回过来的数据，同样是json格式的，根据返回过来的数据给出相应的提示或操作
        success: function(data) {
            var json = data;

            //返回过来的是1 表示插入成功了
            if (json.r == "0") {
                //提示插入成功
                alert('失败');
            }
            //否则则是插入失败了
            else {
                //alert('成功');

                var mystr = "";
                $.each(json.data, function(index, item) {

                    mystr +=

                    '<li>' +
                    '<a href="course-content.html">' +
                        '<div class="course-list-img">' +
                            '<img src="../' + item.imgurl + '" width="223" height="124">' +
                        '</div>' +
                        '<p class="course-list-container-list-book-name">' + item.name + '</p>' +
                        '<p class="course-list-container-list-difficulty">所属专业：' + item.profession + '</p>' +
                       ' <p class="course-list-container-list-teather">主讲人：' + item.teather + '</p>' +
                       ' <p class="course-list-container-list-study">' + item.visitNum + '人已学过</p>' +
                    '</a>' +
                '</li>'


                }),
                mystr += "";
                $("#cf").html(mystr);

            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.readyState);
            alert("加载失败，请刷新页面！");
        }
    });
}


