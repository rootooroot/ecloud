<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<style>
<!--
	#Footer { width:100%; height:66px; background: url("<%=contextPath%>/images/footer-bg.jpg") repeat-x center top #EEE; }
	#Footer .bottom { line-height:60px; width:980px; margin:0 auto; }
	.float-right {
		float:right;
	}
	.bottom-inlineBlock {
		display: inline-block;
		padding-right:10px;
		cursor: pointer;
	}
	.bottom a {
		text-decoration: none;
	}
	.bottom a:hover {
		text-decoration: underline;
		color:#2e83e8;
	}
-->
</style>
<div class="bottom">
	<div class="float-left">版权所有：北京中联润通信息技术有限公司</div>
	<div class="float-right" style="display: none;">
		<div class="bottom-inlineBlock"><a href="<%=contextPath %>/abouts.jsp">联系我们</a></div>
		<div class="bottom-inlineBlock"><a href="#">合作伙伴</a></div>
		<div class="bottom-inlineBlock"><a href="#">招聘英才</a></div>
		<div class="bottom-inlineBlock"><a href="#">网站声明</a></div>
	</div>
</div>