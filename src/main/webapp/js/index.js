//页面右侧固定导航栏样式
$(document).ready(function(){

	if($('#service').click()){
		$('#serviceHref').attr("href","");
	}

});

//为返回顶部元素添加点击事件
$('.toTop').click(function(){
	//将当前窗口的内容区滚动高度改为0，即顶部
	$("html,body").animate({scrollTop:0},"fast");
});

