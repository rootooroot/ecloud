<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<link style="text/css" rel="stylesheet" href="<%=contextPath %>/css/com.css"></link>
<%-- <script type="text/javascript" src="<%=contextPath %>/js/jquery-1.8.2.js"></script> --%>

<script type="text/javascript" src="<%=contextPath %>/js/seed-min.js" data-config="{combine:true}"></script>
<script type="text/javascript" src="<%=contextPath %>/js/header/dom/base-min.js"></script>
<script type="text/javascript" src="<%=contextPath %>/js/header/event/base-min.js"></script>
<script type="text/javascript" src="<%=contextPath %>/js/header/event/dom/base-min.js"></script>
<script type="text/javascript" src="<%=contextPath %>/js/header/event/dom/focusin-min.js"></script>
<script type="text/javascript" src="<%=contextPath %>/js/header/event/dom/shake-min.js"></script>
<script type="text/javascript" src="<%=contextPath %>/js/header/anim/base-min.js"></script>
<script type="text/javascript" src="<%=contextPath %>/js/header/anim/timer-min.js"></script>
<script type="text/javascript" src="<%=contextPath %>/js/header/anim/transition-min.js"></script>
<script type="text/javascript" src="<%=contextPath %>/js/header/anim-min.js"></script>
<script type="text/javascript" src="<%=contextPath %>/js/header/promise-min.js"></script>
<script type="text/javascript" src="<%=contextPath %>/js/header/node-min.js"></script>

<script src="http://g.tbcdn.cn/kissy/k/1.4.3/seed-min.js" data-config="{combine:true}"></script>
<script type="text/javascript" src="<%=contextPath %>/js/header/index-kissy.js"></script>
<script type="text/javascript" src="<%=contextPath %>/js/header/header.js"></script>

<header>
	<div id="J_Headerwrap" class="header-wrap" data-spm="2">
		<div class="header-inner y-row">
			<div class="y-span11 ">
				<a id="J_logo" class="logo" data-ga="导航.主体.易云" href="http://www.china-ops.com"> <span class="icon-logo logo"></span></a>
				<nav id="J_Nav">
					<ul id="J_Menu">
						<li class="nav-1" data-menu="sub_menu_1" data-case="one">
							<h2><a href="<%=contextPath %>/index.jsp">首页</a></h2>
						</li>
						<li class="nav-2" data-menu="sub_menu_2" data-case="one">
							<h2>产品服务</h2>
						</li>
						<li class="nav-3" data-menu="sub_menu_3" data-case="one">
							<h2>解决方案</h2>
						</li>
						<li class="nav-4" data-menu="sub_menu_4" data-case="three">
							<h2>帮助支持</h2>
						</li>
						<li class="nav-5" data-menu="sub_menu_5" data-case="two">
							<h2>关于我们</h2>
						</li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
	<div id="J_subMenus" class="sub-menus" style="top: 99px;" data-spm="201">
		<div id="sub_menu_1" class="sub-menu"  style="background:transparent;"><dl></dl></div>
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
					<a data-ga="导航.关于我们.了解易云" href="<%=contextPath %>/aboutus/detail.jsp">了解易云</a>
				</dd>
			</dl>
			<dl>
				<dd>
					<a data-ga="导航.关于我们.联系我们" href="<%=contextPath %>/aboutus/abouts.jsp">联系我们</a>
				</dd>
			</dl>
		</div>
	</div>
</header>
