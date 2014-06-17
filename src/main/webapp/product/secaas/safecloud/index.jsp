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
	<div class="guanggao aqy"></div>
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
						<div class="collapsed">
							<span>桌面即服务DaaS</span>
							<a href="<%=contextPath %>/product/daas/yunzhuomian/">桌面云</a>
						</div>
						<div>
							<span>安全即服务SECaaS</span>
							<a href="<%=contextPath %>/product/secaas/safecloud/" style="color:#2E83e8;">安全云</a>
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
							<div class="aqyImg float-left"></div>
							<div class="text float-left">
								<div class="title">安全云</div>
								<div class="desc">安全云服务的目标是为用户计算即服务（CaaS）、桌面云(DaaS)以及存储即服务（STaaS）产品提供全面可靠的安全保护，确保云环境下服务器的应用程序和数据的安全。另外，用户亦可根据自身情况为其提供定制化的安全云服务。</div>
							</div>
							<div class="clear"></div>
						</div>
						<div id="show" class="showNav">
							<div id="hover-menu" class="hover-menu">
								<ul>
									<li class="selected"><a href="#cp-ms">产品描述</a></li>
									<li><a href="#cp-td">产品特点</a></li>
									<li><a href="#cp-tx">产品体系</a></li>
								</ul>
							</div>
						</div>
						<div class="items">
							<div class="item-0" id="cp-ms">
								<ul>
									<li>
										<div class="item-title">产品描述</div>
										<div class="item-detail">
											<div>安全云是按照云计算的模式向企业提供安全即服务（Security as a service），为企业用户的业务云提供全面的安全保障。对于采用基于虚拟化的云平台架构搭建IT环境的政府及企业用户来说，安全性及合规性是他们需要考虑的首要因素，一套完整的安全服务体系可以为虚拟环境提供持续的保护，并满足其合规性检查的需要。</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="item-1" id="cp-td">
								<ul>
									<li>
										<div class="item-title">产品特点</div>
										<div class="item-detail">
											<ul style="padding：0px; list-style-type: decimal;">
												<li>
													弹性：
													<p>用户可根据自身需求选择安全服务，提供灵活的网络配置和连接，部署方便、授权简便、操作便捷、各类安全云服务产品可通过安全服务管理平台集中管控。</p></li>
												<li>
													定制化：
													<p>提供多种类型的安全服务产品，包括边界安全、接入安全、应用安全、安全警报、安全威胁评估及安全审计等。</p>
													<p>提供全面的安全管理制度体系，包括总体目标、安全策略、管理制度、操作规程等。</p>
													<p>提供专职的系统管理员、网络管理员、安全管理员，关键事物岗多人共同管理。</p>
												</li>
												<li>
													高效性：
													<p>提供灵活地服务重启和实施迁移，可以在发生故障内几分钟内恢复，从而确保云主机的连接、安全和策略的执行不发生长时间的中断。</p>
												</li>
											</ul>
										</div>
									</li>
								</ul>
							</div>
							<div class="item-2" id="cp-tx">
								<ul>
									<li>
										<div class="item-title">产品体系</div>
										<div class="item-detail">
											<div>根据企业对安全级别的要求以及国家的安全认证体系，安全云为您提供如下套餐：</div>
											<table class="db">
												<tr>
													<th width="30%" colspan="2">套餐类型</th>
													<th width="30%" colspan="2">套餐内容</th>
													<th width="40%">自选套餐</th>
												</tr>
												<tr>
													<th width="10%">套餐0</th>
													<td class="efef" width="20%">提供基础类安全服务</td>
													<td width="15%">边界安全</td>
													<td width="25%">业务带宽：5Mbps</td>
													<td width="20%">取消套餐0中任意一项或多项服务</td>
												</tr>
												<tr>
													<th rowspan="3">套餐1</th>
													<td class="efef" rowspan="3">符合等保一级要求安全服务</td>
													<td>物理安全</td>
													<td rowspan="3">业务带宽：5Mbps<br>并行扫描主机个数：10台</td>
													<td rowspan="3">可定制套餐2中任意一项或多项服务、取消套餐1中任意一项或多项服务</td>
												</tr>
												<tr>
													<td class="tran">边界安全</td>
												</tr>
												<tr>
													<td class="tran">主机安全</td>
												</tr>
												<tr>
													<th rowspan="6">套餐2</th>
													<td class="efef" rowspan="6">符合等保二级要求安全服务</td>
													<td>物理安全</td>
													<td rowspan="6">业务带宽：5Mbps<br>并行扫描主机个数：10台<br>日志存储容量：500G</td>
													<td rowspan="6">可定制套餐3中任意一项或多项服务、取消套餐2中任意一项或多项服务</td>
												</tr>
												<tr>
													<td class="tran">边界安全</td>
												</tr>
												<tr>
													<td class="tran">入侵检测</td>
												</tr>
												<tr>
													<td class="tran">主机安全</td>
												</tr>
												<tr>
													<td class="tran">数据安全</td>
												</tr>
												<tr>
													<td class="tran">安全审计</td>
												</tr>
												<tr>
													<th rowspan="9">套餐3</th>
													<td class="efef" rowspan="9">符合等保三级要求安全服务</td>
													<td>物理安全</td>
													<td rowspan="9">业务带宽：5Mbps<br>并行扫描主机个数：10台<br>用户注册数：100个<br>日志存储容量：500G</td>
													<td rowspan="9">可取消套餐3中任意一项或多项服务</td>
												</tr>
												<tr>
													<td class="tran">安全管理</td>
												</tr>
												<tr>
													<td class="tran">边界安全</td>
												</tr>
												<tr>
													<td class="tran">入侵检测</td>
												</tr>
												<tr>
													<td class="tran">应用交付</td>
												</tr>
												<tr>
													<td class="tran">安全审计</td>
												</tr>
												<tr>
													<td class="tran">接入安全</td>
												</tr>
												<tr>
													<td class="tran">主机安全</td>
												</tr>
												<tr>
													<td class="tran">数据安全</td>
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
		<jsp:include page="../../../include/footerbanner.jsp"></jsp:include>
	</div>
	<div id="Footer">
		<jsp:include page="../../../include/footer.jsp"></jsp:include>
	</div>
</div>
</body>
</html>