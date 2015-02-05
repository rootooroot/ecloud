<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/navMenu.css'/>" />
<script type="text/javascript">
	jQuery(document).ready(function(){
		var qcloud={};
		$('[_t_nav]').hover(function(){
			var _nav = $(this).attr('_t_nav');
			clearTimeout( qcloud[ _nav + '_timer' ] );
			qcloud[ _nav + '_timer' ] = setTimeout(function(){
			$('[_t_nav]').each(function(){
			$(this)[ _nav == $(this).attr('_t_nav') ? 'addClass':'removeClass' ]('nav-up-selected');
			});
			$('#'+_nav).stop(true,true).slideDown(200);
			}, 150);
		},function(){
			var _nav = $(this).attr('_t_nav');
			clearTimeout( qcloud[ _nav + '_timer' ] );
			qcloud[ _nav + '_timer' ] = setTimeout(function(){
			$('[_t_nav]').removeClass('nav-up-selected');
			$('#'+_nav).stop(true,true).slideUp(200);
			}, 150);
		});
	});
</script>

<div class="head-v3">
	<div class="navigation-logo"></div>
	<div class="head-menu" style="overflow: hidden;min-width:1000px;width:1105px; ">
		<div id="moveNav" class="navigation-up" style="z-index:2;right:-750px;position:absolute;">
			<div class="navigation-inner">
				<div class="navigation-v3">
					<ul class="items">
						<li class="nav-up-selected-inpage" _t_nav="home">
							<h2>
								<a href="http://www.qcloud.com">首页</a>
							</h2>
						</li>
						<li class="" _t_nav="product">
							<h2>
								<a href="http://www.qcloud.com/product/product.php">云产品</a>
							</h2>
						</li>
						<li class="" _t_nav="wechat">
							<h2>
								<a href="http://weixin.qcloud.com/market">微信建站</a>
							</h2>
						</li>
						<li class="" _t_nav="solution">
							<h2>
								<a href="http://game.qcloud.com/">行业解决方案</a>
							</h2>
						</li>
						<li class="" _t_nav="cooperate">
							<h2>
								<a href="http://www.qcloud.com/agent/agent.php">合作伙伴</a>
							</h2>
						</li>
						<li _t_nav="support">
							<h2>
								<a href="http://www.qcloud.com/wiki.php">帮助与支持</a>
							</h2>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="navigation-down">
			<div id="product" class="nav-down-menu menu-1" style="display: none;" _t_nav="product">
				<div class="navigation-down-inner">
					<dl style="margin-left: 100px;">
						<dt>计算机与网络</dt>
						<dd>
							<a hotrep="hp.header.product.compute1" href="http://www.qcloud.com/product/product.php?item=cvm">云服务器</a>
						</dd>
						<dd>
							<a hotrep="hp.header.product.compute2" href="http://www.qcloud.com/product/product.php?item=cee">弹性Web引擎</a>
						</dd>
						<dd>
							<a hotrep="hp.header.product.compute3" href="http://www.qcloud.com/product/product.php?item=balance">负载均衡</a>
						</dd>
					</dl>
					<dl>
						<dt>存储与CDN</dt>
						<dd>
							<a hotrep="hp.header.product.storage1" href="http://www.qcloud.com/product/product.php?item=cdb">云数据库</a>
						</dd>
						<dd>
							<a hotrep="hp.header.product.storage2" href="http://www.qcloud.com/product/product.php?item=cmem">NoSQL高速存储</a>
						</dd>
						<dd>
							<a hotrep="hp.header.product.storage4" href="http://www.qcloud.com/product/product.php?item=cos">对象存储服务(beta)</a>
						</dd>
						<dd>
							<a hotrep="hp.header.product.storage3" href="http://www.qcloud.com/product/product.php?item=cdn">CDN</a>
						</dd>
					</dl>
					<dl>
						<dt>监控与安全</dt>
						<dd>
							<a hotrep="hp.header.product.monitoring1" href="http://www.qcloud.com/product/product.php?item=monitor">云监控</a>
						</dd>
						<dd>
							<a hotrep="hp.header.product.monitoring2" href="http://www.qcloud.com/product/product.php?item=safe">云安全</a>
						</dd>
						<dd>
							<a hotrep="hp.header.product.monitoring3" href="http://www.qcloud.com/product/product.php?item=cat">云拨测</a>
						</dd>
					</dl>
					<dl>
						<dt>数据分析</dt>
						<dd>
							<a hotrep="hp.header.product.analysis1" href="http://mta.qq.com/">腾讯云分析</a>
						</dd>
						<dd>
							<a hotrep="hp.header.product.analysis2" href="http://www.qcloud.com/product/product.php?item=keyfactor">关键因子</a>
						</dd>
					</dl>
					<dl>
						<dt>开发者工具</dt>
						<dd>
							<a hotrep="hp.header.product.devtool1" href="http://www.qcloud.com/product/product.php?item=mna">移动加速</a>
						</dd>
						<dd>
							<a hotrep="hp.header.product.devtool2" href="http://www.qcloud.com/product/product.php?item=appup">应用加固</a>
						</dd>
						<dd>
							<a hotrep="hp.header.product.devtool3" href="http://www.qcloud.com/product/product.php?item=dove">信鸽推送</a>
						</dd>
					</dl>
					<dl>
						<dt>开发者服务</dt>
						<dd>
							<a hotrep="hp.header.product.service1" href="http://www.qcloud.com/special/security.php">安全认证服务</a>
						</dd>
						<dd>
							<a hotrep="hp.header.product.service2" href="http://beian.qcloud.com/">域名备案</a>
						</dd>
					</dl>
				</div>
			</div>
			<div id="solution" class="nav-down-menu menu-3 menu-1" style="display: none;" _t_nav="solution">
				<div class="navigation-down-inner">
					<dl style="margin-left: 380px;">
						<dd>
							<a class="link" hotrep="hp.header.solution.1" href="http://weixin.qcloud.com/">微信</a>
						</dd>
					</dl>
					<dl>
						<dd>
							<a class="link" hotrep="hp.header.solution.2" href="http://game.qcloud.com/">游戏</a>
						</dd>
					</dl>
					<dl>
						<dd>
							<a class="link" hotrep="hp.header.solution.3" href="http://m.qcloud.com/">移动应用</a>
						</dd>
					</dl>
				</div>
			</div>
			<div id="cooperate" class="nav-down-menu menu-3 menu-1" style="display: none;" _t_nav="cooperate">
				<div class="navigation-down-inner">
					<dl style="margin-left: 480px;">
						<dd>
							<a hotrep="hp.header.partner.1" href="http://www.qcloud.com/agent/agent.php">代理商</a>
						</dd>
					</dl>
					<dl>
						<dd>
							<a hotrep="hp.header.partner.2" href="http://proxy.weixin.qcloud.com/apply/apply.php">微信服务商</a>
						</dd>
					</dl>
					<dl>
						<dd>
							<a hotrep="hp.header.partner.3" href="http://www.qcloud.com/special/venture.php?from=qcloud.banner">创投机构</a>
						</dd>
					</dl>
				</div>
			</div>
			<div id="support" class="nav-down-menu menu-3 menu-1" style="display: none;" _t_nav="support">
				<div class="navigation-down-inner">
					<dl style="margin-left: 610px;">
						<dd>
							<a class="link" hotrep="hp.header.support.1" href="http://www.qcloud.com/wiki.php">资料库</a>
						</dd>
					</dl>
					<dl>
						<dd>
							<a class="link" hotrep="hp.header.support.2" href="http://bbs.qcloud.com/forum.php">论坛</a>
						</dd>
					</dl>
					<dl>
						<dd>
							<a class="link" hotrep="hp.header.support.3" href="http://www.qcloud.com/fuchi2014.php">亿元扶持</a>
						</dd>
					</dl>
				</div>
			</div>
		</div>
	</div>
	<div class="navigation-right" style="width:245px;right:0px;"></div>
	<div style="clear: both;"></div>
</div>
