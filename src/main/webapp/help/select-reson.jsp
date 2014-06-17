<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
	//System.out.println(contextPath);
%>
<html>
<head>
	<title>中国电信云服务平台</title>
	<meta http-equiv="X-UA-Compatible" content="IE=9"/>
	<link style="text/css" rel="stylesheet" href="<%=contextPath %>/css/help.css"></link>
	<link style="text/css" rel="stylesheet" href="<%=contextPath %>/css/Layout.css"></link>
	<link style="text/css" rel="stylesheet" href="<%=contextPath %>/css/index.css"></link>
	<script type="text/javascript" src="<%=contextPath %>/js/jquery-1.8.2.js"></script>
	<%@include  file="../include/common.jsp" %>
	<%-- <script type="text/javascript" src="<%=contextPath %>/js/menu.js"></script> --%>
	<script type="text/javascript" src="<%=contextPath %>/js/pub-util.js"></script>
	<script type="text/javascript" src="<%=contextPath %>/js/scrolltopcontrol.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
		});
	</script>

</head>
<body>
<div id="Container">
	<div id="Header">
		<jsp:include page="../include/header.jsp"></jsp:include>
	</div>
	<div class="guanggao xzly"></div>
	<div class="gx-help-reson">
		<div class="body" style="overflow:hidden;overflow: hidden;">
			<div class="reson-item" style="padding-top:30px;">
				<div class="float-left reson01"></div>
				<div class="reson-desc inlineBlock">
					<div class="desc inlineBlock"><div class="inlineBlock title">专业的运营服务</div><div class="inlineBlock time">7*24小时为您的数据保驾护航</div></div>
					<div>
						<div>—　—　订购后，即可快速完成独享服务器的配置与软件部署。</div>
						<div>—　—　7*24小时的贴心服务，保障数据安全及抗灾能力。</div>
						<div>—　—　无硬件采购，即可实现信息化建立，无技术壁垒，按需使用及付费。</div>
						<div>—　—　企业可通过资服务门户实现IT资源的调度，监控及管理。</div>
						<div>—　—　企业遇到临时性大量计算需求时，可快速提供弹性计算机集群环境。</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="reson-item">
				<div class="float-left reson02"></div>
				<div class="reson-desc inlineBlock" style="margin-top:-10px;padding-top:0px;">
					<div class="desc inlineBlock"><div class="inlineBlock title">安全的数据保障</div><div class="inlineBlock time">高效分布存储，确保您的业务数据万无一失</div></div>
					<div>
						<div>—　—　数据存放在1：3的分布式存储架构中，同时，分布式存储架构还能确保不超过50％的　　　　存储设备损坏也不会造成任何用户数据的丢失。</div>
						<div>—　—　点到点的网络防火墙，安全设备控制的可物理隔离的网络架构和加密的网络传输通　　　　　道，确保客户的数据的迁入和搬出都安全可靠。</div>
						<div>—　—　平台运营的管理权限和用户的权限相对独立，用户端支持捆绑动态口令卡，也可以自　　　　定义权限，无需平台管理员干预，大大提高了用户权限的安全性。</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="reson-item">
				<div class="float-left reson03"></div>
				<div class="reson-desc inlineBlock" style="padding-top:2px;">
					<div class="desc inlineBlock"><div class="inlineBlock title">良好的成本控制</div><div class="inlineBlock time">让您不再为不断增加的维护成本头疼</div></div>
					<div>
						<div>—　—　不会产生大量固定资产投入，相对应管理和维护固定资产的人力也能大大节省。</div>
						<div>—　—　因为集中部署和规模效应，用户付出不大的投入就可以通过使用广州电信高新产业云　　　　获取更高品质的资源。</div>
						<div>—　—　固定的设备采购和管理运营成本转化为更灵活的资源服务租赁成本。</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="reson-item">
				<div class="float-left reson04"></div>
				<div class="reson-desc inlineBlock" style="margin-top:-7px;padding-top:0px;">
					<div class="desc inlineBlock"><div class="inlineBlock title">省心的管理模式</div><div class="inlineBlock time">只需一能上网的智能手机，就可以让您随时掌控</div></div>
					<div>
						<div>—　—　允许用户在设计应用系统时，加入程序自动化调整计算、存储和网络资源的功能，让　　　　应用对底层设施的服务能力有所感知，让应用模式变的更智能。</div>
						<div>—　—　用户可以将更复杂的服务端计算迁移到广州电信高新产业云中，让应用系统的客户端　　　　变的更轻便。</div>
						<div>—　—　用户不需要花时间和精力考虑复杂繁琐的资源采购和管理办法，只需要登录易云，就　　　　可以轻松随意获取想要的计算资源。</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
		<div class="frequent-questions">
			<div class="title">常见问题</div>
			<div class="questions">
				<div class="item">
					<ul>
						<li><a href="<%=contextPath %>/help/faq.jsp#What_can_I_do_with_Amazon_EC2">如何开始使用易云？</a></li>
						<li><a href="<%=contextPath %>/help/faq.jsp#How_to_start_using_the_cloud_platform_easy_to_enjoy">注册易云时为什么需要提交我的企业营业执照等认证信息？</a></li>
						<li><a href="<%=contextPath %>/help/faq.jsp#Why_do_I_need_to_submit_my_business_license_and_certification_information_registered_easy_to_enjoy_cloud">易的用户名为什么可以使用我的邮箱信息？</a></li>
						<li><a href="<%=contextPath %>/help/faq.jsp#Easy_to_enjoy_the_cloud_user_name_is_why_my_mailbox">企业用户现在可以获得哪些前所未有的优势？</a></li>
						<li><a href="<%=contextPath %>/help/faq.jsp#How_to_run_the_system_easy_to_enjoy_cloud_platform">如何在易云中运行系统？</a></li>
						<li><a href="<%=contextPath %>/help/faq.jsp#The_host_comes_easy_to_enjoy_cloud_system_partition_and_easy_to_enjoy_cloud_platform_storage_services_what_their_difference">易云的主机自带的系统分区和平台的存储服务有什么关系，他们的区别又是什么？</a></li>
					</ul>
				</div>
				<div class="item">
					<ul>
						<li><a href="<%=contextPath %>/help/faq.jsp#What_is_easy_to_enjoy_cloud_platform">易云可以用来做什么？</a></li>
						<li><a href="<%=contextPath%>/help/faq.jsp#How_fast_the_system_can_run">系统可以多快开始运行？</a></li>
						<li><a href="<%=contextPath%>/help/faq.jsp#How_easy_to_enjoy_the_cloud_platform_load_and_store_customers_customized_system">如何在易云加载和存储客户定制化的系统？</a></li>
						<%-- <li><a href="<%=contextPath%>/help/faq.jsp#How_do_I_access_my_host_system">如何访问我的主机系统？</a></li> --%>
						<li><a href="<%=contextPath%>/help/faq.jsp#I_can_run_the_number_of_hosts_in_the_cloud_platform_easy_to_enjoy">我可以在易云运行多少个主机？</a></li>
						<li><a href="<%=contextPath%>/help/faq.jsp#I_can_fast_expanding_capacity">我能够多快扩展容量？</a></li>
						<li><a href="<%=contextPath%>/help/faq.jsp#Which_operating_system_environment">支持哪些操作系统环境？</a></li>
						<li><a href="<%=contextPath%>/help/faq.jsp#What_is_the_difference_between_this_service_and_ordinary_hosting_services">此服务与普通托管服务有何不同？</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="gx-help-wrap2">
			<div class="gx-help-service">
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