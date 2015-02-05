<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/header-login.css'/>" />
<div class="header">
	<div class="layout">
		<div class="fleft">
			<div class="mod weather-sign-calendar">
				<div class="btn-weather-pop moz-dropdown">
					<a title="点击查看详情"> <span>2月4日 </span> <span _hover-ignore="1">周三</span>
						<p id="weather-show-brief" class="btn-weather-show weather-sign">
							<span> <b class="weather-place">北京</b> 晴 -3℃
							</span>
						</p> <span>星座运势</span> <i class="arrow"></i>
					</a>
				</div>
			</div>
		</div>
		<div class="fright">
			<div id="mod-sethompage" class="mod first" style="display:;">
				<div id="mod-gotoprev" class="mod" style="">
					<p>
						<a trace-key="head_gotoprev" href="/2013" title="返回旧版"> <span> 返回旧版 </span>
						</a>
					</p>
				</div>
				<div id="btn-system-skin" class="mod btn-mod-system set-skin" for="sd-skin">
					<p class="btn-system moz-dropdown skin-more">
						<span> 换肤 <em> </em> <i class="arrow"> </i>
						</span>
					</p>
				</div>
				<div id="btn-system-set" class="mod btn-mod-system" for="sd-set">
					<p class="btn-system moz-dropdown">
						<span> 设置 <i class="arrow"> </i>
						</span>
					</p>
				</div>
				<div id="btn-system-record" class="mod btn-mod-system" style="" for="sd-record">
					<p class="btn-system moz-dropdown">
						<span> 访问记录 <i class="arrow"> </i>
						</span>
					</p>
				</div>
				<div id="user-area-info" class="mod last" style="">
					<p>
						<a class="btn-pop-win" data-type="login" trace-key="head_login" _hover-ignore="1"> 登录 </a>
					</p>
				</div>
			</div>
		</div>
	</div>
</div>