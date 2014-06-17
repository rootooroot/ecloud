<%@ page language="java" import="java.util.*,java.sql.*,com.chinaops.DBUtil.*,com.chinaops.entity.*,com.chinaops.dao.*;" pageEncoding="UTF-8"%>

<%
	String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=9"/>
		<title>中联润通易云服务平台</title>
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/css/ui/jquery.ui.all.css" />
		<link rel="stylesheet" type="text/css" href="<%=contextPath %>/css/arc.css" />
		<script type="text/javascript">
			var contextPath = "<%=contextPath%>";
			var totalRecords = "<%=ArticleDao.getTotalRecords("arcticle")%>";
		</script>
		<script src="<%=contextPath %>/js/jquery-1.8.2.js" type="text/javascript"></script>
		<%-- <script src="<%=contextPath %>/js/jquery-ui-1.9.1.custom.min.js" type="text/javascript"></script> --%>
		<script src="<%=contextPath %>/js/ui/jquery.ui.core.js"></script>
		<script src="<%=contextPath %>/js/ui/jquery.ui.widget.js"></script>
		<script src="<%=contextPath %>/js/ui/jquery.ui.mouse.js"></script>
		<%-- <script src="<%=contextPath %>/js/ui/jquery.ui.button.js"></script> --%>
		<script src="<%=contextPath %>/js/ui/jquery.ui.draggable.js"></script>
		<script src="<%=contextPath %>/js/ui/jquery.ui.position.js"></script>
		<script src="<%=contextPath %>/js/ui/jquery.ui.resizable.js"></script>
		<script src="<%=contextPath %>/js/ui/jquery.ui.dialog.js"></script>
		<script src="<%=contextPath %>/js/ui/jquery.ui.effect.js"></script>
		<script src="<%=contextPath %>/js/ui/jquery.ui.dialog.js" type="text/javascript"></script>
		<script src="<%=contextPath %>/js/scrolltopcontrol.js" type="text/javascript"></script>
		<%-- <script src="<%=contextPath %>/js/chinaops-top.js" type="text/javascript"></script> --%>
		<script src="<%=contextPath %>/js/arc.js" type="text/javascript"></script>
		<link style="text/css" rel="stylesheet" href="<%=contextPath%>/css/com.css"></link>
		<script src="http://g.tbcdn.cn/kissy/k/1.4.3/seed-min.js" data-config="{combine:true}"></script>
		<script type="text/javascript" src="<%=contextPath%>/js/header/index-kissy.js"></script>
		<script type="text/javascript" src="<%=contextPath%>/js/header/header.js"></script>
		<style>
			
		</style>
		<script language="javascript" type="text/javascript">
			var curentPage = 1;
			var pageSize = 3;
			$(document).ready(function(){
				$("#bottom").attr("style","background"+":"+"url(../images/ThebottomoftheObscure.jpg) repeat;top:100px; height:85px;width"+":"+"100%;");
				<%
					if(request.getSession().getAttribute("user") != null){
						User user = (User)request.getSession().getAttribute("user");
						%>
						$("#login_nav").html("欢迎您，<%=user.getUsername()%> <img src='<%=contextPath%>/images/line.jpg' style='margin-top:2px;'/> <a href='#' onclick='layout();'>退出</a>");
						$("#userId").val(<%=user.getId()%>)
						<%
					}else{
						%>
						$("#login_nav").html("<span id='denglu' style='cursor: pointer;'>登录</span> <img src='"+contextPath+"/images/line.jpg'/> <span id='zhuce'>注册</span>");
						$("#userId").val('')
						<%
					}
				%>
				init();
				initList(curentPage,pageSize);
			});
			
		</script>
		
	</head>
	<body>
		<div id="main">
			<div class="top">
				<div class="nav">
					<div id="login_nav" class="login_nav" style="">
						<span id="denglu" style="cursor: pointer;">登录</span> <img src="../images/line.jpg"/> <span id="zhuce">注册</span>
					</div>
				</div>
			</div>
			<header>
				<div id="J_Headerwrap" class="header-wrap" data-spm="2">
					<div class="header-inner y-row">
						<div class="y-span11">
							<a id="J_logo" class="logo" data-ga="导航.主体.易云" href="http://www.china-ops.com"> <span class="icon-logo logo" style=""></span></a>
							<nav id="J_Nav">
								<ul id="J_Menu">
			                           <li class="nav-1" data-menu="sub_menu_1" data-case="one">
										<h2><a class="def" href="<%=contextPath %>/index.jsp">首页</a></h2>
									</li>
									<li class="nav-2" data-menu="sub_menu_2" data-case="one">
										<h2>产品服务</h2>
									</li>
									<li class="nav-3" data-menu="sub_menu_3" data-case="one">
										<h2>解决方案</h2>
									</li>
									<li class="nav-4" data-menu="sub_menu_4" data-case="two">
										<h2>帮助支持</h2>
									</li>
									<li class="nav-5" data-menu="sub_menu_5" data-case="three">
										<h2>关于我们</h2>
									</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
				<div id="J_subMenus" class="sub-menus" style="top: 124px;" data-spm="201">
					<div id="sub_menu_1" class="sub-menu"></div>
					<div id="sub_menu_2" class="sub-menu">
						<dl class="first" style="margin-left: 95.5px;">
							<dt>计算即服务<br>CaaS</dt>
							<dd>
								<a data-ga="导航.产品服务.云主机" href="<%=contextPath%>/product/caas/yunzhuji/">云主机</a>
							</dd>
							<dd>
								<a data-ga="导航.产品服务.专享云" href="<%=contextPath%>/product/caas/zhuanxiangyun/">专享云</a>
							</dd>
						</dl>
						<dl>
							<dt>存储即服务<br>STaaS</dt>
							<dd>
								<a data-ga="导航.产品服务.云存储" href="<%=contextPath%>/product/staas/yuncunchu/">云存储</a>
							</dd>
						</dl>
						<dl>
							<dt>桌面即服务<br>DaaS</dt>
							<dd>
								<a data-ga="导航.产品服务.桌面云" href="<%=contextPath%>/product/daas/yunzhuomian/">桌面云</a>
							</dd>
						</dl>
						<dl>
							<dt>安全即服务<br>SECaaS</dt>
							<dd>
								<a data-ga="导航.产品服务.安全云" href="<%=contextPath%>/product/secaas/safecloud/">安全云</a>
							</dd>
						</dl>
			               <dl>
			               	<dt>资讯即服务<br>INFaaS</dt>
			                   <dd>
			                       <a data-ga="导航.产品服务.云资讯" href="<%=contextPath%>/product/infaas/yunzixun/">云资讯</a>
			                   </dd>
			               </dl>
					</div>
					<div id="sub_menu_3" class="sub-menu">
						<dl class="first" style="margin-left: 187.5px;">
							<dd>
								<a data-ga="导航.解决方案.政府客户" href="<%=contextPath%>/solution/zf.jsp">政府客户</a>
							</dd>
						</dl>
						<dl>
							<dd>
								<a data-ga="导航.解决方案.大型软件企业" href="<%=contextPath%>/solution/dxrj.jsp">大型软件企业</a>
							</dd>
						</dl>
						<dl>
							<dd>
								<a data-ga="导航.解决方案.快速成长企业" href="<%=contextPath%>/solution/kscz.jsp">快速成长企业</a>
							</dd>
						</dl>
						<dl>
							<dd>
								<a data-ga="导航.解决方案.快速成长互联网公司" href="<%=contextPath%>/solution/ksczhlw.jsp">快速成长互联网公司</a>
							</dd>
						</dl>
					</div>
					<div id="sub_menu_4" class="sub-menu">
						<dl class="first" style="margin-left: 263.5px;">
							<dd>
								<a data-ga="导航.帮助支持.选择理由" href="<%=contextPath%>/help/select-reson.jsp">选择理由</a>
							</dd>
						</dl>
			               <dl>
							<dd>
								<a data-ga="导航.帮助支持.常见问题" href="<%=contextPath %>/help/faq.jsp">常见问题</a>
							</dd>
						</dl>
					</div>
					<div id="sub_menu_5" class="sub-menu">
						<dl class="first" style="margin-left: 663.5px;">
							<dd>
								<a data-ga="导航.帮助支持.常见问题" href="<%=contextPath %>/aboutus/detail.jsp">了解易云</a>
							</dd>
						</dl>
						<dl>
							<dd>
								<a data-ga="导航.帮助支持.常见问题" href="<%=contextPath %>/aboutus/abouts.jsp">联系我们</a>
							</dd>
						</dl>
					</div>
				</div>
			</header>
			<div class="arc_img"><img src="../images/guangao.jpg"/></div>
			<div class="arc_info" style="">
				<div class="backTop" style="background: url('../images/bg_top2.png') no-repeat;"></div>
				<div id="arcList" class="backMiddle" style="background: url('../images/bg_middle.jpg') repeat-y #FFF;">
					
				</div>
				<div class="backFooter" style="background: url('../images/bg_footer2.png') no-repeat;"></div>
			</div>
			<input type="hidden" id="userId"/>
			<div id="dialog-form" title="登录" style="display: none;">
				<form>
					<input type="hidden" id="arcticleId"/>
					<table>
						<tr>
							<th><label for="username">用户名：</label></th>
							<td><input type="text" name="j_username" id="j_username" class="text ui-widget-content ui-corner-all" /></td>
						</tr>
						<tr>
							<th><label for="password">密　码：</label></th>
							<td><input type="password" name="j_password" id="j_password" value="" class="text ui-widget-content ui-corner-all" /></td>
						</tr>
						<tr>
							<th><label for="password">验证码：</label></th>
							<td>
								<span><input name="j_captcha" id="j_captcha" style="height:22px;width: 40px;"type="text" class="text ui-widget-content ui-corner-all" maxlength="4"/></span>
								<img id="imgObj" title="点击更换验证码，不区分大小写" src="<%=contextPath %>/captcha" onclick="changeImg()" style="cursor: pointer;padding-top: 3px;height:27px;width:75px;position: absolute;padding-left:5px;" />
								<a href="javascript:changeImg();" style="margin-left: 90px;font-size: 14px;">看不清楚？</a>
							</td>
						</tr>
						<tr>	
							<td colspan="2" style="text-align: center;"><input type="button" id="submit" value="登录" style="width:120px;" class="button ui-widget-content ui-corner-all"/></td>
						</tr>
					</table>
					<div class="desc_info">
						<p><span class="ui-icon ui-icon-info" style="float:left;"></span>会员1000.00元/月，即可享受会员专区服务，详细资费请咨询客服中心 cloud-cc@china-ops.com</p>
					</div>
				</form>
			</div>
			<div id="dialog-form2" title="注册" style="display: none;">
				<form>
					<div class="desc_info" style="border:0px;padding:20px;">
						<p><span class="ui-icon ui-icon-info" style="float:left;margin-top: 2px;"></span>注册为会员后，可以获取更多的专业资讯；</p>
						<p>想要升级为会员及了解资费，请咨询客服中心cloud-cc@china-ops.com;</p>
						<div class="clear"></div>
					</div>
				</form>
			</div>
			<!-- 页脚开始 -->
			<div id="Footer">
				<jsp:include page="../include/footer.jsp"></jsp:include>
				<!-- 页脚结束 -->
			</div>
		</div>
		<!-- end -->
	</body>
</html>
