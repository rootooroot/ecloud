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
	<script type="text/javascript" src="<%=contextPath %>/js/menu.js"></script>
	<script type="text/javascript" src="<%=contextPath %>/js/pub-util.js"></script>
	<script type="text/javascript" src="<%=contextPath %>/js/scrolltopcontrol.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			$("#prompt").click(function(){
		    	$(this).hide();
		    	$("#jianyi").focus();
		    });
			$("#jianyi").focus(function(){
		    	$("#prompt").hide();
		    });
		    $("#jianyi").blur(function () { 
		        if ($(this).val() == "") { 
		        	$("#prompt").show();
		        } 
		    }); 
		});
	    
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
			url = "<%=contextPath%>/captcha";
			url = url + "?timestamp=" + timestamp;
			return url;
		}
	</script>

</head>
<body>
<div id="Container">
	<div id="Header">
		<jsp:include page="../include/header.jsp"></jsp:include>
	</div>
	<div class="guanggao lxwm"></div>
	<div class="gx-abouts-pager">
		<div class="gx-abouts-wrap">
			<div class="gx-abouts-img"></div>
			
			<div class="gx-abouts-advice">
				<div class="title" style="font-size:16px;margin-bottom:20px;">联系电话<span style="padding-left:10px;color:#333;">010-82484458</span></div>
				<div class="title"><a name="yjjy"></a>意见/建议</div>
				<div>
					<from>
						<table>
							<tr>
								<td style="width:30%;">
									<div class="gx-abouts-inputparent">
										<table style="border-collapse: collapse;border-spacing: 0px;">
											<tr>
												<td style="padding:10px 5px;border-bottom:1px solid #DBDBDB;font-size:12px;">姓名</td>
												<td style="padding:10px 2px;border-bottom:1px solid #DBDBDB;font-size:12px;">
													<input type="text" class="textObj" style="border:0;background:url('<%=contextPath%>/images/user.jpg') no-repeat center right transparent;"/>
												</td>
											</tr>
											<tr>
												<td style="padding:10px 5px;border-bottom:1px solid #DBDBDB;font-size:12px;">电子邮箱</td>
												<td style="padding:10px 2px;border-bottom:1px solid #DBDBDB;font-size:12px;">
													<input type="text" class="textObj" style="border:0;background:url('<%=contextPath%>/images/mail.jpg') no-repeat center right transparent;"/>
												</td>
											</tr>
											<tr>
												<td style="padding:10px 5px;border-bottom:1px solid #DBDBDB;font-size:12px;">手机号码</td>
												<td style="padding:10px 2px;border-bottom:1px solid #DBDBDB;font-size:12px;">
													<input type="text" class="textObj"  style="border:0;background:url('<%=contextPath%>/images/phone.jpg') no-repeat center right transparent;"/>
												</td>
											</tr>
											<tr>
												<td style="padding:10px 5px;font-size:12px;">验证码</td>
												<td style="padding:10px 2px;font-size:12px;">
													<input type="text" class="textObj"  style="border:0;width:55px;"/>
													<img id="imgObj" title="看不清？" src="<%=contextPath %>/captcha"  onclick="changeImg()" style="margin:-8px 5px;cursor: pointer;height:25px;width:75px;" />
												</td>
											</tr>
										</table>
									</div>
								</td>
								<td style="position: relative;font-size:12px;">
									<div class="textarea"><textarea id="jianyi" name="jianyi" placeholder="请输入您的意见/建议"></textarea></div>
									<!--[if IE]>   
										<span id="prompt" style="position: absolute; top:15px; left:20px;" class='px vm xg1'>请输入您的意见/建议</span>
									<![endif]--> 
								</td>
							</tr>
							<tr>
								<td style="width:30%;">
									
								</td>
								<td>
									<input type="button" class="gx-abouts-advice-submit"/>
								</td>
							</tr>
						</table>
					</from>
				</div>
			</div>
		</div>
		<div class="gx-abouts-wrap2">
			<div class="gx-abouts-service">
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
	<div id="Footer">
		<jsp:include page="../include/footer.jsp"></jsp:include>
	</div>
</div>
</body>
</html>