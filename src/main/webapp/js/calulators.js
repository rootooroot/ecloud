function initDialog() {
	$("#dialog_form").dialog({
		autoOpen : false,
		height : 430,
		width : 660,
		modal : true,
		draggable : true,
		resizable : false,
		close : function() {
		}
	});
	$("#dialog_form2").dialog({
		autoOpen : false,
		height : 170,
		width : 428,
		modal : true,
		draggable : false,
		resizable : false,
		close : function() {
		}
	});
}

function open_histogram_dialog() {
	showHistogram();
	var fag = $("#dialog_form").html();
	if (fag == "") {

	} else {

		/*$("#dialog_form").dialog({
			title : "三年成本对比"
		});*/
		$("#dialog_form").dialog("open");
	}
}

function validateForm() {
	
	var pvTextError = $(".pvTextError").html();
	var pageBigTextError = $(".pageBigTextError").html();
	var volumeTextError = $(".volumeTextError").html();

	var pv = $("#j_pv").val();
	var pagebig = $("#j_pagebig").val();
	var volume = $("#j_volume").val();

	if (/^[-]?\d+$/.test(pv) && pv > 0 && pv < 1001) {
		$("#i_pv").css({
			"color" : "#808080"
		});
		if (/^[-]?\d+$/.test(pagebig) && pagebig > 0 && pagebig < 10001) {
			$("#i_pageBigTextError").css({
				"color" : "#808080"
			});
			if (/^[-]?\d+$/.test(volume) && volume > 0 && volume < 10001) {
				$("#i_volumeTextError").css({
					"color" : "#808080"
				});
				submit();
			} else {
				$("#i_volumeTextError").css({
					"color" : "#FF0033"
				});
				$("#j_volume").focus();
			}
		} else {
			$("#i_pageBigTextError").css({
				"color" : "#FF0033"
			});
			$("#j_pagebig").focus();
		}
	} else {
		$("#i_pv").css({
			"color" : "#FF0033"
		});
		$("#j_pv").focus();
	}
}
function submit() {
	/*
	 * $("#j_pv").text(0); $("#j_pagebig").text(0); $("#j_volume").text(0);
	 */
	$("#Footer").attr("style","position:relative;width:100%;height:66px;bottom:0;background: url('"+contextPath+"/images/footer-bg.jpg') repeat-x scroll center top #EEEEEE;");
	$("#instanceType").text(0);
	$("#ecu").text(0);
	$("#volume").text(0);
	$("#network").text(0);
	$("#price").text(0);

	$(".server").text(0);
	$(".unitServer").text(0);
	$(".disk").text(0);
	$(".unitDisk").text(0);
	$(".diskArray").text(0);
	$(".unitDiskArray").text(0);
	$(".electricity").text(0);
	$(".monthlyRent").text(0);
	$(".upkeep").text(0);
	$(".costs").text(0);
	$(".IDCsum").text(0);
	$(".Ecloudsum").text(0);
	$(".IDC_d").text(0);
	$(".Ecloud_y").text(0);
	$(".IDC_w").text(0);
	$(".IDC_k").text(0);
	$(".Ecloud_k").text(0);
	$(".IDCTotal").text(0);
	$(".EcloudTotal").text(0);
	$(".d_diskArray").hide();
	$("#dialog_form").text("");

	var pv = $("#j_pv").val();
	var pagebig = $("#j_pagebig").val();
	var volume = $("#j_volume").val();
	var m_volume = Math.round(volume);
	var bandwidth = Math.round(pv / 8.64 * pagebig * 8 / 1024);
	/*
	 *  专享云判断条件： 条件1：pv的使用情况在130>pv>=150 范围内 条件2：带宽>=8M && pv<=130 ；
	 * 咨询售前工程师的条件：当用户pv > 150 ，并进行弹出提示： 您的资源需求过大，请直接联系工程师xxx@126.com，为您做更专业的评估！
	 * 共享云判断条件： pv<=130 && 带宽<8M
	 */
	if ((pv > 130 && pv < 150) || pv == 150) {
		// 专享云判断条件
		$("#j-cal-contener-result").show();
		$("#instanceType").text("专享云");
		ResourceUtilization();
	}
	if ((bandwidth > 8 || bandwidth == 8) && (pv < 130 || pv == 130)) {
		// 专享云判断条件
		$("#j-cal-contener-result").show();
		$("#instanceType").text("专享云");
		ResourceUtilization();
	}
	if (pv > 150) {
		$("#dialog_form2").dialog({
			title : "专业咨询区"
		});
		$("#dialog_form2").dialog("open");
		$("#j-cal-contener-result").hide();
		$("#Footer").attr("style","position:absolute;width:100%;height:66px;bottom:0;background: url('"+contextPath+"/images/footer-bg.jpg') repeat-x scroll center top #EEEEEE;");
	}
	if ((pv < 130 || pv == 130) && bandwidth < 8) {
		// 共享云
		$("#j-cal-contener-result").show();
		$("#instanceType").text("共享云");
		ResourceUtilization();
	}

};
function ResourceUtilization1() {
	alert("aaa");
}
/* 划入柱状图start */
function showHistogram() {
	var v_FirstIDCsum = parseInt($(".FirstIDCsum").html());
	var v_SecondIDCsum = parseInt($(".SecondIDCsum").html());
	var v_ThirdIDCsum = parseInt($(".ThirdIDCsum").html());
	var v_Ecloudsum = parseInt($(".Ecloudsum").html());
	var v_IDCTotal = parseInt($(".IDCTotal").html());
	var v_EcloudTotal = parseInt($(".EcloudTotal").html());
	var f_e = v_FirstIDCsum - v_Ecloudsum;
	var f_s = v_SecondIDCsum - v_Ecloudsum;
	var f_t = v_ThirdIDCsum - v_Ecloudsum;
	var i_e = v_IDCTotal - v_EcloudTotal;

	$('#dialog_form')
			.highcharts(
					{
						chart : {
							type : 'column'
						},
						title : {
							text : 'IDC模式与云服务三年成本对比图'
						},
						credits : {
							text : ' ',
							href : ' '
						},
						xAxis : {
							categories : [ "第一年  ", "第二年  ", "第三年  ", "三年合计  " ]
						},
						yAxis : {
							min : 0,
							title : {
								text : '费用 ( 万元 )'
							}
						},
						tooltip : {
							headerFormat : '<span style="font-size:10px">{point.key}</span><table>',
							pointFormat : '<tr><td style="color:{series.color};padding:10">{series.name}: </td>'
									+ '<td style="padding:0"><b>{point.y:.1f} 万元</b></td></tr>',
							footerFormat : '</table>',
						// 悬浮
						// shared: false,
						// useHTML: false
						},
						plotOptions : {
							column : {
								// 柱子宽度
								pointPadding : 0.3,
								borderWidth : 0
							}
						},
						series : [
								{
									name : 'IDC模式',
									data : [ v_FirstIDCsum / 10000,
											v_SecondIDCsum / 10000,
											v_ThirdIDCsum / 10000,
											v_IDCTotal / 10000 ]

								},
								{
									name : '云服务',
									data : [ v_Ecloudsum / 10000,
											v_Ecloudsum / 10000,
											v_Ecloudsum / 10000,
											v_EcloudTotal / 10000 ]

								},
								{
									name : '节省费用',
									data : [ f_e / 10000, f_s / 10000,
											f_t / 10000, i_e / 10000 ]

								} ]
					});

};
/* 划入柱状图end */

function ResourceUtilization() {
	var pv = $("#j_pv").val();
	var pagebig = $("#j_pagebig").val();
	var volume = $("#j_volume").val();
	var m_volume = Math.round(volume);
	var instanceType = $("#instanceType").html();
	var bandwidth = Math.round(pv / 8.64 * pagebig * 8 / 1024);
	/*
	 * pv（万） ECU ECU详细描述 物理服务器 <=2 0.5 1核1G 1 2<pv<=5 1 1核2G 1 5<pv<=10 1.5
	 * 1核4G 2核2G 1 10<pv<=20 2 2核4G 1 20<pv<=40 3 2核8G 4核4G 1 40<pv<=60 4
	 * 4核8G 1 60<pv<=80 6 4核16G 8核8G 1 80<pv<=100 8 8核16G 1 100<pv<=130 12
	 * 8核32G 2 130<pv<=150 16 16核32G 2
	 */
	if (pv < 2 || pv == 2) {
		$("#ecu").text(0.5);
		$(".server").text(1);
		$(".unitServer").text(1 * 15000);
	}
	if (pv > 2 && (pv < 5 || pv == 5)) {
		$("#ecu").text(1);
		$(".server").text(1);
		$(".unitServer").text(1 * 15000);
	}
	if (pv > 5 && (pv < 10 || pv == 10)) {
		$("#ecu").text(1.5);
		$(".server").text(1);
		$(".unitServer").text(1 * 15000);
	}
	if (pv > 10 && (pv < 20 || pv == 20)) {
		$("#ecu").text(2);
		$(".server").text(1);
		$(".unitServer").text(1 * 15000);
	}
	if (pv > 20 && (pv < 40 || pv == 40)) {
		$("#ecu").text(3);
		$(".server").text(1);
		$(".unitServer").text(1 * 15000);
	}
	if (pv > 40 && (pv < 60 || pv == 60)) {
		$("#ecu").text(4);
		$(".server").text(1);
		$(".unitServer").text(1 * 15000);
	}
	if (pv > 60 && (pv < 80 || pv == 80)) {
		$("#ecu").text(6);
		$(".server").text(1);
		$(".unitServer").text(1 * 15000);
	}
	if (pv > 80 && (pv < 100 || pv == 100)) {
		$("#ecu").text(8);
		$(".server").text(1);
		$(".unitServer").text(1 * 15000);
	}
	if (pv > 100 && (pv < 130 || pv == 130)) {
		$("#ecu").text(12);
		$(".server").text(2);
		$(".unitServer").text(2 * 15000);
	}
	if (pv > 130 && (pv < 150 || pv == 150)) {
		$("#ecu").text(16);
		$(".server").text(2);
		$(".unitServer").text(2 * 15000);
	}
	var v_ecu = $("#ecu").html();
	var n_v_ecu = new Number(v_ecu).toFixed(1);
	if ((bandwidth > 8 || bandwidth == 8) && (pv < 130 || pv == 130)
			&& n_v_ecu < 16) {
		$("#ecu").text(16);
	}
	$("#volume").text(m_volume);
	/* 云服务的月租+带宽的月租 */

	/*
	 * 盘阵费用 = 列表价 * 存储容量/ 3.5T（一个盘阵最多12块盘） 硬盘费用 = 单价 * 存储容量/ 300G
	 * 注：存储的G和T的计算以1000为进率
	 */
	var n_m_volume = Math.ceil(m_volume / 300);
	var unitDisk = 2000 * n_m_volume;
	var m_v_disk = Math.ceil(unitDisk / 2000);
	if (m_v_disk < 2 || m_v_disk == 2) {
		$(".disk").text(2);
	} else {
		$(".disk").text(m_v_disk);
	}
	var l_m_v_disk = $(".disk").html();
	var m_v_unitDisk = l_m_v_disk * 2000;
	$(".unitDisk").text(m_v_unitDisk);

	/*
	 * 服务器电费 = 单价 * 服务器数量 盘阵电费 = 列表价 * 存储容量/ 3.5T
	 */
	var v_server = $(".server").html();
	var p_v_server = parseInt(v_server);
	var v_unitServer = $(".unitServer").html();
	var p_v_unitServer = parseInt(v_unitServer);

	var g_electricity = 2600 * p_v_server;
	var n_m_volume2 = Math.ceil(m_volume / 3500);
	var z_electricity = Math.round(2600 * p_v_server + 17280 * n_m_volume2);
	/* 月租 */

	var v_ecu = $("#ecu").html();
	$(".monthlyRent").text(v_ecu * 400);

	var v_monthlyRent = $(".monthlyRent").html();
	var p_v_monthlyRent = parseInt(v_monthlyRent);

	/* 人工维护费用 5000x4x12=240000元/年 */
	$(".upkeep").text(240000);

	if ((pv < 130 || pv == 130) && bandwidth < 8) {
		$("#network").text("100M 共享");
		$(".m_netword").text("");
		$("#price").text(parseInt(v_ecu * 400) + 200);
		$(".costs").text(200);
		var v_costs = $(".costs").html();
		var p_v_costs = parseInt(v_costs);
		$(".electricity").text(g_electricity);

		$(".FirstIDCsum").text(
				p_v_unitServer + m_v_unitDisk + g_electricity + 240000
						+ p_v_costs * 12);
		$(".SecondIDCsum").text(g_electricity + 240000 + p_v_costs * 12);
		$(".ThirdIDCsum").text(g_electricity + 240000 + p_v_costs * 12);

		$(".IDC_s").text(p_v_unitServer + m_v_unitDisk);

	} else {
		$("#network").text(bandwidth);
		$(".m_netword").text(" M");
		$("#price").text(parseInt(v_ecu * 400) + bandwidth * 100);
		$(".d_diskArray").show();
		var n_m_volume1 = Math.ceil(m_volume / 3500);
		var unitDiskArray = 29000 * n_m_volume1;
		var m_v_diskArray = Math.ceil(unitDiskArray / 29000);
		$(".diskArray").text(m_v_diskArray);
		var m_v_unitDiskArray = Math.round(m_v_diskArray * 29000);
		$(".unitDiskArray").text(m_v_unitDiskArray);

		$(".costs").text(bandwidth * 100);
		$(".m_netword").show();
		var v_costs = $(".costs").html();
		var p_v_costs = parseInt(v_costs);
		$(".electricity").text(z_electricity);
		$(".FirstIDCsum").text(
				p_v_unitServer + m_v_unitDisk + m_v_unitDiskArray
						+ z_electricity + 240000 + p_v_costs * 12);
		$(".SecondIDCsum").text(z_electricity + 240000 + p_v_costs * 12);
		$(".ThirdIDCsum").text(z_electricity + 240000 + p_v_costs * 12);

		$(".IDC_s").text(p_v_unitServer + m_v_unitDisk + m_v_unitDiskArray);
	}

	$(".Ecloudsum").text(p_v_monthlyRent * 12 + p_v_costs * 12);

	/* 三年合计 */
	var electricity = $(".electricity").html();
	var m_electricity = Math.round(electricity);
	$(".IDC_d").text(m_electricity * 3);
	$(".Ecloud_y").text(p_v_monthlyRent * 12 * 3);
	$(".IDC_w").text(240000 * 3);
	$(".IDC_k").text(p_v_costs * 12 * 3);
	$(".Ecloud_k").text(p_v_costs * 12 * 3);
	var v_FirstIDCsum = $(".FirstIDCsum").html();
	var v_SecondIDCsum = $(".SecondIDCsum").html();
	var v_ThirdIDCsum = $(".ThirdIDCsum").html();
	var v_Ecloudsum = $(".Ecloudsum").html();
	$(".IDCTotal").text(
			parseInt(v_FirstIDCsum) + parseInt(v_SecondIDCsum)
					+ parseInt(v_ThirdIDCsum));
	$(".EcloudTotal").text(parseInt(v_Ecloudsum) * 3);

	$(".IDC_s").text("--");
	$(".IDC_d").text("--");
	$(".IDC_y").text("--");
	$(".IDC_w").text("--");
	$(".IDC_k").text("--");
	$(".Ecloud_s").text("--");
	$(".Ecloud_d").text("--");
	$(".Ecloud_y").text("--");
	$(".Ecloud_w").text("--");
	$(".Ecloud_k").text("--");
};