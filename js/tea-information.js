


function loadInformation(id) {
    var _json = jQuery.param({ "id": getPath("user_id") });
    var request = $.ajax({
        url: getPath("lib_path") + "api/teacher/load_information.ashx",
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

                displayInfromation(json.data);

            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) { alert(XMLHttpRequest.readyState); }
    });
}

function displayInfromation(data) {
    var mystr = ""
    //中间读数据
    $.each(data, function (index, item) {

        //循环获取数据  
        mystr += "<div class=\"info-wapper\">"+
                            
                 "           <div class=\"info-box clearfix\">"+
                    "            <label class=\"pull-left\">头像</label>"+
                   "             <div class=\"pull-left\"><button class=\"upload-tx\">点击更换头像</button></div>"+
                "            </div>"+
                "            <div class=\"info-box clearfix\">"+
                 "               <label class=\"pull-left\">姓名</label>"+
                 "               <div class=\"pull-left\" ondblclick=\"edit(this)\"><input type=\"text\" id=\"name\" value=\""+item.name+"\"></div>"+
                "            </div>"+
                "            <div class=\"info-box clearfix\">"+
                   "             <label class=\"pull-left\">邮箱</label>"+
                    "            <div class=\"pull-left\" ondblclick=\"edit(this)\"><input type=\"text\" id=\"email\" value=\""+item.email+"\"></div>"+
                     "       </div>"+
                      "      <div class=\"info-box clearfix\">"+
                       "         <label class=\"pull-left\">密码</label>"+
                       "        <div class=\"pull-left\" ondblclick=\"edit(this)\"><input type=\"text\" id=\"pwd\" value=\""+item.pwd+"\"></div>"+
                         "   </div>"+
                          "  <div class=\"info-box clearfix\">"+
                           "     <label class=\"pull-left\">性别</label>"+
                            "    <div class=\"scroll-parent pull-left\">"+
                            "        <div class=\"pull-left\" ondblclick=\"edit(this)\"><input type=\"text\" id=\"sex\" value=\"" + item.sex + "\"></div>" +
         "                       </div>"+
          "                  </div>"+
           "             </div>"+
            "            <div class=\"info-box clearfix\">"+
             "               <label class=\"pull-left\">年龄</label>"+
              "              <div class=\"pull-left\" ondblclick=\"edit(this)\">"+
               "                 <input type=\"text\" id=\"age\" value=\""+item.age+"\">"+
                "            </div>"+
               "       </div>"+
                  "      <div class=\"info-box clearfix\">"+
                   "         <label class=\"pull-left\">专业</label>"+
                    "        <div class=\"pull-left\" ondblclick=\"edit(this)\"><input type=\"text\" id=\"degree\" value=\""+item.degree+"\"></div>"+
                     "   </div>"+
                      "  <div class=\"info-box clearfix\">"+
                       "     <label class=\"pull-left\">学历</label>"+
                        "    <div class=\"pull-left\" ondblclick=\"edit(this)\"><input type=\"text\" id=\"edu\" value=\""+item.edu+"\"></div>"+
                        "</div>";
    });
    $("#information").html(mystr);

}


function updateInformation() {

    // 1 先获取文本框的数据

    var name = $('#name').val();
    var sex = $('#sex').val();
    var age = $('#age').val();
    var email = $('#email').val();
    var pwd = $('#pwd').val();
    var edu = $('#edu').val();
    var degree = $('#degree').val();

    // 2 组装好送往后台的json数据
    var _json = jQuery.param({ "id": getPath("user_id"), "name": name, "sex": sex, "age": age, "email": email, "pwd": pwd, "edu": edu, "degree": degree });

    // 3 指定送向后台哪个处理程序以及传送的方式，并传送
    var request = $.ajax({
        url: getPath("lib_path") + "api/teacher/change_information.ashx",
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
            if (json.r == "1") {
                //提示插入成功
                //alert("success!!");

            }
                //否则则是插入失败了
            else {
                //alert("fall!!");
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) { alert(XMLHttpRequest.readyState); }
    });
    location.reload(true);
    //            loadLessonVideo();
}

function init() {
    loadInformation(getPath("user_id"));

}

init();