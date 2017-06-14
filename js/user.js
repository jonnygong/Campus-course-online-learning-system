//用户简介
function loadUserInfor() {
    var request = $.ajax({
     url: "api/user/load_user_person_infor.ashx",
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
                alert("加载失败，请刷新页面！");
            
            }
            //否则则是插入失败了
            else {
                

                var mystr = "";
                $.each(json.data, function(index, item) {

                mystr +=
                '<div class="bg-other-l">'+
                '<div class="bg-other-l-in">'+
                '<img class="teacher-slider-avatar" src="' + item.user_picUrl + '">' +
                '</div>'+
                '</div>'+
                '<div class="bg-other-r">'+
                '<h3 class="user-name clearfix">'+
                    '<span>'+item.user_name+'</span>'+
                '</h3>'+
                '<p class="about-info">' + item.user_degree + '</p>' +
                '<p class="user-desc">' + item.user_intro + '</p>' +
                '</div>'   
                }),
                $("#user_infor").html(mystr);

            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.readyState);
            alert("加载失败，请刷新页面！");
        }
    });

}

//用户kecheng
function loadUserCourse() {
    var request = $.ajax({
    url: "api/user/load_user_course.ashx",
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
                alert("加载失败，请刷新页面！");
               
            }
           
            else {
                var mystr = "";
                $.each(json.data, function(index, item) {

                    mystr +=
                 '<hr size="1" width="840px" align="center" color="#dadde2">' +

                '<div class="search-course-content">' +
                '<div class="search-course-contentdetails"><img src="' + item.course_picUrl + '">' +
            '<div class="search-course-contentdetails-wend">' +

                '<p><span class="teacher-content-font"><a href="#">' + item.course_name + '</a></span></p>' +
                '<div class="search-course-contentdetails-wend-ziti2" style="line-height: 65px">' + item.course_teacherDegree + '</div>' +
                '<div class="search-course-contentdetails-wend-ziti2">' + item.course_intro + '</div>' +
                '</div>' +
                '</div>' +
                '</div>';

                }),
                $("#course_content").html(mystr);

            }
        },
        error: function(XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.readyState);
            alert("加载失败，请刷新页面！");
        }
    });

}

function init() {
    loadUserInfor();
    loadUserCourse();
}

init();


