/*云存储*/
var danwei = "gb";
// 计算、赋值、显示
function seeVolumeMoney(){
	var volume = 0;
	if(danwei == "gb"){
		volume = $("#volsliders").val()/10*15;
	}else if(danwei == "tb"){
		volume = $("#volsliders").val()*1500;
	}
	$("#volumeTotal").html(volume+"");
	$("#volumeTotal").attr("title","采购单位："+danwei.toLocaleUpperCase() +"；存储："+$("#volsliders").val()+""+danwei.toLocaleUpperCase());
}
//初始化组件方法
function initVolumePrice(){
	// 初始化slider
	$('#volslider').slider({
		disabled:false, 
		animate:true, 
		max:1000,
		min:0,
        step:1,
        value:0,
        range: "min",
		slide:function(event,ui){ 
		     $("#volsliders").val(ui.value);
		}
	});
	// 显示slider的值
	$("#volsliders").val($("#volslider").slider("option","value"));
	
    $("#volsliders").focus(function(){
		$(this).val("");
//		$("#volsliders").slider("option","value", '0');
	});
	
	
	  // 重新调整slider时计算结果清零
    $("#volslider").on("slidechange",function( event, ui ) {
		$("#volumeTotal").text("0");
		if(ui.value != 0){
			$("#submit").attr("disabled",false);
		}else{
			$("#submit").attr("disabled",true);
		}
	});
    
    $("#volsliders").change(function(){
    	if($(this).val() == 0){
    		$("#submit").attr("disabled",true);
		}else{
			$("#submit").attr("disabled",false);
		}
    });
	// 初始化 产品导航的click事件
	$("#show .group .item3 a").click(function(){
		$(this).parent().addClass("selected");
		$(this).parent().attr('style','margin-left:-4px;');
		$(this).parent().children("div").attr('style','visibility:;');
		$(this).parent().siblings().removeClass("selected");
		$(this).parent().siblings().children("div").attr('style','visibility:hidden;');
		if($(this).text() == '产品描述'){
			$(this).parent().attr("style","-moz-border-radius:10px 0px 0px 10px;-webkit-border-radius:10px 0px 0px 10px;border-radius:10px 0px 0px 10px;")
			$("#cpms").show();
			$("#cptd").hide();
			$("#cpjg").hide();
			$("#show .group .item3 a[href='#cpjg']").parent().attr("style","width:90px;");
		}else if($(this).text() == '产品特点'){
			$("#cpms").hide();
			$("#cptd").show();
			$("#cpjg").hide();
			$("#show .group .item3 a[href='#cpjg']").parent().attr("style","width:90px;");
		}else if($(this).text() == '产品价格'){
			$("#cpms").hide();
			$("#cptd").hide();
			$("#cpjg").show();
			$(this).parent().attr("style","margin-left:-4px;width:114px;-moz-border-radius:0px 10px 10px 0px;-webkit-border-radius:0px 10px 10px 0px;border-radius:0px 10px 10px 0px;")
		}
	});
}

//存储单位 选择
// GB
function gb(){
	danwei = "gb";
	$("#gb").attr("style","background:#2E83E8;color:#FFF;margin-right:10px;");
	$("#tb").attr("style","background:#E1E5E7;color:#333;margin-right:10px;");
	$("#volumeSlider").text("GB");
	$("#volsliders").val('0');
	$("#volsliders").attr("maxlength",4);
	$("#volslider").slider("option","value",0);
	$("#volslider").slider("option","max",1000);
	$("#volslider").slider("option","step",10);
	$("#emMin").text("0GB");
	$("#emMax").text("1000GB");
	$("#volumeTotal").html("0");
	$("#volumeTotal").attr("title","");
}
//TB
function tb() {
	danwei = "tb";
	$("#gb").attr("style","background:#E1E5E7;color:#333;margin-right:10px;");
	$("#tb").attr("style","background:#2E83E8;color:#FFF;margin-right:10px;");
	$("#volumeSlider").text("TB");
	$("#volsliders").val('0');
	$("#volsliders").attr("maxlength",3);
	$("#volslider").slider("option","value",0);
	$("#volslider").slider("option","max",100);
	$("#volslider").slider("option","step",1);
	$("#emMin").text("0TB");
	$("#emMax").text("100TB");
	$("#volumeTotal").html("0");
	$("#volumeTotal").attr("title","");
}

var reg = new RegExp("^[1-9]*[1-9][0-9]*$");
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