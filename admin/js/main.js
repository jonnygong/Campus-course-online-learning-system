
// 搜索类型
var selectList = document.querySelector(".js-selectList"),
    select = document.querySelector(".js-select");

select.addEventListener("click", function () {
    if(selectList.classList.contains("hidden")){
        selectList.classList.remove("hidden");
    } else {
        selectList.classList.add("hidden");
    }

});

selectList.addEventListener("click", function (e) {
    if(e.target && e.target.nodeName.toLocaleLowerCase() == "li") {
        select.innerHTML = e.target.innerHTML;
        selectList.classList.add("hidden");
    }
});
// 用户资料弹框
var userMenu = document.querySelector(".js-userMenu");
document.querySelector(".js-userAvatar").addEventListener("mouseover", function () {
    userMenu.classList.add("hover");
});

userMenu.addEventListener("mouseout", function () {
    this.classList.remove("hover");
});



// 返回顶部
$(".backtop").click(function () {
    $("body,html").animate({
        scrollTop:0
    },700)
});
$(document).scroll(function () {
    var curScroll = ($(window).height())/2; //获取当前窗口的可视高度 减半
    if( $(document).scrollTop() > curScroll ) { //当滚动条滚动超过一半时，显示返回顶部
        $(".backtop").css({
            opacity:1,
            display:"block"
        });
    } else if($(document).scrollTop() <= curScroll && $(document).scrollTop() > 0) {
        $(".backtop").css({
            opacity:0,
            display:"none"
        });
    }
    // if($(document).scrollTop() > 0){
    //     $(".header").css({
    //         position: "fixed"
    //     })
    // } else {
    //     $(".header").css({
    //         position: "absolute"
    //     })
    // }
});
// 登录框
// document.querySelectorAll(".js-login").forEach(function (item) {
    
// });

for(var i=0; i<document.querySelectorAll(".js-login").length; i++) {
	document.querySelectorAll(".js-login")[i].addEventListener("click", loginDialog)
}

function loginDialog() {
    document.querySelector(".js-loginPanel").classList.remove("hidden");
    document.querySelector(".mask").classList.remove("hidden");
}
document.querySelector(".js-close").addEventListener("click", function () {
    document.querySelector(".js-loginPanel").classList.add("hidden");
    document.querySelector(".mask").classList.add("hidden");

});

// 登录框Tab切换
$(".js-tabTitle>li").on("click", function () {
    var curIndex = $(this).index();
    console.log(curIndex);
    $(this).siblings().removeClass("active").end().addClass("active");
    $(".js-forms").eq(curIndex).removeClass("hidden").siblings(".js-forms").addClass("hidden");
})