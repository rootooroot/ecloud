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
	<div class="guanggao ljyy"></div>
	<div style='background: url("<%=contextPath%>/images/shadow-bg.jpg") repeat-x; height:550px; width:100%;'>
		<div id="yy" style="width:940px;margin:0 auto;padding:80px 20px 0px;">
			<table class="tbody" style="border:0px;">
				<tr>
					<td style="vertical-align: top;"><img src="<%=contextPath%>/images/ljyy-yylogo.jpg"/></td>
					<td style="padding-left:50px;">
						<div style="font-family: '微软雅黑';font-size:30px;padding-bottom: 20px;">易云</div>
						<div>
							易云是北京中联润通信息技术有限公司面向集团及中小企业客户提供云计算服务的产品，通过扎实稳定的基础架构为用户提供完整IT环境的云服务。帮助企业在不拥有任何物理资源的情况下就可以获得稳定可靠的办公环境、业务环境，同时易云以专业的服务团队金牌服务标准帮助企业解决一切运维难题。
						</div>
					</td>
				</tr>
			</table>
			<table class="tbody" style="border:0px;margin-top:80px;">
				<tr>
					<td style="vertical-align: top;"><img src="<%=contextPath%>/images/ljyy-gslogo.jpg"/></td>
					<td id="ljzlrt" style="padding-left:50px;">
						<div style="font-family: '微软雅黑';font-size:30px;padding-bottom: 20px;">中联润通</div>
						<div style="">
							中联润通成立于2009年，是一家专注于云计算技术研究、产品开发以及业务运营服务的云计算服务运营商。中联润通以最优的产品、最佳的解决方案及个性化的专业服务得到了众多客户的认可。目前，中联润通已与三大运营商：北京联通、天津移动、广州电信合作，分别推出了易享云、移动云、高新产业云服务，并成长为运营商可信赖的重要合作伙伴。公司骨干从中国互联网发展的起步阶段就开始研究IT基础设施的建设和运营管理。经过不断的技术积累，成功打造了中国首个自主知识产权的弹性主机服务平台。自成立之初、中联润通始终在挑战与机遇的磨砺中前行，始终遵循以“市场为导向、客户为核心”的原则，以“创新、求实”为宗旨，以“诚信、合作”为理念，为客户提供标准化、专业化的解决方案与IT增值服务，致力于成为客户最信任的成长伙伴。
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