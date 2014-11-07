<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
	//System.out.println(contextPath);
%>
<html>
<head>
	<title>中联润通易云服务平台</title>
	<meta http-equiv="X-UA-Compatible" content="IE=9"/>
	<link style="text/css" rel="stylesheet" href="<%=contextPath %>/css/Layout.css"></link>
	<link style="text/css" rel="stylesheet" href="<%=contextPath %>/css/index.css"></link>
	<script type="text/javascript" src="<%=contextPath %>/js/jquery-1.8.2.js"></script>
	<%@include  file="../include/common.jsp" %>
	<script type="text/javascript" src="<%=contextPath %>/js/pub-util.js"></script>
	<script type="text/javascript" src="<%=contextPath %>/js/scrolltopcontrol.js"></script>
	
	<script type="text/javascript">
		jQuery(document).ready(function() {
		});
	</script>
	<style type="text/css">
		table.tbody {
			width:100%;
			border-collapse: collapse;
			border-spacing: 0;
		}
		table.tbody td {
			font-size:12px;
			vertical-align: top;
			
		} 
		table.tbody td img {
			margin-top:5px;
		}
	</style>
</head>
<body>
<div id="Container">
	<div id="Header">
		<jsp:include page="../include/header.jsp"></jsp:include>
	</div>
	<div class="guanggao gsdt"></div>
	<div style='background: url("<%=contextPath%>/images/shadow-bg.jpg") repeat-x; height:550px; width:100%;'>
		<div id="yy" style="width:940px;margin:0 auto;padding:80px 20px 0px;">
			<table class="tbody" style="border:0px;">
				<tr><td style="padding-left:20px;font-family: '微软雅黑';font-size:30px;padding-bottom: 20px;"><div>中联润通与联通集团达成战略合作</div></td><td style="text-align: right;vertical-align: bottom;padding-bottom: 20px;padding-right:10px;">2014-09</td></tr>
				<tr>
					<td style="padding-left:20px;"  colspan="2">
						<div>
							近期，中联润通与联通集团达成战略合作协议，依托中联润通的云计算平台， 来支撑宽带视频云业务的发展；视频云采用先进的易云云计算平台作为基础架构，充分利用云计算特性，实现平台高可用，存储高可靠。规模可快速调整等特点。与传统cdn相比，视频云除了对点播下载的支持之外，对高清视频大规模直播，时移电视功能，视频互动业务有更好的支撑。
						</div>
					</td>
				</tr>
			</table>
			<table class="tbody" style="border:0px;margin-top:80px;">
				<tr><td style="padding-left:20px;font-family: '微软雅黑';font-size:30px;padding-bottom: 20px;"><div>桌面云产品正式发布</div></td><td style="text-align: right;vertical-align: bottom;padding-bottom: 20px;padding-right:10px;">2014-03</td></tr>
				<tr>
					<td style="padding-left:20px;" colspan="2">
						<div style="">
							中联润通正式推出桌面云（DAAS）产品，依托易云的基础架构平台，通过桌面管理平台为企业分配和管理用户桌面；借助易云的安全即服务，使得DaaS能够和计算即服务产品CaaS拥有同等的安全防护级别；同时通过运维服务的方式完成用户桌面的交付。用户只需要能在本地连接到云端桌面即可，无需关心桌面云环境的配置、部署、分配维护等一系列繁琐的工作。 桌面云服务能够让用户在一个安全的云端IT环境中进行办公，支持用户在任何时间、任何地点、使用各种设备访问桌面。<br/>
							更多有关桌面云的信息，请进入桌面云 服务页面。
						</div>
					</td>
				</tr>
			</table>
		</div>
	</div>
	<div class="wrap2">
		<jsp:include page="../include/footerbanner.jsp"></jsp:include>
	</div>
	<div id="Footer">
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</div>
</div>
</body>
</html>