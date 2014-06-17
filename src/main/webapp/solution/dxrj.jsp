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
								<a href="<%=contextPath%>/solution/dxrj.jsp" style="color: #2E80E4;" class="link2">大型软件企业</a>
							</li>
							<li>
								<a href="<%=contextPath%>/solution/kscz.jsp" style="color: #000;" class="link2">快速成长企业</a>
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
							<p>某软件公司是一家在业内处于领先水平的软件外包提供商，并在全国乃至海外拥有分支机构。</p>
						</div>
						<div class="hr">
							<div class="title">焦点问题</div>
							<p>计算资源冗余严重，服务器硬件老化，增加系统宕机风险，出现问题后恢复速度慢，缺少对所有服务器的状态及性能监控等。</p>
						</div>
						<div class="hr">
							<div class="title">解决方案</div>
							<p>独享带宽的专享云为用户提供256个标准计算单元（ECU）的计算资源池（总计10TB的存储持空间）和50M的优质独享宽度。用户可更具实际需求，定义主机的计算能力，动态调整主机配置，设定内外网IP来进行各主机之间的通信。还可通过广州电信高新产业云服务平台，对每台主机进行监控。</p>
						</div>
						<div class="hr">
							<div class="title">客户受益</div>
							<p>缩短了硬件维修时长，且不必将机器送修。实现了零时间宕机硬件维护，大大提升了可管理性。</p>
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