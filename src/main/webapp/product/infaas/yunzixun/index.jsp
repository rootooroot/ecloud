<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<html>
<head>
	<title>中联润通易云服务平台</title>
	<meta http-equiv="X-UA-Compatible" content="IE=9"/>
	<link style="text/css" rel="stylesheet" href="<%=contextPath %>/css/Layout.css"></link>
	<link style="text/css" rel="stylesheet" href="<%=contextPath %>/css/jquery-ui.css"></link>
	<link style="text/css" rel="stylesheet" href="<%=contextPath %>/css/index.css"></link>
	<link style="text/css" rel="stylesheet" href="<%=contextPath %>/css/nav-menu.css"></link>
	<link style="text/css" rel="stylesheet" href="<%=contextPath %>/css/hover-menu.css"></link>
	<script type="text/javascript" src="<%=contextPath %>/js/jquery-1.8.2.js"></script>
	<%@include  file="../../../include/common.jsp" %>
	<script type="text/javascript" src="<%=contextPath %>/js/sdmenu.js"></script>
	<script type="text/javascript" src="<%=contextPath %>/js/pub-util.js"></script>
	<script type="text/javascript" src="<%=contextPath %>/js/scroll.js"></script>
	<script type="text/javascript" src="<%=contextPath %>/js/jquery-ui.js"></script>
	<script type="text/javascript" src="<%=contextPath %>/js/scrolltopcontrol.js"></script>
	<script type="text/javascript" src="<%=contextPath %>/js/volume-price.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
		});
		
		var myMenu;
		window.onload = function() {
			myMenu = new SDMenu("my_menu");
			myMenu.init();
		};
	</script>
</head>
<body>
<div id="Container">
	<div id="Header">
		<jsp:include page="../../../include/header.jsp"></jsp:include>
	</div>
	<div class="guanggao yzx"></div>
	<div class="gx-host">
		<div class="body" style="overflow:hidden;overflow: hidden;">
			<div class="faq_box">
				<div class="help_left" style="position: relative;">
					<div id="my_menu" class="pdmenu">
						<div class="collapsed">
							<span>计算即服务CaaS</span>
							<a href="<%=contextPath %>/product/caas/yunzhuji/">云主机</a>
							<a href="<%=contextPath %>/product/caas/zhuanxiangyun/">专享云</a>
						</div>
						<div class="collapsed">
							<span>存储即服务STaaS</span>
							<a href="<%=contextPath %>/product/staas/yuncunchu/">云存储</a>
						</div>
						<div class="collapsed">
							<span>桌面即服务DaaS</span>
							<a href="<%=contextPath %>/product/daas/yunzhuomian/">桌面云</a>
						</div>
						<div class="collapsed">
							<span>安全即服务SECaaS</span>
							<a href="<%=contextPath %>/product/secaas/safecloud/">安全云</a>
						</div>
						<div>
							<span>资讯即服务INFaaS</span>
							<a href="<%=contextPath %>/product/infaas/yunzixun/" style="color:#2E83e8;">云资讯</a>
						</div>
					</div>
				</div>
	
				<div class="faq_body">
					<div class="help_nav">
						<div class="hr">
							<div class="yzxImg float-left"></div>
							<div class="text float-left">
								<div class="title">云资讯</div>
								<div class="desc">为用户提供云计算资讯，让用户时刻掌握云计算产业动态、云计算技术发展以及云计算产品动态。</div>
							</div>
							<div class="clear"></div>
						</div>
						<div id="show" class="showNav">
							<div id="hover-menu" class="hover-menu">
								<ul>
									<li class="selected"><a href="#cp-ms">产品描述</a></li>
									<li><a href="<%=contextPath%>/arcticle/list.htm" target="_blank">进入云资讯</a></li>
								</ul>
							</div>
						</div>
						<div class="items">
							<div class="item-0" id="cp-ms">
								<ul>
									<li>
										<div class="item-title">产品描述</div>
										<div class="item-detail">
											<div>云资讯产品旨在从云计算概念、技术讲解到应用帮助用户了解云计算、紧跟云计算市场动态。包括云计算技术、云计算应用、云计算产业、云计算市场、云存储、云端安全、云服务等相关资讯，让读者明白什么是云计算并了解云计算。</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="pager">
		<div class="wrap2">
			<div class="gx-service">
				<div class="float-left">
					<div class="gx-cypt" onclick="toRedirect(this)"></div>
				</div>
				<div class="float-left">
					<div class="gx-fwyzc" onclick="toRedirect(this)"></div>
				</div>
				<div class="float-left">
					<div class="gx-gywm" onclick="toRedirect(this)"></div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</div>
	<div id="Footer">
		<jsp:include page="../../../include/footer.jsp"></jsp:include>
	</div>
</div>
</body>
</html>