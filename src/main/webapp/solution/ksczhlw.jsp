<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
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
								<a href="<%=contextPath%>/solution/kscz.jsp" style="color: #000;" class="link2">快速成长企业</a>
						 	</li>
							<li style="border:0px;">
								<a href="<%=contextPath%>/solution/ksczhlw.jsp" style="color: #2E80E4;" class="link2">快速成长互联网公司</a>
							</li>
						</ol>
					</div>
				</div>
	
				<div class="faq_body">
					<div class="help_nav">
						<div class="hr">
							<div class="title">场景描述</div>
							<p>一个在国内及全球华人网站中领先的旅行互动社区网站，它不仅为喜爱旅行的人提供了一个分享、交流、讨论的平台，也是旅游新手的学习场所。</p>
						</div>
						<div class="hr">
							<div class="title">焦点问题</div>
							<p>初创型企业的前期IT设备投入是一个不小的经济压力，但过多的投入又势必影响公司的发展。并且，企业还需承担包括：数据中心、机柜、耗电量、冷气和人力成本。除此之外，还无法保证重要数据的安全性。</p>
						</div>
						<div class="hr">
							<div class="title">解决方案</div>
							<p>可采用10台运行在云端的云主机和1个负载均衡器服务，内部存储采用1:3的冗余数据备份来确保重要数据的安全性，每台云主机还标配100M的优质共享带宽，配合负载均衡器的使用来保持整个系统运行安全。</p>
						</div>
						<div class="hr">
							<div class="title">客户受益</div>
							<ul>
								<li>软件方面：只需仅仅3分钟便可完成一台主机的创建工作，极大节省了部署时间。</li>
								<li>安全方面：每台云主机的业务系统都具备极强的保护措施，业务系统运行中断风险性极小。</li>
								<li>投入成本：由于按照费用成本方式进行付费，极大缩减了前期的资金投入。</li>
							</ul>
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