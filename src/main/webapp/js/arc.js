function init(){
	$("#dialog-form").dialog({
		resizable: false,
		autoOpen: false,
		height: 280,
		width: 400,
		modal: true,
	});
	$("#dialog-form2").dialog({
		resizable: false,
		autoOpen: false,
		height: 200,
		width: 400,
		modal: true,
	});
	$("#denglu").click(function(){
		$("#dialog-form").dialog("open");
	});
	$("#zhuce").click(function(){
		$("#dialog-form2").dialog("open");
	});
	
	$("#submit").click(function(){
		validate($("#arcticleId").val());
	});
	
}

function initList(curentPage,pageSize){
	$.ajax({
		type: "POST",
		url: contextPath + "/arcticle/arcticleList.json",
		data:{curentPage:curentPage,pageSize:pageSize},
		datatype: 'json',
		success: function(list){
			if(list != '' && list != null && list.length >0){
				var str = "";
				for(var i=0;i<list.length;i++){
					var id = list[i].id;
					var is_free = list[i].is_free;
					str += "<div class='item'>"+
								"<div class='arcList-title-time'>"+
									"<div style='float:left;width:80%;'>"+
										"<div class='time'>"+list[i].publish_time +"</div>";
										if(is_free === 0){
											str += "<div class='title'><a href='#' onclick='show("+id+","+is_free+")'>"+list[i].arc_title +"</a><img src='"+contextPath+"/images/free_icon.gif' style='height:15px;margin-left:10px;'/></div>";
										}else{
											str += "<div class='title'><a href='#' onclick='show("+id+","+is_free+")'>"+list[i].arc_title +"</a></div>";
										}
									str += "</div>"+
									"<div class='list_desc_info'><a href='#' onclick='show("+id+","+is_free+")'> >>查看详情</a></div>" +
									"<div class='clear'></div>"+
								"</div>"+
								"<div style='padding:10px'>"+list[i].arc_content+"</div>"+
							"</div>";
				}
				
				var totalpage = 0; 				//总页数  （通过 数据库总记录数 / 每页显示记录数）
				if(totalRecords%pageSize == 0){
					totalpage = parseInt(totalRecords/pageSize,10);
				}else{
					totalpage = parseInt(totalRecords/pageSize,10) + 1;
				}
				
				str += "<div class='pager' style=''><ul>";
				if((curentPage-1) <= 0){
					str += "	<li><span style='cursor:default;'>上一页</span></li>";
				}else{
					str += "	<li><span onclick='initList("+(curentPage-1)+","+pageSize+")'>上一页</span></li>";
				}
				for(var i=1;i<=totalpage;i++){
					str += "	<li><span id='page-"+i+"' onclick='initList("+i+","+pageSize+")'>"+i+"</span></li>";// onclick='"+aaaaa(i,pageSize,1)+"'
				}
//				alert(curentPage+" , "+totalpage);
				if(curentPage >= totalpage){
					str += "	<li><span style='cursor:default;'>下一页</span></li>";
				}else{
					str += "	<li><span onclick='initList("+(curentPage+1)+","+pageSize+")'>下一页</a></li>";// onclick='"+aaaaa(i,pageSize,1)+"'
				}
				
				
				
				str += "</ul>"+
				"</div>";
				$("#arcList").html(str);
				$("#page-"+curentPage).attr("style","background:#00e;color:#FFF;cursor:default;").removeAttr("onckick");
			}
		}
	});
}

function show(id,is_free){
	var userId = $("#userId").val();
	if(userId != ""){
		window.location.href = contextPath+"/arcticle/arcticle.htm?id="+id;
	}else{
		if(is_free == 1){
			$("#dialog-form").dialog("open");
			$("#arcticleId").val(id);
		}else{
			window.location.href = contextPath+"/arcticle/arcticle.htm?id="+id;
		}
	}
}

function validate(id){
	var username = $("#j_username").val();
	var password = $("#j_password").val();
	var captcha = $("#j_captcha").val();
	if($.trim(username) == ''){
		alert("用户名不能为空!")
		$("#j_username").focus();
		return;
	}else if($.trim(password) == ''){
		alert("密码不能为空!");
		$("#j_password").focus();
		return;
	}else if($.trim(captcha) == '' || $.trim(captcha) == 'null'){
		alert("验证码不能为空!");
		$("#j_captcha").focus();
		return;
	}else{
		$.ajax({
			type: "POST",
			url: contextPath + "/arcticle/arc_checkCode.json",
			data: {j_captcha:captcha},
			datatype: 'json',
			success: function(obj){
				if(obj){
					$.ajax({
						type: "POST",
						url: contextPath + "/arcticle/arc_login.json",
						data: {username:username,password:password},
						datatype: 'json',
						success: function(user){
							if(user != "" && user.id != 0 && user.id != '' && user != null){
								$("#dialog-form").dialog("close");
								$("#userId").val(user.id);
								if(user.id != 0){
									$("#login_nav").html("欢迎您，" + user.username + " <img src='"+ contextPath +"/images/line.jpg'/> <a href='#' onclick='layout();'>退出</a>");
								}
								if(id != ""){
									window.location.href = contextPath+"/arcticle/arcticle.htm?id="+id;
								}
							}else{
								alert("用户名或密码错误！");
								return;
							}
						},
						error:function(ajaxResponse){
//							alert(ajaxResponse.success);
						}
					}); 
				}else{
					alert("验证码输入错误！");
					return;
				}
			},
			error:function(ajaxResponse){
//				alert(ajaxResponse.success);
			}
		}); 
	}
}

function layout(){
	window.location.href = contextPath + "/arcticle/arc_layout.htm";
}

/**
 * 换张图片
 */
function changeImg(){
	var imgSrc = document.getElementById("imgObj");
	var src = imgSrc.src;
	imgSrc.src = chgUrl(src);
	$("#j_captcha").focus();
}
//时间戳
//为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳
function chgUrl(url){
	var timestamp = (new Date()).valueOf();
	url = contextPath + "/captcha";
	url = url + "?timestamp=" + timestamp;
	return url;
}