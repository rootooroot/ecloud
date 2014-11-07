var ecuSilder = 0;
var volSilder = 0;
var snapSilder = 0;
var ipSilder = 0;
var ha = false;
var haString = "没有";
var elb = false;
var elbString = "没有";
var J_input = 0;
var sum = 0;
// 取值
function getHostValue(){
	ecuSilder = $("#ecuCount").val();
	volSilder = $("#volCount").val();
	snapSilder = $("#snapCount").val();
	ipSilder = $("#ipCount").val();
	J_input = $("#J_input").val(); 
	ha = $("#ha").attr("checked") =='checked'?true:false;
	elb = $("#elb").attr("checked") =='checked'?true:false;
}
// 计算、赋值、显示
function seeHostMoney(){
	getHostValue();
	sum = 0;
	if(ecuSilder>0){
		/* sum = (ecuSilder*400*J_input) + (volSilder/10*15) + (ipSilder*200) + (ipSilder*200); */
		sum = (ecuSilder*400) + (volSilder/10*15) + (snapSilder/10*15) + (ipSilder*200) + (ipSilder*200);
		if(J_input>0){
			sum = sum + J_input*10;
			haString = "有";
		}
		if(elb){
			sum = sum + 800;
			elbString = "有";
		}
		$("#total").html(sum+"");
		$("#total").attr("title","ECU："+ecuSilder+"个；扩展存储："+volSilder+"GB；扩展快照："+snapSilder+"GB；IP："+ipSilder+"个；主机保护："+haString+" ，"+ J_input+"个；负载均衡："+elbString+"。");
	}else{
		$("#total").html(sum);
//		$("#total").attr("title","ECU："+ecuSilder+"个；存储："+volSilder+"GB；IP："+ipSilder+"个；主机保护："+haString+"；负载均衡："+elbString+"；云主机："+J_input+"台。");
	}
}
function initHostPrice() {
	// 初始化slider
	$('#ecuslider').slider({
		disabled:false, 
		animate:true, 
		max:12,
		min:0,
        range: "min",
        step:1,
        value:0,
		slide:function(event,ui){ 
		    $("#ecuCount").val(ui.value);
		    seeHostMoney();
		}
	}); 
	$('#volslider').slider({
		disabled:false, 
		animate:true, 
		max:1000,
		min:0,
        step:10,
        value:0,
        range: "min",
		slide:function(event,ui){ 
		     $("#volCount").val(ui.value);
		     seeHostMoney();
		}
	}); 
	$('#snapslider').slider({
		disabled:false, 
		animate:true, 
		max:1000,
		min:0,
        step:10,
        value:0,
        range: "min",
		slide:function(event,ui){ 
		     $("#snapCount").val(ui.value);seeHostMoney();
		     
		}
	}); 
	$('#ipslider').slider({
		disabled:false, 
		animate:true, 
		max:100,
		min:0,
		range: "min",
        step:1,
        value:0,
		slide:function(event,ui){ 
		     $("#ipCount").val(ui.value);
		     seeHostMoney();
		}
	}); 
	
	// 为slider后面相应得文本框赋值，显示slider的值
    $("#ecuCount").val($("#ecuslider").slider("option","value"));
    $("#volCount").val($("#volslider").slider("option","value"));
    $("#snapCount").val($("#snapslider").slider("option","value"));
    $("#ipCount").val($("#ipslider").slider("option","value"));
    
    // ecuslider 控制取值
	$("#ecuslider").on("slidestop",function( event, ui ) {
		var ui_ecu = ui.value;
		if(ui_ecu == 5){
			$("#ecuslider").slider("option","value", 6);
		}else if(ui_ecu == 7){
			$("#ecuslider").slider("option","value", 8);
		}else if(ui_ecu > 8){
			$("#ecuslider").slider("option","value", 12);
		}
		$("#ecuCount").val($("#ecuslider").slider("option","value"));
		if(ui.value != 0){
			$("#submit").attr("disabled",false);
		}else{
			$("#submit").attr("disabled",true);
		}
	});
	
	// 重新调整slider时计算结果清零
	$("#ecuslider").on("slidechange",function( event, ui ) {
//		$("#total").text("0");
	});
	$("#volslider").on("slidechange",function( event, ui ) {
//		$("#total").text("0");
	});
	$("#snapslider").on("slidechange",function( event, ui ) {
//		$("#total").text("0");
	});
	$("#ipslider").on("slidechange",function( event, ui ) {
//		$("#total").text("0");
	});
	
	
	$("#ecuCount").focus(function(){
		$(this).select();
	});
    $("#volCount").focus(function(){
		$(this).select();
	});
    $("#snapCount").focus(function(){
		$(this).select();
	});
    $("#ipCount").focus(function(){
		$(this).select();
	});
}

	var reg = new RegExp("^[1-9]*[1-9][0-9]*$");
    function setEcuSlider(obj) {
    	var min = $("#ecuslider").slider("option","min");
    	var max = $("#ecuslider").slider("option","max");
    	var e = obj.value;
    	if(obj.value == '')
    		obj.value = '0';
    	if(!reg.test(e)){
    		$("#ecuslider").slider("option","value", '0');
    		obj.value = '0';
    	}else{
    		if(e < min){
	    		$("#ecuslider").slider("option","value", '0');
	    		obj.value = '0';
	    	}else if(e > max){
	    		$("#ecuslider").slider("option","value", max);
	    		obj.value = max;
	    	}else{
	    		if(e == 5){
	    			$("#ecuslider").slider("option","value",6);
	    			obj.value = '6';
	    		}else if(6 < e && e <= 8){
	    			$("#ecuslider").slider("option","value",8);
	    			obj.value = '8';
	    		}else if(8 < e && e <= 12){
	    			$("#ecuslider").slider("option","value",12);
	    			obj.value = '12';
	    		}else {
	    			$("#ecuslider").slider("option","value",e);
	    			obj.value = e;
	    		}
	    	}
    	}
    	if(obj.value != 0){
    		$("#submit").attr("disabled",false);
    	}else{
    		$("#submit").attr("disabled",true);
    	}
    }
    
    function setVolSlider(obj) {
    	var min = $("#volslider").slider("option","min");
    	var max = $("#volslider").slider("option","max");
    	var e = obj.value;
    	if(obj.value == '')
    		obj.value = '0';
    	if(!reg.test(e)){
    		$("#volslider").slider("option","value", '0');
    		obj.value = '0';
    	}else{
    		if(e<min){
    			$("#volslider").slider("option","value", '0');
    			obj.value = '0';
    		}else if(e>max){
    			$("#volslider").slider("option","value", max);
    			obj.value = max;
    		}else{
				$("#volslider").slider("option","value",e);
				obj.value = e;
    		}
    	}
    }

    function setSnapSlider(obj) {
    	var min = $("#snapslider").slider("option","min");
    	var max = $("#snapslider").slider("option","max");
    	var e = obj.value;
    	if(obj.value == '')
    		obj.value = '0';
    	if(!reg.test(e)){
    		$("#snapslider").slider("option","value", '0');
    		obj.value = '0';
    	}else{
    		if(e<min){
    			$("#snapslider").slider("option","value", '0');
    			obj.value = '0';
    		}else if(e>max){
    			$("#snapslider").slider("option","value", max);
    			obj.value = max;
    		}else{
				$("#snapslider").slider("option","value",e);
				obj.value = e;
    		}
    	}
    }
    
    function setIpSlider(obj) {
    	var min = $("#ipslider").slider("option","min");
    	var max = $("#ipslider").slider("option","max");
    	var e = obj.value;
    	if(obj.value == '')
    		obj.value = '0';
    	if(!reg.test(e)){
    		$("#ipslider").slider("option","value", '0');
    		obj.value = '0';
    	}else{
    		if(e<min){
    			$("#ipslider").slider("option","value", '0');
    			obj.value = '0';
    		}else if(e>max){
    			$("#ipslider").slider("option","value", max);
    			obj.value = max;
    		}else{
    			$("#ipslider").slider("option","value",e);
    			obj.value = e;
    		}
    	}
    }
