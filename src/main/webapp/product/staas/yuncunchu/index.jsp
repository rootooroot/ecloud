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
			initVolumePrice();
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
	<div class="guanggao ycc"></div>
	<div class="gx-host">
		<div class="body" style="overflow:hidden;overflow: hidden;">
			<div class="faq_box">
				<div class="help_left" style="position: relative;">
					<!-- 导航 begin -->
					<div id="my_menu" class="pdmenu">
						<div class="collapsed">
							<span>计算即服务CaaS</span>
							<a href="<%=contextPath %>/product/caas/yunzhuji/">云主机</a>
							<a href="<%=contextPath %>/product/caas/zhuanxiangyun/">专享云</a>
						</div>
						<div>
							<span>存储即服务STaaS</span>
							<a href="<%=contextPath %>/product/staas/yuncunchu/" style="color:#2E83e8;">云存储</a>
						</div>
						<div class="collapsed">
							<span>桌面即服务DaaS</span>
							<a href="<%=contextPath %>/product/daas/yunzhuomian/">桌面云</a>
						</div>
						<div class="collapsed">
							<span>安全即服务SECaaS</span>
							<a href="<%=contextPath %>/product/secaas/safecloud/">安全云</a>
						</div>
						<div class="collapsed">
							<span>资讯即服务INFaaS</span>
							<a href="<%=contextPath %>/product/infaas/yunzixun/">云资讯</a>
						</div>
					</div>
				</div>
	
				<div class="faq_body">
					<div class="help_nav">
						<div class="hr">
							<div class="img float-left"></div>
							<div class="text float-left">
								<div class="title">云存储</div>
								<div class="desc">基于云计算及虚拟技术，通过动态管理虚拟存储资源池，为用户提供企业数据的存储，异地共享及备份等标准云存储服务。</div>
							</div>
							<div class="clear"></div>
						</div>
						<div id="show" class="showNav">
							<div id="hover-menu" class="hover-menu">
								<ul>
									<li class="selected"><a href="#cp-ms">产品描述</a></li>
									<li><a href="#cp-td">产品特点</a></li>
									<li><a href="#cp-jg">产品价格</a></li>
								</ul>
							</div>
						</div>
						<div class="items">
							<div id="cp-ms" class="item-0">
								<ul>
									<li>
										<div class="item-title">产品描述</div>
										<div class="item-detail">
											<ol>
												<li>提供基于云计算海量存储平台的专享存储服务。</li>
												<li>基于互联网，可为企业用户提供最高位PB级的存储空间。</li>
												<li>仅需使用浏览器及标准FTP软件即可实现文件或数据的上传、存储、备份、管理及企业内部共享。</li>
											</ol>
										</div>
									</li>
								</ul>
							</div>
							<div id="cp-td" class="item-1">
								<ul>
									<li>
										<div class="item-title">产品特点</div>
										<div class="item-detail">
											<div>采用的是大规模分布式存储的架构,提供标准的接口规范以及产品特性。</div>
											<table class="cptd">
												<tr>
													<th><img src="<%=contextPath %>/images/volume-01.jpg"/></th>
													<td>
														<div class="title">可靠性</div>
														<div class="block">具有容错能力,能够非常快速地恢复系统,停机时间非常短。所提供的服务水平协议(SLA) 保证 99.99% 的可用性。</div>
													</td>
												</tr>
												<tr>
													<th><img src="<%=contextPath %>/images/volume-02.jpg"/></th>
													<td>
														<div class="title">简单性</div>
														<div class="block">基于简单的概念,为开发应用程序提供很强的灵活性。如果需要,可以在组件之上构建更多功能,从而构建更复杂的存储方案。</div>
													</td>
												</tr>
												<tr>
													<th><img src="<%=contextPath %>/images/volume-03.jpg"/></th>
													<td>
														<div class="title">可伸缩性</div>
														<div class="block">提供很强的可伸缩性,可以在出现需求高峰时轻松快速地扩展。</div>
													</td>
												</tr>
												<tr>
													<th><img src="<%=contextPath %>/images/volume-04.jpg"/></th>
													<td>
														<div class="title">安全性</div>
														<div class="block">在云存储中创建的每个bucket和对象都是创建它们的用户账户私有的。必须显式地把权限授予其他用户和客户,这样他们才能看到 bucket 中的对象列表和下载其中 的数据。</div>
													</td>
												</tr>
											</table>
										</div>
									</li>
								</ul>
							</div>
							<div id="cp-jg" class="item-3">
								<ul>								
									<li>
										<div class="item-title">产品价格</div>
										<div class="item-detail">
											<table class="cpjg">
												<tr>
													<th>采购单位：</th>
													<td><button class="danwei" id="gb" style="background:#2E83E8;color:#FFF;margin-right: 10px;" onclick="gb()">1GB</button><button  style="background:#E1E5E7;color:#333;margin-right: 10px;" class="danwei" id="tb" onclick="tb()">1TB</button></td>
													<td></td>
												</tr>
												<tr>
													<th>存储：</th>
													<td><div id="volslider" class="slider"></div></td>
													<td><input id="volsliders" maxlength="4" onblur="setVolSlider(this)" type="text"/><span id="volumeSlider">GB</span></td>
												</tr>
												<tr>
													<th></th>
													<td style="padding:0px;">
														<em id="emMin" style="padding-left:5px;text-align:left;">0GB</em>
														<em id="emMax" style="text-align:right;">1000GB</em>
													</td>
													<td></td>
												</tr>
												<tr>
													<th><button id="submit" disabled="disabled" onclick="seeVolumeMoney()">查看费用</button></th><td colspan="2">总费用：<span style="font-size: 24px;color:red;" id="volumeTotal">0</span> 元/月</td>
												</tr>
											</table>
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