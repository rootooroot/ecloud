<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=9"/>
<title>中联润通易云服务平台 - 成本计算器</title>
<link style="text/css" rel="stylesheet" href="<%=contextPath %>/css/Layout.css"></link>
<link style="text/css" rel="stylesheet" href="<%=contextPath %>/css/index.css"></link>
<link style="text/css" rel="stylesheet" href="<%=contextPath %>/css/jquery-ui-1.8.2.custom.css"></link>
<link rel="stylesheet" type="text/css" href="<%=contextPath %>/css/calculators.css" />

<script src="<%=contextPath %>/js/jquery-1.8.2.js"></script>
<%@include  file="include/common.jsp" %>
<script type="text/javascript" src="<%=contextPath %>/js/menu.js"></script>
<script type="text/javascript" src="<%=contextPath %>/js/navMenu.js"></script>
<script src="<%=contextPath %>/js/calulators.js"></script>
<script src="<%=contextPath %>/js/highcharts.js"></script>
<script src="<%=contextPath %>/js/ui/jquery.ui.core.js"></script>
<script src="<%=contextPath %>/js/ui/jquery.ui.widget.js"></script>
<script src="<%=contextPath %>/js/ui/jquery.ui.dialog.js"></script>
<script src="<%=contextPath %>/js/ui/jquery.ui.draggable.js"></script>
<script src="<%=contextPath %>/js/ui/jquery.ui.mouse.js"></script>
<script src="<%=contextPath %>/js/ui/jquery.ui.position.js"></script>
<script src="<%=contextPath %>/js/ui/jquery.ui.effect.js"></script>
<script src="<%=contextPath %>/js/ui/jquery.ui.resizable.js"></script>
<script type="text/javascript" src="<%=contextPath %>/js/scrolltopcontrol.js"></script>

<script type="text/javascript">
	jQuery(document).ready(function() {
		initDialog();
		$("#Footer").attr("style","position:absolute;width:100%;height:66px;bottom:0;background: url('<%=contextPath%>/images/footer-bg.jpg') repeat-x scroll center top #EEEEEE;");
	});
</script>
</head>
<body style="overflow-y:scroll; ">
<div id="Container">
	<div id="Header">
		<jsp:include page="include/header.jsp"></jsp:include>
	</div>
	<div class="cal-contener" style="display:;">
		<div class="cal-border-top"></div>
		<div class="cal-border-middle">
			<div class="cal-contener-title">
				<span class="black">成本计算器</span><span class="gray">算算节省多少成本</span>
			</div>
			<div class="cal-from">
				<table>
					<tr>
						<th><label>*</label>PV：</th>
						<td><input class="text-input" type="text" id="j_pv"/>万</td>
						<td><span class="pvTextError" style="" id="i_pv">请输入1-1000范围内的任意整数</span></td>
					</tr>
					<tr>
						<th><label>*</label>页面平均大小：</th>
						<td><input class="text-input" type="text" id="j_pagebig" />KB</td>
						<td><span class="pageBigTextError" style=""
							id="i_pageBigTextError">请输入1-10000范围内的任意整数</span></td>
					</tr>
					<tr>
						<th><label>*</label>存储容量：</th>
						<td><input class="text-input" type="text" id="j_volume"/>GB</td>
						<td><span class="volumeTextError" style=""
							id="i_volumeTextError">请输入1-10000范围内的任意整数</span></td>
					</tr>
					<tr>
						<td colspan="3" class="submitTR"><input id="submit"
							class="submit-botton" type="button" onclick="validateForm()" /></td>
					</tr>
				</table>
			</div>
			<div class="cal-img"></div>
		</div>
		<div class="cal-border-bottom"></div>
	</div>
	<div id="j-cal-contener-result" class="cal-contener-result" style="display:none ;">
		<div class="cal-border-top"></div>
		<div class="cal-border-middle result">
			<div class="cal-result1">
					<div class="fl rImg"><img src="images/jisuanresult.jpg"></div>
					<div class="fl ml">
						<div class="sl">建议您选购--<span id="instanceType" class="c_instanceType"></span><span class="advice">（建议方案仅供参考）</span></div>
						<div class="box">
							<div class="ecu-volume-newword" style="">
								<div class="fl pdr">ECU：<span id="ecu">0</span>  个</div>
								<div class="fl pdr">存储：<span id="volume">0</span>  GB</div>
								<div class="fl pdr">带宽：<span id="network">0</span><span class="m_netword" style="display: ">  MB</span></div>
							</div>
							<div class="price">
								费用：<span id="price">0</span> 元/月
							</div>
						</div>
					</div>
				</div>
			<div class="cal-three-result">
				<div class="back">
						<div class="fl">三年成本对比</div>
						<div><img class="fr_search" src="images/copare001.jpg" onclick="open_histogram_dialog()"></div> 
					</div>
					
				<div class="result-form">
					<table cellspacing="0">
						<tr>
							  <td colspan="2" class="table_th3"></td>
							  <td class="table_td11">设备采购（元）</td>
							  <td class="table_td11">电费（元/年）</td>
							  <td class="table_td11">月租（元/月）</td>
							  <td class="table_td11">维护费（元/年）</td>
							  <td class="table_td11">带宽（元/月）</td>
							  <td class="table_td11">合计（元/年）</td>
							</tr>
							<tr class="table_tr1">
							  <td rowspan="2" class="table_th3">第一年</td>
							  <td class="table_td0">IDC模式</td>
							  <td class="table_td0">
							    <div class="first">
							     <div class="d_server">
							                  服务器 <span class="server" style="color: red;">0</span> 台 :<span class="unitServer"> 0 </span>
							     </div>
							     <div class="d_disk">
							                 硬盘 <span class="disk" style="color: red;">0</span> 块 :<span class="unitDisk"> 0 </span>
							     </div>         
							     <div class="d_diskArray" style="display: none;">
							                 盘阵 <span class="diskArray" style="color: red;">0</span> 个 :<span class="unitDiskArray"> 0 </span>
							     </div>
							    </div>
							  </td>
							  <td class="table_td0"><span class="electricity">0</span></td>
							  <td class="table_td0">0</td>
							  <td class="table_td0"><span class="n_upkeep" style="color: red;">4  </span>人：<span class="upkeep">0</span></td>
							  <td class="table_td0"><span class="costs">0</span></td>
							  <td class="table_td0"><span class="FirstIDCsum">0</span></td>
							</tr>
							<tr class="table_tr1">
							  <td class="table_td1">云服务</td>
							  <td class="table_td1">0</td>
							  <td class="table_td1">0</td>
							  <td class="table_td1"><span class="monthlyRent">0</span></td>
							  <td class="table_td1">0</td>
							  <td class="table_td1"><span class="costs">0</span></td>
							  <td class="table_td1"><span class="Ecloudsum">0</span></td>
							</tr>
							<tr class="table_tr3">
							  <td rowspan="2" class="table_th3">第二年</td>
							  <td class="table_td0">IDC模式</td>
							  <td class="table_td0">
							     <span class="second">0</span>
							  </td>
							  <td class="table_td0"><span class="electricity">0</span></td>
							  <td class="table_td0">0</td>
							  <td class="table_td0"><span class="n_upkeep" style="color: red;">4  </span>人：<span class="upkeep">0</span></td>
							  <td class="table_td0"><span class="costs">0</span></td>
							  <td class="table_td0"><span class="SecondIDCsum">0</span></td>
							</tr>
							<tr class="table_tr3">
							  <td class="table_td1">云服务</td>
							  <td class="table_td1">0</td>
							  <td class="table_td1">0</td>
							  <td class="table_td1"><span class="monthlyRent">0</span></td>
							  <td class="table_td1">0</td>
							  <td class="table_td1"><span class="costs">0</span></td>
							  <td class="table_td1"><span class="Ecloudsum">0</span></td>
							</tr>
							<tr class="table_tr4">
							  <td rowspan="2" class="table_th3">第三年</td>
							  <td class="table_td0">IDC模式</td>
							  <td class="table_td0">
							     <span class="third">0</span>
							  </td>
							  <td class="table_td0"><span class="electricity">0</span></td>
							  <td class="table_td0">0</td>
							  <td class="table_td0"><span class="n_upkeep" style="color: red;">4  </span>人：<span class="upkeep">0</span></td>
							  <td class="table_td0"><span class="costs">0</span></td>
							  <td class="table_td0"><span class="ThirdIDCsum">0</span></td>
							</tr>
							<tr class="table_tr4">
							  <td class="table_td1">云服务</td>
							  <td class="table_td1">0</td>
							  <td class="table_td1">0</td>
							  <td class="table_td1"><span class="monthlyRent">0</span></td>
							  <td class="table_td1">0</td>
							  <td class="table_td1"><span class="costs">0</span></td>
							  <td class="table_td1"><span class="Ecloudsum">0</span></td>
							</tr>
							<tr class="table_tr5">
							  <td rowspan="2" class="table_th3">三年合计</td>
							  <td class="table_td0">IDC模式</td>
							  <td class="table_td0"><span class="IDC_s">0</span></td>
							  <td class="table_td0"><span class="IDC_d">0</span></td>
							  <td class="table_td0"><span class="IDC_y">0</span></td>
							  <td class="table_td0"><span class="IDC_w">0</span></td>
							  <td class="table_td0"><span class="IDC_k">0</span></td>
							  <td class="table_td0"><span class="IDCTotal">0</span></td>
							</tr>
							<tr class="table_tr5">
							  <td class="table_td1">云服务</td>
							  <td class="table_td1"><span class="Ecloud_s">0</span></td>
							  <td class="table_td1"><span class="Ecloud_d">0</span></td>
							  <td class="table_td1"><span class="Ecloud_y">0</span></td>
							  <td class="table_td1"><span class="Ecloud_w">0</span></td>
							  <td class="table_td1"><span class="Ecloud_k">0</span></td>
							  <td class="table_td1"><span class="EcloudTotal">0</span></td>
							</tr>
						</table>
				</div>
			</div>

			<div>
				<div class="cal-basis-notice">
				  <div class="basis_t_b">
				   <div><img class="cal_img" src="images/c_5.png"></div>
				   <div class="cal_black1">
				        <span>基础费用说明</span>
				   </div>
				  </div>
				<div class="basis-from">
					<table >
						<tr>
						  <td class="h_basis1">HP DL180：</td>
						  <td class="h_basis2">15000元</td>
						</tr>
						<tr>
						  <td class="h_basis1">HP MAS2300盘阵：</td>
						  <td class="h_basis2">29000元</td>
						</tr>
						<tr>
						  <td class="h_basis1">硬盘SAS300G-15K：</td>
						  <td class="h_basis2">2000元</td>
						</tr>
						<tr>
						  <td class="h_basis1">服务器电费：</td>
						  <td class="h_basis2">2600元/年</td>
						</tr>
						<tr>
						  <td class="h_basis1">盘阵电费：</td>
						  <td class="h_basis2">17280元/年</td>
						</tr>
						<tr>
						  <td class="h_basis1">人工维护费用：</td>
						  <td class="h_basis2">5000/人 ,7*24</td>
						</tr>
				   </table>
				</div>
				</div>
			   </div>

			<div class="cal-copare-result">
				<div class="copare-back">
					<div class="al">安全对比</div>
				</div>
				<div class="copare-table">
					<table cellspacing="0">
						<tr>
							 <td class="table_td3" colspan="2">对比项</td>
							 <td class="table_td4">IDC模式</td>
							 <td class="table_td4">云服务</td>
						</tr>
						<tr>
							<td class="table_th2"><img class="copare_jpg" src="images/c_1.png"></td>
							<td class="table_th1"><span class="copare_text">可用性</span></td>
							<td class="table_td2"><span class="IDCModel">服务器宕机，应用系统受损失</span></td>
							<td class="table_td2">可用性<span class="EcloudModel" style="color: red;">99.9%</span></td>
						</tr>
						<tr>
							<td class="table_th2"><img class="copare_jpg" src="images/c_2.png"/></td>
							<td class="table_th1"><span class="copare_text">数据冗余方式</span></td>
							<td class="table_td2"><span class="IDCModel">无冗余，或者自己做RAID</span></td>
							<td class="table_td2">按<span class="EcloudModel" style="color: red;">1:3</span>冗余存储
							</td>
						</tr>
						<tr>
							<td class="table_th2"><img class="copare_jpg" src="images/c_3.png"/></td>
							<td class="table_th1"><span class="copare_text">备份方案</span></td>
							<td class="table_td2"><span class="IDCModel">系统无备份</span></td>
							<td class="table_td2"><span class="EcloudModel">快照、克隆、自动备份</span></td>
						</tr>
						<tr>
							<td class="table_th2"><img class="copare_jpg" src="images/c_4.png"></td>
							<td class="table_th1"><span class="copare_text">故障恢复</span></td>
							<td class="table_td2"><span class="IDCModel">宕机后人工处理，时间不定</span></td>
							<td class="table_td2"><span class="EcloudModel">HA主机保护，快速自动重启服务器</span></td>
						</tr>
					</table>
				</div>
			</div>

		</div>
		<div class="cal-border-bottom"></div>
	</div>
	<div id="dialog_form" class="css_my_histogram" style="display:none; height: 380px;" title="三年成本对比"></div>
	<div id="dialog_form2"  title="专业咨询区" style="display:none;">
	  <table>
	    <tr>
	      <td class="dialog_img"><img class="dialog_jpg" src="images/jisuanresult11.jpg"/> </td>
	      <td class="dialog_text">
	                                您需要的资源较多,建议您联系工程师为您规划最优的资源方案!<br/>
				咨询邮箱 ：<span class="dialog_email">18102803376@189.cn</span>
	      </td>
	    </tr>
	  </table>
	</div> 
	<!-- 页脚开始 -->
	<div id="Footer">
		<jsp:include page="include/footer.jsp"></jsp:include>
	</div>
	<!-- 页脚结束 -->
  </div>
    
</body>
</html>
