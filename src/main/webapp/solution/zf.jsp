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
								<a href="<%=contextPath%>/solution/zf.jsp" style="color: #2E80E4;" class="link2">政府客户</a>
							</li>
							<li>
								<a href="<%=contextPath%>/solution/dxrj.jsp" style="color: #000;" class="link2">大型软件企业</a>
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
							<p>某政府机构需要建设综合管理信息系统应用支撑平台，为该机构的内部组织和外部公众执行统一的权限管理、资源控制、数据交换、应用集成和工作流监控等功能，为业务应用的流程一体化提供技术支持，避免各业务系统对功能的重复开发。</p>
						</div>
						<div class="hr">
							<div class="title">焦点问题</div>
							<ul>
								<li>业务的全球化发展，人员与分支机构的骤增；</li>
								<li>企业架构需要“外部网”和“内部网”相结合的方式进行；</li>
								<li>希望以超强的网络安全级别和高弹性的服务能力，来防止网络恶意攻击或因社会热点以及新政策公布而导致的访问量突升。</li>
							</ul>
						</div>
						<div class="hr">
							<div class="title">解决方案</div>
							<p>为用户提供云主机和专享云两项服务，以租赁的方式建立“内外部云系统”。负载均衡器的使用让系统具备高可靠性，可用率指标达99.9%以上（含），安全冗余的计算，1:3的全数据备份存储及多层保护的网络架构。物理防火墙等网络设备的托管服务增强抗攻击能力。同时，还提供网络、硬件、软件、应用、数据的全面外包服务。</p>
						</div>
						<div class="hr">
							<div class="title">客户受益</div>
							<p>此方案中，用户有一次投入转为分次付费，这不仅降低了初期建设成本，并实现了整体的成本节约。用户根据使用量需求，租用必要的服务器和存储资源，可以避免不必要的资源浪费，同时还能解决访问量突升时快速扩容的问题。</p>
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