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
	<script type="text/javascript" src="<%=contextPath %>/js/host-price.js"></script>
	<script type="text/javascript" src="<%=contextPath %>/js/addition-subtraction.js"></script>
	<script type="text/javascript" src="<%=contextPath %>/js/scrolltopcontrol.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			initHostPrice();
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
	<div class="guanggao yzj"></div>
	<div class="gx-host">
		<div class="body" style="overflow:hidden;overflow: hidden;">
			<div class="faq_box">
				<div class="help_left" style="position: relative;">
					<!-- 导航 begin -->
					<div id="my_menu" class="pdmenu">
						<div>
							<span>计算即服务CaaS</span>
							<a href="<%=contextPath %>/product/caas/yunzhuji/" style="color:#2E83e8;">云主机</a>
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
								<div class="title">云主机</div>
								<div class="desc">基于云计算及虚拟技术，将硬件、存储、网络等资源虚拟化为资源池，分割成独立的虚拟服务器，为用户提供标准云主机租用服务。</div>
							</div>
							<div class="clear"></div>
						</div>
						<div id="show" class="showNav">
							<div id="hover-menu" class="hover-menu">
								<ul>
									<li class="selected"><a href="#cp-ms">产品描述</a></li>
									<li><a href="#cp-td">产品特点</a></li>
									<li><a href="#cp-db">产品对比</a></li>
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
												<li>提供基于百兆共享网络的云主机服务，客户可使用云主机业务的全部服务内容。</li>
												<li>每次云主机均分配一个外网地址，通过系统提供的防火墙控制访问来源，进而实现简单组网。</li>
												<li>云主机产品针对小型、无专用设备要求或短期需求的客户提供服务。</li>
											</ol>
										</div>
									</li>
								</ul>
							</div>
							<div id="cp-td" class="item-1" >
								<ul>
									<li>
										<div class="item-title">产品特点</div>
										<div class="item-detail">
											<div>云主机业务与其他主机租赁业务使用不同，用户仅需通过自服务页面在几分钟时间内完成所需的各种软件（操作系统）/硬件（CPU、内存、磁盘、网络）的申请、部署、配置和灵活调整。</div>
											<table class="cptd">
												<tr>
													<th><img src="<%=contextPath %>/images/host-1.jpg"/></th>
													<td>
														<div class="title">安全性</div>
														<div class="block">平台支持多种数据备份方案，用户可进行自定义快照，以及后台的自动备份功能，为用户提供了完整的业务备份。</div>
													</td>
												</tr>
												<tr>
													<th><img src="<%=contextPath %>/images/host-2.jpg"/></th>
													<td>
														<div class="title">灵活性</div>
														<div class="block">平台允许用户使用最小的1核/1G的计算资源，为中小型企业提供成长的空间，日后可根据企业的需求变更资源。</div>
													</td>
												</tr>
												<tr>
													<th><img src="<%=contextPath %>/images/host-3.jpg"/></th>
													<td>
														<div class="title">高效性</div>
														<div class="block">整个平台均采用X86的标准服务器，能够在一分钟内完成云主机的启动，以及一分钟内实现云主机配置升级。</div>
													</td>
												</tr>
												<tr>
													<th><img src="<%=contextPath %>/images/05.jpg"/></th>
													<td>
														<div class="title">弹性</div>
														<div class="block">平台提供CPU和内存配置的随时升级或者降低，同时支持在线调整云主机的IP地址。</div>
													</td>
												</tr>
											</table>
										</div>
									</li>
								</ul>
							</div>
							<div id="cp-db" class="item-2">
								<ul>
	                                <li>
										<div class="item-title">产品对比</div>
										<div class="item-detail">
											<table class="db">
												<tr>
													<th style="width:80px;">对比项目</th>
													<th style="width:130px;">虚拟空间/虚拟主机</th>
													<th style="width:145px;">Virtual Private Server（虚拟私有服务器）</th>
													<th style="width:130px;">云主机</th>
												</tr>
												<tr>
													<th>架构特点</th>
													<td>多个用户共用一个操作系统一套应用环境，并运行在单台物理服务器上</td>
													<td class="grey">多个用户各自独占一个或多个虚拟服务器（含操作系统和应用环境），并且这些虚拟服务器驻留在单台物理服务器上</td>
													<td>多个用户各自独占一个或多个虚拟服务器（含操作系统和应用环境），并且这些虚拟服务器驻留在多台物理服务器上</td>
												</tr>
												<tr>
													<th>优点</th>
													<td>用户只需要上传内容到虚拟空间就可以发布网站，操作简单</td>
													<td class="grey">用户对操作系统和应用控制力强</td>
													<td>硬件容错性强，因为引入一个虚拟资源的调度，因此整体可管理性很强，存储和网络虚拟化确保计算、存储和网络的灵活配置</td>
												</tr>
												<tr>
													<th>不足</th>
													<td>因为操作系统和应用是共享的，所以用户控制能力很弱，多个用户集中在一台物理服务器上，服务器一旦宕机危害很大</td>
													<td class="grey">物理服务器关机，则物理服务器上所有的虚拟服务器都无法使用，硬件容错性较差</td>
													<td>认知度不足</td>
												</tr>
												<tr>
													<th>业务类型</th>
													<td>共享应用软件的租用服务</td>
													<td class="grey">单纯的虚拟化系统租用</td>
													<td>IaaS架构的云主机租用服务</td>
												</tr>
												<!--tr>
													<th>计费方式</th>
													<td>包年计费</td>
													<td class="grey">包（月/年）计费</td>
													<td>包（月/年）或者按使用量计费</td>
												</tr-->
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
													<th style="width:100px;">ECU：</th>
													<td style="width:420px;"><div id="ecuslider" class="slider"></div></td>
													<td style="width:110px;"><input id="ecuCount" maxlength="2" onblur="setEcuSlider(this)" type="text"/>个</td>
												</tr>
												<tr>
													<th></th>
													<td style="padding:0px;">
														<em style="padding-left:5px;text-align:left;">0个</em>
														<em style="text-align:right;">12个</em>
	                                                    <div><img src="<%=contextPath%>/images/host-note.jpg"/>ECU：相当于一个IntelE5-2620或更高频率的相当CPU的核心配合2G内存的综合计算能力；<br/><img src="<%=contextPath%>/images/host-note.jpg"/>每个ECU赠送100G的扩展存储
	<!-- 每个ECU赠送100G的扩展存储；最小采购颗为0.5个ECU --></div>
													</td>
													<td></td>
												</tr>
												<tr>
													<th>扩展存储：</th>
													<td><div id="volslider" class="slider"></div></td>
													<td><input id="volCount"  maxlength="4" onblur="setVolSlider(this)" type="text"/>GB</td>
												</tr>
												<tr>
													<th></th>
													<td style="padding:0px;">
														<em style="padding-left:5px;text-align:left;">0GB</em>
														<em style="text-align:right;">1000GB</em>
													</td>
													<td></td>
												</tr>
												<tr>
													<th>快照：</th>
													<td><div id="snapslider" class="slider"></div></td>
													<td><input id="snapCount"  maxlength="4" onblur="setSnapSlider(this)" type="text"/>GB</td>
												</tr>
												<tr>
													<th></th>
													<td style="padding:0px;">
														<em style="padding-left:5px;text-align:left;">0GB</em>
														<em style="text-align:right;">1000GB</em>
													</td>
													<td></td>
												</tr>
												<tr>
													<th>IP：</th>
													<td><div id="ipslider" class="slider"></div></td>
													<td><input id="ipCount" maxlength="3" onblur="setIpSlider(this)" type="text"/>个</td>
												</tr>
												<tr>
													<th></th>
													<td style="padding:0px;">
														<em style="padding-left:5px;text-align:left;">0个</em>
														<em style="text-align:right;">100个</em>
													</td>
													<td></td>
												</tr>
												<tr>
													<th>带宽：</th>
													<td>100兆共享</td>
													<td></td>
												</tr>
												<tr>
													<th>操作系统：</th>
													<td>
														<select>
															<option>Windows2003</option>
															<option>Windows2008</option>
															<option>Centos5.8</option>
															<option>Centos6.3</option>
														</select>
													</td>
													<td></td>
												</tr>
												<%--<tr>
													<th>主机保护：</th><td colspan="2"> <input id="ha" type="checkbox"/><img src="<%=contextPath%>/images/host-note.jpg"/>系统将自动保持该主机的运行状态，即便该主机停止运作也会被自动重启</td>
	                                            </tr>
	                                            <tr>
													<th>弹性负载均衡：</th><td><input id="elb" type="checkbox"/><img src="<%=contextPath%>/images/host-note.jpg"/>用户多机服务时，提供自动的业务分发能力，网络吞吐能力为50Mbps</td><td></td>
	                                            </tr> --%>
	                                            <tr>
													<th valign="top" style="padding-top:20px;">主机保护个数：</th>
													<td>
														<div class="i_box" style="margin-left:2px;">
															<a href="javascript:;" id="sub" class="J_minus">-</a>
															<input type="text" id="J_input" value="0" class="J_input" style="margin-left:5px;height:26px;"/>
															<a href="javascript:;" id="add" class="J_add">+</a>
														</div>
														<div class="clear"></div>
														<img src="<%=contextPath%>/images/host-note.jpg"/>系统将自动保持该主机的运行状态，即便该主机停止运作也会被自动重启
													</td>
													<td></td>
	                                            </tr>
												<tr>
													<th><button id="submit" disabled="disabled" onclick="seeHostMoney()">查看费用</button></th><td colspan="2">总费用：<span style="font-size: 24px;color:red;" id="total">0</span> 元/月</td>
												</tr>
												<tr>
													<td colspan="3" style="padding:25px;">
														<div  class="product-additional">
															<div class="title">免费赠送</div>
															<div class="additional-detail">
																<table>
																	<tr>
																		<td>
																			<div>
																				<div class="title"><div class="img1"></div><div>系统盘</div></div>
																				<div>Linux 送10GB，Windows2003送20GB，Windows2008 送50GB</div>
																			</div>
																		</td>
																		<td><div style="height:77px;border-left:1px solid #DBDBDB;"></div></td>
																		<td>
																			<div>
																				<div class="title"><div class="img2"></div><div>虚拟防火墙</div></div>
																				<div>针对云主机客户提供虚拟网络防火墙。</div>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td style="padding:0px;"><div style="border-top:1px solid #DBDBDB;height:1px;"></div></td>
																		<td style="padding:0px;"></td>
																		<td style="padding:0px;"><div style="border-top:1px solid #DBDBDB;height:1px;"></div></td>
																	</tr>
																	<tr>
																		<td>
																			<div>
																				<div class="title"><div class="img3"></div><div>监控服务</div></div>
																				<div>帮助用户监控主机的运行指标，主要监控CPU、磁盘网络运行状态。</div>
																			</div>
																		</td>
																		<td><div style="height:77px;border-left:1px solid #DBDBDB;"></div></td>
																		<td>
																			<div>
																				<div class="title"><div class="img4"></div><div>7天备份</div></div>
																				<div>为用户提供7天的自动备份服务，可恢复7天内的备份数据，防止由于误操作或安全事件导致的数据丢失。</div>
																			</div>
																		</td>
																	</tr>
																</table>
															</div>
														</div>
													</td>
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
	<div class="calculator"><img src="<%=contextPath%>/images/calculator-icon.png"/><div style="margin-left:2px;"><a target="_blank" href="<%=contextPath%>/calculators.jsp">成本计算</a></div></div>
	<div id="Footer">
		<jsp:include page="../../../include/footer.jsp"></jsp:include>
	</div>
</div>
</body>
</html>