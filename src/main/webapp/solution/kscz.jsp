<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
	//System.out.println(contextPath);
%>
<html>
<head>
	<title>中联润通易云服务平台</title>
	<meta http-equiv="X-UA-Compatible" content="IE=9"/>
	<%-- <link style="text/css" rel="stylesheet" href="<%=contextPath %>/css/help.css"></link> --%>
	<link style="text/css" rel="stylesheet" href="<%=contextPath %>/css/Layout.css"></link>
	<link style="text/css" rel="stylesheet" href="<%=contextPath %>/css/index.css"></link>
	<script type="text/javascript" src="<%=contextPath %>/js/jquery-1.8.2.js"></script>
	<%@include  file="../include/common.jsp" %>
	<%-- <script type="text/javascript" src="<%=contextPath %>/js/menu.js"></script>
	<script type="text/javascript" src="<%=contextPath %>/js/navMenu.js"></script> --%>
	<script type="text/javascript" src="<%=contextPath %>/js/scrolltopcontrol.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
		});
	</script>

</head>
<body>
<div id="Container">
	<div id="Header">
		<jsp:include page="../include/header.jsp"></jsp:include>
	</div>
		<div class="gx-solution-guanggao"></div>
	<div class="gx-solution">
		<div class="body" style="overflow:hidden;overflow: hidden;">
			<div class="faq_box">
				<div class="help_left" style="position: relative;">
					<!-- 导航 begin -->
					<div class="faq_class">
						<ol style="margin-bottom: 0px;margin-top: 0px;">
							<li>
								<a href="<%=contextPath%>/solution/zf.jsp" style="color: #000;" class="link2">政府客户</a>
							</li>
							<li>
								<a href="<%=contextPath%>/solution/dxrj.jsp" style="color: #000;" class="link2">大型软件企业</a>
							</li>
							<li>
								<a href="<%=contextPath%>/solution/kscz.jsp" style="color: #2E80E4;" class="link2">快速成长企业</a>
						 	</li>
							<li style="border:0px;">
								<a href="<%=contextPath%>/solution/ksczhlw.jsp" style="color: #000;" class="link2">快速成长互联网公司</a>
							</li>
						</ol>
					</div>
				</div>
	
				<div class="faq_body">
					<div class="help_nav">
						<div class="hr">
							<div class="title">场景描述</div>
							<p>某超市在运营的二十余年间，已发展成为拥有2000多家分店的，分布全国的连锁企业。</p>
						</div>
						<div class="hr">
							<div class="title">焦点问题</div>
							<p>分支机构地域跨度大、协调难度大、终端分散而无法了解IT资产状态、网络接入质量有别，终端和重要数据缺少备份，维护人员少，工作量巨大。</p>
						</div>
						<div class="hr">
							<div class="title">解决方案</div>
							<p>为用户提供500台云主机，每台云主机配备100M的优质共享带宽资源和网络防火墙。各区域管理员可通过广州电信高新产业云管理平台，对辖区内的云主机远程进行重启、克隆、备份等操作。分店店员登录后，即可使用。</p>
						</div>
						<div class="hr">
							<div class="title">客户受益</div>
							<p>有效解决了终端难管理的问题，降低了IT桌面支持成本和维护成本，将因环境和人为因素造成的故障风险率降至最低。让所有数据实现集中保存，实时备份的同时也保证了数据的安全性。</p>
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
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</div>
</div>
</body>
</html>