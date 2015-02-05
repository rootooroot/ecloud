<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>中联润通易云服务平台</title>
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/layout.css'/>" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/jquery.onebyone-min.css'/>"/>
<script type="text/javascript" src="<c:url value='/js/jquery-1.8.2.js'/>"></script>
<!--[if IE]><script type="text/javascript" src="<c:url value='/js/html5.js'/>"></script><![endif]-->
<script type="text/javascript" src="<c:url value='/js/jquery.plugins.js'/>"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('#onebyone_slider').oneByOne({
		className:'oneByOne1',
		easeType:'random',
		slideShow:true,
		showArrow:false,
		delay:200,
		slideShowDelay:4000
	})
});
</script>
<style type="text/css">
	.header{background:url(images/header/header43.jpg);}
	#menu ul {width:1280px;list-style: none;}
	#menu ul li {display:inline-block; padding:0px;margin:0px 25px; list-style: none;}
	#menu ul li div{ text-align: center; }
	#menu .i-pic {height:109px;width:120px;}
	#menu .i-jifang {background:url(images/i-jifang.jpg) no-repeat 50% 50% transparent;}
	#menu .i-zhuji {background:url(images/i-zhuji.jpg) no-repeat 50% 50% transparent;}
	#menu .i-fanghuoqiang {background:url(images/i-fanghuoqiang.jpg) no-repeat 50% 50% transparent;}
	#menu .i-ruanlianjie {background:url(images/i-ruanlianjie.jpg) no-repeat 50% 50% transparent;}
	#menu .i-storage {background:url(images/i-storage.png) no-repeat 50% 50% transparent;}
</style>
</head>
<body>
	<div id="container">
		<jsp:include page="include/header-login.jsp"></jsp:include>
		<jsp:include page="include/header.jsp"></jsp:include>
		<div id="header">
			<div id="onebyone_slider">
				<div class="oneByOne_item">
					<span class="ob1_title">漫画原创时间日期Jquery插件</span>
					<span class="ob1_description">1、可以灵活设计响应事件（Event） 2、层显示的位置（Left，Top）3、年月日之的连接符号 4、自由控制是否显示时间（isTime）5、年份下列列表的开始值与结束值。</span>
					<span class="ob1_button"><a href="http://www.17sucai.com/" class="default_button">查看详情</a></span>
					<img src="images/header/2.png" class="ob1_img_device1" alt="漫画原创时间日期Jquery插件" />
				</div>
				
				<div class="oneByOne_item">
					<span class="ob1_title">jcDate原创时间Jquery插件</span>
					<span class="ob1_description">可支持：1、图标样式名称;2、响应的事件;3、出现的速度;4、靠左的位置;5、靠上的位置;6、日期连接字符;7、关闭时间。</span>
					<span class="ob1_button"><a href="http://www.17sucai.com/" class="default_button">查看详情</a></span>
					<img src="images/header/2.png" class="ob1_img_device1" alt="jcDate原创时间Jquery插件" />
				</div>
				
				<div class="oneByOne_item">
					<span class="ob1_title">漫画原创弹出内容提示Jquery插件</span>
					<span class="ob1_description">可支持响应的事件、提示层显示的时间、显示的消息、滑动速度、提示类型（1、success 2、error 3、warning）等参数的灵活设置，具体请查看详细介绍。。。</span>
					<span class="ob1_button"><a href="http://www.17sucai.com/" class="default_button">查看详情</a></span>
					<img src="images/header/2.png" class="ob1_img_device1" alt="漫画原创弹出内容提示Jquery插件" />
				</div>
				
			</div>
		</div>
		<div id="menu">
			<div>
				<ul>
					<li>
						<div class="i-pic i-jifang"></div>
						<div>服务器</div>
					</li>
					<li>
						<div class="i-pic i-zhuji"></div>
						<div>云主机</div>
					</li>
					<li>
						<div class="i-pic i-fanghuoqiang"></div>
						<div>防火墙</div>
					</li>
					<li>
						<div class="i-pic i-ruanlianjie"></div>
						<div>软链接</div>
					</li>
					<li>
						<div class="i-pic i-storage"></div>
						<div>云存储</div>
					</li>
				</ul>
			</div>
		</div>
		<div id="mainContent">
			<div id="moveDiv" style="width:100px;height:100px;border:1px solid black;left:600px;position:absolute"></div>
		</div>
		<div id="footer">This is the footer</div>
	</div>
	
	 
	<script type="text/javascript">
	var flag = 204;
	function doMove() {
		var _div = document.getElementById("moveNav");
		var _curLeft = parseInt(_div.style.right);
		var _distance = 5;
		if (_curLeft + _distance < flag) {
			//alert(_curLeft + _distance);
			//if(parseInt(_curLeft + _distance) == -50){
			//	$("#moveNav").css("position","absolute");
			//}
			_div.style.right = (_curLeft + _distance) + "px";
			window.setTimeout("doMove()", 1);
		}
	}
	doMove();
	</script> 
</body>
</html>