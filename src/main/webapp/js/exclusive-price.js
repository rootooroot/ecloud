

/*专享云*/
var ecu = 0;
var vol = 0;
var snap = 0;
var blank = 0;
var ip = 0;
var elbFlag = false;
var elbFlagString = "没有";
var J_input = 0;
var sum = 0;
function getExclusiveValue(){
	ecu = $("#ecus").val();
	vol = $("#vols").val();
	snap = $("#snaps").val();
	
	blank = $("#blanks").val();
	ip = $("#ips").val();
	elbFlag = $("#elbs").attr("checked") =='checked'?true:false;
	J_input = $("#J_input").val();
}
function seeExclusiveMoney(){
	getExclusiveValue();
	sum = 0;
	sum = sum + ecu/16*6400 + vol/10*15 + snap/10*15 + blank/5*500 + ip*200;
	if(elbFlag){
		sum = sum + 800;
		elbFlagString = "有";
	}
	if(J_input >0){
		sum = sum + J_input*10;
	}
	$("#exclusiveTotal").html(sum+"");/*"ECU:"+ ecuSilder + "个 ，存储："+volSilder +"GB，ip:"+ipSilder+"个，"+(ha=="true")?"选择主机保护":"未选择主机保护 ，"+(elb=="true")?"选择负载均衡":"未选择负载均衡 ，"+"主机"+J_input+"台  总费用："+*/
	$("#exclusiveTotal").attr("title","ECU："+ecu+"个；扩展存储："+vol+"GB；快照："+snap+"GB；带宽："+blank+"Mbps；IP："+ip+"个；负载均衡："+elbFlagString+"；主机保护："+J_input+"个。");//"ECU:"+ ecuSilder + "个 ，存储："+volSilder +"GB，ip:"+ipSilder+"个，"+(ha=="true")?"09 90 E9 62 3B 4E 3A 67 DD 4F A4 62":"未选择主机保护 ，"+(elb=="true")?"选择负载均衡":"未选择负载均衡 ，"+"主机"+J_input+"台。"+*/
}
function initExclusivePrice(){
	// 初始化slider
	$('#vol').slider({
		disabled:false, 
		animate:true, 
		max:1000,
		min:0,
        step:10,
        value:0,
        range: "min",
		slide:function(event,ui){ 
		     $("#vols").val(ui.value);
		}
	}); 
	$('#snap').slider({
		disabled:false, 
		animate:true, 
		max:1000,
		min:0,
		step:10,
		value:0,
		range: "min",
		slide:function(event,ui){ 
			$("#snaps").val(ui.value);
		}
	}); 
	$('#ip').slider({
		disabled:false, 
		animate:true, 
		max:100,
		min:0,
		range: "min",
        step:1,
        value:0,
		slide:function(event,ui){ 
		     $("#ips").val(ui.value);
		}
	}); 
	// 为slider后的文本框赋值
    $("#vols").val($("#vol").slider("value"));
    $("#snaps").val($("#vol").slider("value"));
    $("#ips").val($("#ip").slider("value"));
	
    // 重新调整slider时计算结果清零
    $("#vol").on("slidechange",function( event, ui ) {
//		$("#exclusiveTotal").text("0");
	});
	$("#ip").on("slidechange",function( event, ui ) {
//		$("#exclusiveTotal").text("0");
	});
	
	$("#ecus").change(function(){
		ecu = $(this).val();
		if(ecu != 0 && blank != 0){
			$("#submit").attr("disabled",false);
		}else{
			$("#submit").attr("disabled",true);
		}
	});
	$("#blanks").change(function(){
		blank = $(this).val();
		if(ecu != 0 && blank != 0){
			$("#submit").attr("disabled",false);
		}else{
			$("#submit").attr("disabled",true);
		}
	});
	
    $("#vols").focus(function(){
		$(this).val("");
//		$("#vol").slider("option","value", '0');
	});
    $("#snaps").focus(function(){
    	$(this).val("");
//		$("#vol").slider("option","value", '0');
    });
    $("#ips").focus(function(){
		$(this).val("");
//		$("#ip").slider("option","value", '0');
	});
    // 产品导航跳转
	$("#show .group .item2 a").click(function(){
		$(this).parent().addClass("selected");
		$(this).parent().attr('style','margin-left:-4px;');
		$(this).parent().children("div").attr('style','visibility:;');
		$(this).parent().siblings().removeClass("selected");
		$(this).parent().siblings().attr('style','margin-left:0px;');
		$(this).parent().siblings().children("div").attr('style','visibility:hidden;');
		if($(this).text() == '产品描述'){
			$(this).parent().attr("style","-moz-border-radius:10px 0px 0px 10px;-webkit-border-radius:10px 0px 0px 10px;border-radius:10px 0px 0px 10px;")
			$("#cpms").show();
			$("#cptd").hide();
			$("#cpdb").hide();
			$("#cpjg").hide();
		}else if($(this).text() == '产品特点'){
			$("#cpms").hide();
			$("#cptd").show();
			$("#cpdb").hide();
			$("#cpjg").hide();
		}else if($(this).text() == '产品对比'){
			$("#cpms").hide();
			$("#cptd").hide();
			$("#cpdb").show();
			$("#cpjg").hide();
		}else if($(this).text() == '产品价格'){
			$("#cpms").hide();
			$("#cptd").hide();
			$("#cpdb").hide();
			$("#cpjg").show();
			$(this).parent().attr("style","margin-left:-4px;width:113px;-moz-border-radius:0px 10px 10px 0px;-webkit-border-radius:0px 10px 10px 0px;border-radius:0px 10px 10px 0px;")
		}
	});
}

var reg = new RegExp("^[1-9]*[1-9][0-9]*$");
function setVolSlider(obj) {
	var min = $("#vol").slider("option","min");
	var max = $("#vol").slider("option","max");
	var e = obj.value;
	if(obj.value == '')
		obj.value = '0';
	if(!reg.test(e)){
		$("#vol").slider("option","value", '0');
		obj.value = '0';
	}else{
		if(e<min){
			$("#vol").slider("option","value", '0');
			obj.value = '0';
		}else if(e>max){
			$("#vol").slider("option","value", max);
			obj.value = max;
		}else{
			$("#vol").slider("option","value",e);
			obj.value = e;
		}
	}
}
function setSnapSlider(obj) {
	var min = $("#snap").slider("option","min");
	var max = $("#snap").slider("option","max");
	var e = obj.value;
	if(obj.value == '')
		obj.value = '0';
	if(!reg.test(e)){
		$("#snap").slider("option","value", '0');
		obj.value = '0';
	}else{
		if(e<min){
			$("#snap").slider("option","value", '0');
			obj.value = '0';
		}else if(e>max){
			$("#snap").slider("option","value", max);
			obj.value = max;
		}else{
			$("#snap").slider("option","value",e);
			obj.value = e;
		}
	}
}

function setIpSlider(obj) {
	var min = $("#ip").slider("option","min");
	var max = $("#ip").slider("option","max");
	var e = obj.value;
	if(obj.value == '')
		obj.value = '0';
	if(!reg.test(e)){
		$("#ip").slider("option","value", '0');
		obj.value = '0';
	}else{
		if(e<min){
			$("#ip").slider("option","value", '0');
			obj.value = '0';
		}else if(e>max){
			$("#ip").slider("option","value", max);
			obj.value = max;
		}else{
			$("#ip").slider("option","value",e);
			obj.value = e;
		}
	}
}
