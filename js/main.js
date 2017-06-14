// 左边补0
function padLeftZero(str) {
    return ('00' + str).substr(str.length);
}
// 获取地址栏参数
function GetQueryString(key) {
    var reg = new RegExp("(^|&)" + key + "=([^&]*)(&|$)");
    var result = window.location.search.substr(1).match(reg);
    return result ? decodeURIComponent(result[2]) : null;
}

//设置URL参数的方法  
  function setParmsValue(parms, parmsValue) {  
      var urlstrings = document.URL;  
      var args = GetUrlParms();  
      var values = args[parms];  
      //如果参数不存在，则添加参数         
      if (values == undefined) {  
          var query = location.search.substring(1); //获取查询串   
          //如果Url中已经有参数，则附加参数  
          if (query) {  
              urlstrings += ("&" + parms + "=" + parmsValue);  
          }  
          else {  
              urlstrings += ("?" + parms + "=" + parmsValue);  //向Url中添加第一个参数  
          }  
          window.location = urlstrings;  
      }  
      else {  
          window.location = updateParms(parms, parmsValue);  //修改参数  
      }  
  }  

  //修改URL参数，parms：参数名，parmsValue：参数值，return：修改后的URL  
  function updateParms(parms, parmsValue,url) {  
      var newUrlParms = "";
      var url =   arguments[2] || location.href;
      var newUrlBase = url.substring(0, url.indexOf("?") + 1); //截取查询字符串前面的url  
      var query = url.split('?')[1]; //获取查询串
      if(!query){
        return url + '?' + parms + '=' + parmsValue;
      }  
      var pairs = query.split("&"); //在逗号处断开 
      var flag = 0; //标识是否找到   
      for (var i = 0; i < pairs.length; i++) {  
          var pos = pairs[i].indexOf('='); //查找name=value     
          if (pos == -1) continue; //如果没有找到就跳过     
          var argname = pairs[i].substring(0, pos); //提取name     
          var value = pairs[i].substring(pos + 1); //提取value   
          //如果找到了要修改的参数  
          if (findText(argname, parms)) {
                flag = 1;
              newUrlParms = newUrlParms + (argname + "=" + parmsValue + "&");  
          }
          else {  
              newUrlParms += (argname + "=" + value + "&");  
          }  
      }
      //如果最后还是没找到参数则添加参数值
      if(flag == 0){
        return url + '&' + parms + '=' + parmsValue;
      }else{
        return newUrlBase + newUrlParms.substring(0, newUrlParms.length - 1);
      }
        
  }  

  //辅助方法  
  function findText(urlString, keyWord) {  
      return urlString.toLowerCase().indexOf(keyWord.toLowerCase()) != -1 ? true : false;  
  }  

  //得到查询字符串参数集合  
  function GetUrlParms() {  
      var args = new Object();  
      var query = location.search.substring(1); //获取查询串     
      var pairs = query.split("&"); //在逗号处断开     
      for (var i = 0; i < pairs.length; i++) {  
          var pos = pairs[i].indexOf('='); //查找name=value     
          if (pos == -1) continue; //如果没有找到就跳过     
          var argname = pairs[i].substring(0, pos); //提取name     
          var value = pairs[i].substring(pos + 1); //提取value     
          args[argname] = unescape(value); //存为属性     
      }  
      return args;  
  }


// 搜索类型
var selectList = $(".js-selectList"),
    select = $(".js-select");

select.on("click", function () {
    if (selectList.hasClass("hidden")) {
        selectList.removeClass("hidden");
    } else {
        selectList.addClass("hidden");
    }

});
selectList.on("click", function (e) {
    if (e.target && e.target.nodeName.toLocaleLowerCase() == "li") {
        select.html(e.target.innerHTML);
        selectList.addClass("hidden");
    }
});

// 用户资料弹框
window.onload = function () {
    document.querySelector(".js-userAvatar").addEventListener("mouseover", function () {
        $(".js-userMenu").addClass("hover");
    });

    document.querySelector(".js-userMenu").addEventListener("mouseout", function () {
        $(this).removeClass("hover");
    });
}

// 返回顶部
$(".backtop").click(function () {
    $("body,html").animate({
        scrollTop: 0
    }, 700)
});
$(document).scroll(function () {
    var curScroll = ($(window).height()) / 2; //获取当前窗口的可视高度 减半
    if ($(document).scrollTop() > curScroll) { //当滚动条滚动超过一半时，显示返回顶部
        $(".backtop").css({
            opacity: 1,
            display: "block"
        });
    } else if ($(document).scrollTop() <= curScroll && $(document).scrollTop() > 0) {
        $(".backtop").css({
            opacity: 0,
            display: "none"
        });
    }
});



// 表单验证
//
// loginForm
// findPwd


// 只能输入中文
jQuery.validator.addMethod("stringCH", function (value, element) {
    var length = value.length;
    for (var i = 0; i < value.length; i++) {
        if (value.charCodeAt(i) > 127) {
            length++;
        }
    }
    return this.optional(element) || /[^u4E00-u9FA5]/g.test(value);
}, "只能输入汉字,一个汉字占两具字节");

$.validator.setDefaults({
    debug: true
});
$("#loginForm").validate({
    rules: {
        s_number: {
            required: true,
            number: true
        },
        password: {
            required: true
        }
    },
    messages: {
        s_number: {
            required: "请输入学号",
            number: "请输入正确学号"
        },
        password: {
            required: "请输入密码"
        }
    },
    submitHandler: function (form) {
        console.log(form.s_number.value);
        var username = form.s_number.value;
        var password = form.password.value;
        $(".js-login-type input").each(function (index, item) {
            if (item.checked) {
                console.log($(this).val());
                var curType = $(this).val();
                switch (curType) {
                    case "0":
                        // student
                        loginUser(username, password, curType);
                        break;
                    case "1":
                        // teacher
                        loginUser(username, password, curType);
                        break;
                    case "2":
                        // pro
                        break;
                }
            }
        });
        event.preventDefault();
        // $(form).ajaxSubmit();
    }
});

function loginUser(username, password, usertpye) {

    // 2 组装好送往后台的json数据
    var _json = jQuery.param({ "username": username, "password": password, "usertpye": usertpye });
    $.ajax({
        url: getPath("lib_path") + "api/common/login.ashx",
        type: "POST",
        async: false,
        data: _json, //不能直接写成 {id:"123",code:"tomcat"}  
        dataType: "json",
        cache: false,

        success: function (data) {
            var json = data;

            if (json.r === 0) {

                alert("密码或账号错误，请重新登录");

            }
            else {

                alert("登录成功！");
                window.location.reload();
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.readyState);
            alert("加载失败，请刷新页面！");
        }
    });

}


$("#findPwd").validate({
    rules: {
        s_number: {
            required: true,
            number: true
        },
        realname: {
            required: true,
            stringCH: true
        },
        mail:{
            required: true,
            email:true
        }
    },
    messages: {
        s_number: {
            required: "请输入学号",
            number: "请输入正确学号"
        },
        realname: {
            required: "请输入真实姓名"
        },
        mail:{
            required: "请输入电子邮件",
            email:"输入正确格式的电子邮件"
        }
    },
    submitHandler: function (form) {
        // $(form).ajaxSubmit();
    }
});


// 头部
function loadNav(isIndex) {
    $.ajax({
        url: getPath("lib_path") + "api/common/load_nav.ashx",
        type: "POST",
        async: false,
        //data: _json, //不能直接写成 {id:"123",code:"tomcat"}
        dataType: "json",
        // contentType: "charset=utf-8",
        cache: false,

        //4 接受返回过来的数据，同样是json格式的，根据返回过来的数据给出相应的提示或操作
        success: function (data) {
            var json = data;

            //返回过来的是1 表示插入成功了
            if (json.r === "0") {
                //失败
                alert("加载失败，请刷新页面！");
            }

            else {
                // 成功
                // 渲染
                var outstr = "";
                if (isIndex) {
                    $.each(json.data, function (index, item) {

                            outstr += "<li class='nav-item'><a href='" + item.nav_url + "'>" + item.nav_name + "</a></li>";

                    });
                } else {
                    $.each(json.data, function (index, item) {

                        if (item.nav_is_show === 0) {
                            outstr += "<li class='nav-item'><a href='" + item.nav_url + "'>" + item.nav_name + "</a></li>";
                        }

                    });
                }

                $("#js-nav").html(outstr);
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.readyState);
            alert("加载失败，请刷新页面！");
        }
    });

}
// 底部
function loadFooter() {
    $.ajax({
        url: getPath("lib_path") + "api/common/load_footer.ashx",
        type: "POST",
        async: false,
        //data: _json, //不能直接写成 {id:"123",code:"tomcat"}
        dataType: "json",
        // contentType: "charset=utf-8",
        cache: false,

        //4 接受返回过来的数据，同样是json格式的，根据返回过来的数据给出相应的提示或操作
        success: function (json) {
            var links = json.data.links;
            var basicinfo = json.data.basicinfo;

            //返回过来的是1 表示插入成功了
            if (json.r === "0") {
                //失败
                alert("加载失败，请刷新页面！");
            }
            else {
                // 友情链接
                renderFooterLinks(links);
                // 网站底部信息
                renderFooterInfo(basicinfo);
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.readyState);
            alert("加载失败，请刷新页面！");
        }
    });
}

function renderFooterLinks(data) {
    var outstr = "";

    $.each(data, function (index, item) {
        outstr +=
            '<a href="' + item.link_url + '" target="_blank">' + item.link_name + '</a>';
    });
    $("#js-links").html(outstr);
}
function renderFooterInfo(data) {
    $.each(data, function (index, item) {
        $("#js-copy").html("Copyright © 2017 " + item.bi_domain + " All Rights Reserved");
        $("#js-icp").html(item.bi_record);
    });
}


function loadUserInfo() {
    var str = "";
    if ($.cookie("is_login") == null) {
        
        str += '<li class="user-text">'+
        '<a href="javascript:void(0)">身份: 游客</a>' +
        '</li>' +
        '<li class="menu-text">' +
        '<a href="javascript:void(0)" class="js-login notlogin">请登录...</a>' +
        '</li>';
        $("#js-userinfo").html("登录");
        $("#js-userinfo").addClass("notlogin");
    } else {
        // login successfully

        if ($.cookie("user_type") == "0") {
            str += '<li class="user-text">' +
                        '<a href="javascript:void(0)">学号: ' + $.cookie("user_number") + '</a>' +
                        ' </li>' +
                        '<li class="menu-text">' +
                        '<a href="#">个人中心</a>' +
                        '</li>' +
                        '<li class="menu-text">' +
                        '<a href="#">我的学习</a>' +
                        '</li>' +
                        '<li class="menu-text">' +
                        '<a href="javascript:void(0)" id="js-logout">退出登录</a>' +
                        '</li>';
        } else if ($.cookie("user_type") == "1") {
            str += '<li class="user-text">' +
                    '<a href="javascript:void(0)">工号: ' + $.cookie("user_number") + '</a>' +
                    ' </li>' +
                    '<li class="menu-text">' +
                    '<a href="#">个人中心</a>' +
                    '</li>' +
                    '<li class="menu-text">' +
                    '<a href="#">我的课程</a>' +
                    '</li>' +
                    '<li class="menu-text">' +
                    '<a href="javascript:void(0)" id="js-logout">退出登录</a>' +
                    '</li>';
        }
        $("#js-userinfo").html($.cookie("user_name"));
        $("#js-userinfo").removeClass("notlogin");
        
    }
   
    $(".js-userMenu").html(str);
    $("#js-logout").on("click", logout);
}
// 退出登录
function logout() {
    /*
    $.cookie('is_login', null, { path: "/" });
    $.cookie('user_name', null, { path: "/" });
    $.cookie('user_type', null, { path: "/" });
    $.cookie('user_number', null, { path: "/" });
    $.cookie('user_id', null, { path: "/" });
    location.reload();
    */
    $.ajax({
        url: getPath("lib_path") + "api/common/logout.ashx",
        type: "POST",
        async: false,
        //data: _json, //不能直接写成 {id:"123",code:"tomcat"}
        dataType: "json",
        // contentType: "charset=utf-8",
        cache: false,

        //4 接受返回过来的数据，同样是json格式的，根据返回过来的数据给出相应的提示或操作
        success: function (json) {
           

            //返回过来的是1 表示插入成功了
            if (json.r === "0") {
                //失败
                alert("加载失败，请刷新页面！");
            } else {
                alert("您已登出！");
                location.reload();
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            console.log(XMLHttpRequest.readyState);
            alert("加载失败，请刷新页面！");
        }
    });
    
}


function loginDialog() {
    $(".js-loginPanel").removeClass("hidden");
    $(".mask").removeClass("hidden");
}
function loginDialogClose() {
    $(".js-loginPanel").addClass("hidden");
    $(".mask").addClass("hidden");
}

function loginPanel() {
    // 登录框
    // document.querySelectorAll(".js-login").forEach(function (item) {
    //     item.addEventListener("click", loginDialog)
    // });

    $(".js-login.notlogin").on("click", function () {
        loginDialog()
    });
    $(".js-close").on("click", function () {
        loginDialogClose()
    });

    // 登录框Tab切换
    $(".js-tabTitle>li").on("click", function (e) {
        e.stopPropagation();
        var curIndex = $(this).index();
        console.log(curIndex);
        $(this).siblings().removeClass("active").end().addClass("active");
        $(".js-forms").eq(curIndex).removeClass("hidden").siblings(".js-forms").addClass("hidden");
    });
}

function init() {
    /*loadUserInfo();*/
    loadFooter();
    loginPanel();
    $("#js-logout").on("click", logout);
}

init();



