

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
        mystr += "<div class=\"ques-list\">"+
        "     <div class=\"ques-answer\">"+
                   "      <div class=\"tag-img\">"+
                      "           <a href=\"../user/user.html\" target=\"_blank\">"+
                     "                <img src=\"" + item.teaimg + "\" alt=\"前端工具\" title=\"前端工具\"/>" +
        "</a>"+
        "</div>"+
"<div class=\"from-tag\">"+
"   来自"+
 "  <a href=\"../user/user.html\" target=\"_blank\">"+item.name+"</a>"+
  "</div>"+
"<div class=\"ques-con\">"+
"   <a href=\"../question_answer.html\" class=\"ques-con-content\" title=\"教师添加视频、教案界面是什么样的？\""+
  "      target=\"_blank\">" + item.qatitle + "</a>" +
   "  <div class=\"share-box clearfix\">"+
    "     <div class=\"show-btn\"><i class=\"icon-down2\"></i></div>"+
     "    <div class=\"share-box-con\">"+
      "       <div class=\"bdsharebuttonbox\" data-tag=\"share_343609\" data-quesid=\"343609\">"+
       "          <a class=\"bds_weixin icon-share-weichat\" data-cmd=\"weixin\"></a>"+
        "         <a class=\"bds_tsina icon-share-weibo\" data-cmd=\"tsina\"></a>"+
         "        <a class=\"bds_qzone icon-share-qq\" data-cmd=\"qzone\"></a>"+
          "   </div>"+
           "  <div class=\"follow\" title=\'关注\' data-ques-id=\"343609\"><i class=\"icon-heart\"></i>"+
            " </div>"+
        " </div>"+
    " </div>"+
        "</div>"+
 "<div class=\"about-info\">"+
  "   <span style=\"color: #5e5e5e;\">5天前</span>"+
   "  <a target=\"_blank\" class=\"reply-num\">0个回答</a>"+
 "</div>"+
"</div>"+

"</div>";
    });
    $("#tea-index-qa").html(mystr);

}


function init() {
    loadTeaIndexQa(getPath("user_id"));
}

init();