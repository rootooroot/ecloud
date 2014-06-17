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
	<script type="text/javascript">
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
	<div class="guanggao zmy"></div>
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
						<div class="collapsed">
							<span>存储即服务STaaS</span>
							<a href="<%=contextPath %>/product/staas/yuncunchu/">云存储</a>
						</div>
						<div>
							<span>桌面即服务DaaS</span>
							<a href="<%=contextPath %>/product/daas/yunzhuomian/" style="color:#2E83e8;">桌面云</a>
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
							<div class="zmyImg float-left"></div>
							<div class="text float-left">
								<div class="title">桌面云</div>
								<div class="desc">桌面云是易云产品系列的桌面即服务产品(DaaS)，桌面云服务能够让用户在一个安全的云端IT环境中进行办公，支持用户在任何时间、任何地点、使用各种设备访问桌面。</div>
							</div>
							<div class="clear"></div>
						</div>
						<div id="show" class="showNav">
							<div id="hover-menu" class="hover-menu">
								<ul>
									<li class="selected"><a href="#cp-ms">产品描述</a></li>
									<li><a href="#cp-fl">产品分类</a></li>
									<li><a href="#cp-td">产品特点</a></li>
									<li><a href="#cp-db">与传统物理桌面对比</a></li>
								</ul>
							</div>
						</div>
						<div class="items">
							<div class="item-0" id="cp-ms">
								<ul>
									<li>
										<div class="item-title">产品描述</div>
										<div class="item-detail">
											<div>桌面云依托易云的基础架构平台，通过桌面云管理平台为企业分配和管理用户桌面；借助易云的安全即服务，使得DaaS能够和计算即服务产品CaaS拥有同等的安全防护级别；同时通过运维服务的方式完成用户桌面的交付。用户只需要能在本地连接到云端桌面即可，无需关心桌面云环境的配置、部署、分配维护等一些列繁琐的工作。</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="item-1" id="cp-fl">
								<ul>
									<li>
										<div class="item-title">产品分类</div>
										<div class="item-detail">
											<div>目前已经推出两个版本的桌面云产品，分别是插件版和平台版。针对不同的需求特点用户可以选择不同的版本。</div>
											<ul style="padding：0px; list-style-type: decimal;">
												<li>插件版：<p>插件版的桌面云是通过安装客户端软件的方式来使用桌面，这个版本的特点是能够支持多种终端平台包括瘦客户机、令客户机以及安卓的终端设备等。对视频播放、3D图形渲染等要求较高的用户较为合适；</p></li>
												<li>平台版：<p>平台版是通过浏览器的方式来访问桌面平台，这个版本的桌面云特点是对终端要求低，只要能支持java环境即可；同时该版本的平台安全级别更高，一方面是基于隧道包裹的数据传输，一方面是基于物理介质的安全认证，因此对安全级别要求较高的用户较为适合。</p></li>
											</ul>
										</div>
									</li>
								</ul>
							</div>
							<div class="item-2" id="cp-td">
								<ul>
									<li>
										<div class="item-title">产品特点</div>
										<div class="item-detail">
											<ul style="padding：0px; list-style-type: decimal;">
												<li>
													安全优势：
													<p>虚拟安全域划分</p>
													<p>终端访问的多种安全机制</p>
													<p>部署环境的安全，安全服务体系，满足国家等级保护</p>
												</li>
												<li>
													定制化优势：
													<p>业务定制化，从虚拟化平台到桌面管理平台，拥有完整的自主知识产品，能够灵活完成业务定制化</p>
													<p>服务定制化，能够根据用户的需求，进行服务范围选择，包括桌面托管服务</p>
												</li>
												<li>
													服务优势：
													<p>提供桌面云环境的部署服务</p>
													<p>提供桌面云的管理服务</p>
													<p>支持对桌面的故障处理和系统扩容等服务</p>
													<p>提供终端设备使用服务</p>
												</li>
											</ul>
										</div>
									</li>
								</ul>
							</div>
							<div class="item-3" id="cp-db">
								<ul>
									<li>
										<div class="item-title">与传统物理桌面对比</div>
										<div class="item-detail">
											<table class="db">
												<tr>
													<th colspan="2">运营目标</th>
													<th>传统桌面</th>
													<th>桌面云</th>
												</tr>
												<tr>
													<th rowspan="2"><p>数据保护</p><p>数据保密</p></th>
													<td style="background-color: #efefef;">独立的有限保护</td>
													<td>防止数据丢失</td>
													<td>集中保护备份</td>
												</tr>
												<tr>
													<td>难以控制</td>
													<td>防止数据被窃</td>
													<td>有效控制</td>
												</tr>
												<tr>
													<th rowspan="4">集中管理</th>
													<td style="background-color: #efefef;">可靠的SLA</td>
													<td>难以保证SLA</td>
													<td>可预测的SLA</td>
												</tr>
												<tr>
													<td>降低故障风险</td>
													<td>软硬件故障频发</td>
													<td>避免硬件故障</td>
												</tr>
												<tr>
													<td>提高环境部署效率</td>
													<td>4小时装机</td>
													<td>5分钟装机</td>
												</tr>
												<tr>
													<td>不受地域限制</td>
													<td>无法实现</td>
													<td>易云实现</td>
												</tr>
												<tr>
													<th rowspan="3">访问便捷</th>
													<td style="background-color: #efefef;">移动设备访问</td>
													<td>无法实现</td>
													<td>支持多种移动设备</td>
												</tr>
												<tr>
													<td>跨地域访问</td>
													<td>无法实现</td>
													<td>多手段实现</td>
												</tr>
												<tr>
													<td>多场景支持</td>
													<td>无法实现</td>
													<td>支持任意多场景</td>
												</tr>
												<tr>
													<th colspan="2">节能环保，节省电费</th>
													<td>150w</td>
													<td>10w</td>
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