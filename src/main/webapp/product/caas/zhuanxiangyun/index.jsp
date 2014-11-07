<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<html>
<head>
	<title>中联润通易云服务平台</title>
	<meta http-equiv="X-UA-Compatible" content="IE=9"/>
	<meta content="text/html;charset=utf8"/>
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
	<script type="text/javascript" src="<%=contextPath %>/js/addition-subtraction.js"></script>
	<script type="text/javascript" src="<%=contextPath %>/js/exclusive-price.js"></script>	
	<script type="text/javascript" src="<%=contextPath %>/js/scrolltopcontrol.js"></script>	
	<script type="text/javascript" src="<%=contextPath %>/js/ui/jquery.ui.position.js"></script>	
	<script type="text/javascript">
		jQuery(document).ready(function() {
	        initExclusivePrice();
	        $("#add").click(function(){
	        	seeExclusiveMoney();
	        });
	        $("#sub").click(function(){
	        	seeExclusiveMoney();
	        });
	        $("#J_input").blur(function(){
	        	seeExclusiveMoney();
			});
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
	<div class="guanggao zxy"></div>
	<div class="gx-host">
		<div class="body" style="overflow:hidden;overflow: hidden;">
			<div class="faq_box">
				<div class="help_left" style="position: relative;">
					<!-- 导航 begin -->
					<div id="my_menu" class="pdmenu">
						<div>
							<span>计算即服务CaaS</span>
							<a href="<%=contextPath %>/product/caas/yunzhuji/">云主机</a>
							<a href="<%=contextPath %>/product/caas/zhuanxiangyun/" style="color:#2E83e8;">专享云</a>
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
								<div class="title">专享云</div>
								<div class="desc">基于云计算及虚拟技术，通过调度虚拟资源池资源，为用户提供实时动态调整云主机性能、数量及带宽的专享云服务。</div>
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
									<li><a href="#cp-fwxy">服务协议</a></li>
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
												<li>提供基于独享带宽的专享云服务，用户使用独享带宽，可自行定义主机内外网IP地址。</li>
												<li>可提供专线接入服务，以便用户将其内网与云平台提供的专享云连成一个整体系统。</li>
												<li>该服务提供可管理的计算及存储资源池。</li>
												<li>专享云产品针对中大型、对网络有较高带宽要求的用户提供服务。</li>
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
											<div>专享云业务与其他主机租赁业务使用不同，用户仅需通过自服务页面在几分钟时间内完成所需的各种软件（操作系统）/硬件（CPU、内存、磁盘、网络）的申请、部署、配置和灵活调整。</div>
											<table class="cptd">
												<tr>
													<th><img src="<%=contextPath %>/images/host-1.jpg"/></th>
													<td>
														<div class="title">定制化</div>
														<div class="block">平台通过提供两类服务组件来为客户提供可定制的灵活服务，基本服务组件和扩展的增值服务组件。</div>
													</td>
												</tr>
												<tr>
													<th><img src="<%=contextPath %>/images/host-2.jpg"/></th>
													<td>
														<div class="title">安全性</div>
														<div class="block">平台能够满足用户的各项安全需求，包括防火墙、IDS、IPS、WAF、日志审计、数据库审计、安全管理中心、IPSec VPN、SSL VPN等，均符合国家三级等级保护的规定。</div>
													</td>
												</tr>
												<tr>
													<th><img src="<%=contextPath %>/images/04.jpg"/></th>
													<td>
														<div class="title">高效性</div>
														<div class="block">整个平台均采用X86的标准服务器，一分钟内即可完成服务器的启动，以及一分钟内实现云主机配置升级。</div>
													</td>
												</tr>
												<tr>
													<th><img src="<%=contextPath %>/images/05.jpg"/></th>
													<td>
														<div class="title">弹性</div>
														<div class="block">平台提供CPU和内存配置的随时升级或者降低。</div>
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
													<th style="width:180px;">云主机</th>
													<th style="width:180px;">专享云</th>
												</tr>
												<tr>
													<th>用户类型</th>
													<td>面向中小型企业或者初创公司的云服务</td>
													<td>面向具有一定规模的企业或者定制化要求较多的企业的云服务</td>
												</tr>
												<tr>
													<th>购买规模</th>
													<td>资源采购灵活，支持以最小颗粒1个<b style="font-size:14px;cursor: help;" title="等效计算单元：Equivalent Compute Unit）相当于一个IntelE5-2620或更高频率的相当CPU的核心配合2G内存的综合计算能力">ECU</b>为单位进行资源购买</td>
													<td>采购的资源规模最低为16个<b style="font-size:14px;cursor: help;" title="等效计算单元：Equivalent Compute Unit）相当于一个IntelE5-2620或更高频率的相当CPU的核心配合2G内存的综合计算能力">ECU</b></td>
												</tr>
												<tr>
													<th>定制化</th>
													<td>通过自服务平台完成云主机的分配和使用</td>
													<td>支持用户的个性化需求，包括安全设备、物理设备、USB设备的接入等</td>
												</tr>
												<tr>
													<th>平台架构</th>
													<td colspan="2">两款产品底层采用相同的技术架构，根据不同用户需求提供最合理的产品服务 </td>
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
													<th style="width:100px;">ECU：</th>
													<td style="width:420px;">
	                                                    <select id="ecus" onchange="seeExclusiveMoney();">
	                                                        <option value="0">-- 请选择 --</option>
	                                                        <option value="16">16个ECU</option>
	                                                        <option value="32">32个ECU</option>
	                                                        <option value="48">48个ECU</option>
	                                                        <option value="64">64个ECU</option>
	                                                    </select>
	                                                </td>
													<td style="width:110px;">&nbsp;</td>
												</tr>
	
												<tr>
													<th></th>
													<td colspan="2">
	                                                    <div><img src="<%=contextPath%>/images/host-note.jpg"/>ECU：相当于一个IntelE5-2620或更高频率的相当CPU的核心配合2G内存的综合计算能力；<br/><img src="<%=contextPath%>/images/host-note.jpg"/>每16个ECU赠送1.6T存储</div>
	                                                </td>
												</tr>
												<tr>
													<th>扩展存储：</th>
													<td><div id="vol" class="slider"></div></td>
													<td><input id="vols" autofocus="autofocus" maxlength="4" onblur="setVolSlider(this);seeExclusiveMoney();" type="text"/>GB</td>
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
													<td><div id="snap" class="slider"></div></td>
													<td><input id="snaps" maxlength="4" onblur="setSnapSlider(this);seeExclusiveMoney();" type="text"/>GB</td>
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
													<th>带宽：</th>
													<td>
	                                                    <select id="blanks" onchange="seeExclusiveMoney()">
	                                                        <option value="0">-- 请选择 --</option>
	                                                        <option value="5">5 Mbps</option>
	                                                        <option value="10">10 Mbps</option>
	                                                        <option value="20">20 Mbps</option>
	                                                        <option value="50">50 Mbps</option>
	                                                    </select>
	                                                </td>
													<td></td>
												</tr>
	                                            <tr>
													<th>IP：</th>
													<td><div id="ip" class="slider"></div></td>
													<td><input id="ips"  maxlength="4" onblur="setIpSlider(this);seeExclusiveMoney();"  type="text"/>个</td>
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
												<%-- <tr>
													<th>弹性负载均衡：</th><td><input id="elbs" type="checkbox"/><img src="<%=contextPath%>/images/host-note.jpg"/>用户多机服务时，提供自动的业务分发能力，网络吞吐能力为50Mbps</td><td></td>
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
													<th><!-- <button id="submit" disabled="disabled" onclick="seeExclusiveMoney()">查看费用</button> -->总费用：</th><td colspan="2"><span style="font-size: 24px;color:red;" id="exclusiveTotal">0</span> 元/月</td>
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
																				<div class="title"><div class="img4"></div><div>7天备份</div></div>
																				<div>为用户提供7天的自动备份服务，可恢复7天内的备份数据，防止由于误操作或安全事件导致的数据丢失。</div>
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
																			<div style="display:none;">
																				<div class="title"><div class="img2"></div><div>主机保护</div></div>
																				<div>选用该服务，系统将自动保持该主机的运行状态，即便该主机停止运作也会被自动重启</div>
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
							<div id="cp-fwxy" class="item-4">
								<ul>
									<li>
										<div class="item-title">服务协议</div>
										<div class="item-detail">
											<ol>
												<!-- 
												<li><a href="#" onclick="upload1();">云主机服务协议模板-中联润通</a></li>
												<li><a href="#" onclick="upload2()">中联润通云业务SLA承诺</a></li> 
												-->
												<li><a href="<%=contextPath%>/docs?filename=云主机服务协议模板-中联润通.docx">云主机服务协议模板-中联润通</a></li>
												<li><a href="<%=contextPath%>/docs?filename=中联润通云业务SLA承诺.docx">中联润通云业务SLA承诺</a></li>
											</ol>
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
	<div class="calculator"><img src="<%=contextPath%>/images/calculator-icon.png"/><div style="margin-left:2px;"><a target="_blank" href="<%=contextPath%>/calculators.jsp">成本计算</a></div></div>	<div id="Footer">
		<jsp:include page="../../../include/footer.jsp"></jsp:include>
	</div>
</div>
</body>
</html>