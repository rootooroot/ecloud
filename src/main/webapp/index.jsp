<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
	//System.out.println(contextPath);
%>
<html>
	<head>
		<title>中联润通易云服务平台</title>
		<meta http-equiv="X-UA-Compatible" content="IE=9" />
		<link style="text/css" rel="stylesheet" href="<%=contextPath%>/css/comment_01.css"/>
		<%-- <link style="text/css" rel="stylesheet" href="<%=contextPath%>/css/bootstrap.min.css"></link> --%>
		<script type="text/javascript" src="<%=contextPath%>/js/jquery-1.8.2.js"></script>
		<%-- <script type="text/javascript" src="<%=contextPath%>/js/bootstrap.min.js"></script> --%>
		<script type="text/javascript" src="<%=contextPath%>/js/jquery.event.drag-1.5.min.js"></script>
		<script type="text/javascript" src="<%=contextPath%>/js/jquery.touchSlider.js"></script>
		<%@include file="include/common.jsp"%>
		<%-- <script type="text/javascript" src="<%=contextPath%>/js/bxCarousel.js"></script> --%>
		<script type="text/javascript" src="<%=contextPath%>/js/pub-util.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function() {
				/* $('#demo2').bxCarousel({
					display_num: 3, 
					move: 3,
					margin: 10 
				}); */
				
				// 图片轮转
				$(".main_visual").hover(function(){
					$("#btn_prev,#btn_next").fadeIn()
				},function(){
					$("#btn_prev,#btn_next").fadeOut()
				});
				
				$dragBln = false;
				
				$(".main_image").touchSlider({
					flexible : true,
					speed : 200,
					btn_prev : $("#btn_prev"),
					btn_next : $("#btn_next"),
					paging : $(".flicking_con a"),
					counter : function (e){
						$(".flicking_con a").removeClass("on").eq(e.current-1).addClass("on");
					}
				});
				
				$(".main_image").bind("mousedown", function() {
					$dragBln = false;
				});
				
				$(".main_image").bind("dragstart", function() {
					$dragBln = true;
				});
				
				$(".main_image a").click(function(){
					if($dragBln) {
						return false;
					}
				});
				
				timer = setInterval(function(){
					$("#btn_next").click();
				}, 5000);
				
				$(".main_visual").hover(function(){
					clearInterval(timer);
				},function(){
					timer = setInterval(function(){
						$("#btn_next").click();
					},5000);
				});
				
				$(".main_image").bind("touchstart",function(){
					clearInterval(timer);
				}).bind("touchend", function(){
					timer = setInterval(function(){
						$("#btn_next").click();
					}, 5000);
				});
			});
			
			function setHideShow(lc1,rc1){
				if(lc1 == 0 && rc1 != 0){
					$(".apply .img_l").attr("style","visibility: hidden;")
				}else{
					$(".apply .img_l").attr("style","visibility: visible;")
				}
				if(rc1 == 0 && lc1 != 0){
					$(".apply .img_r").attr("style","visibility: hidden;")
				}else{
					$(".apply .img_r").attr("style","visibility: visible;")
				}
			}
			// 产品图片移动
			$(function(){
				$li1 = $(".apply_nav .apply_array");
				$window1 = $(".apply .apply_w");
				$left1 = $(".apply .img_l");
				$right1 = $(".apply .img_r");
				
				$window1.css("width", $li1.length*393);

				var lc1 = 0;
				var rc1 = $li1.length-3;
				
				$left1.click(function(){
					if (lc1 < 1) {
						//alert("已经是第一张图片");
						return;
					}
					lc1--;
					rc1++;
					$window1.animate({left:'+=284px'}, 1000);
					setHideShow(lc1,rc1);
				});

				$right1.click(function(){
					if (rc1 < 1){
						//alert("已经是最后一张图片");
						return;
					}
					lc1++;
					rc1--;
					$window1.animate({left:'-=284px'}, 1000);
					setHideShow(lc1,rc1);
				});

			})
		</script>
		<style type="text/css">
			/* apply */
			.apply{width:940px;margin:0 auto; }
			.apply_array{/* border:#cdcdcd 1px solid; */width:219px;float:left;height:450px;margin-right:45px;padding:0 10px;}
			.apply_array .vote{position:absolute;line-height:26px;margin-top:10px;padding-left:29px;width:83px;display:block;background:url(imgs/vote.gif) no-repeat 0px 0px;height:26px;color:#282828;margin-left:-6px;text-decoration:none;}
			.apply_last{margin-right:0px}
			.apply_img{text-align:center;width:219px;height:326px;display:table-cell;background:#e2e2e2;font-size:95px;vertical-align:middle}
			.apply_array a{text-decoration:underline}
			.apply_array a:hover{color:#e01111}
			.apply_info{text-align:left;padding:15px;}
			/* .apply_comment{text-align:center}
			.apply_info a p { text-align: left;} */
			.apply_info a{line-height:22px;font-weight:700; text-decoration: none; }
			.apply_nav{position:relative;width:820px;float:left;height:455px;overflow:hidden;background: transparent;}
			.apply_w{position:absolute;margin-top:0px;width:1000px;float:left;left:0px}
			.apply .img_l{padding:160px 12px 0 12px;float:left;cursor:pointer;}
			.apply .img_r{padding:160px 12px 0 12px;float:left;cursor:pointer;}
			
			.demo{width: 890px;height: auto;margin: 0px auto; overflow:hidden; clear: both;position: relative;border:0px solid #d3d3d3}
			.bx_wrap {margin-left: 15px; margin-right:20px;padding-right:20px; }
			.bx_wrap ul img { border: 0px solid #ddd; }
			.bx_wrap ul li{ text-align:center;padding:0 25px; }
			.bx_wrap ul li p { padding:0 25px;width:242px; text-align: left; }
			.bx_wrap ul li a:hover{text-decoration:none; color:#f30}
			.bx_wrap a.prev {width:20px;height:24px;line-height:24px;outline-style:none;outline-width: 0;position:absolute; top:200px; left:-2px; text-indent:-999em; background: url('<%=contextPath%>/images/arr_left.gif') no-repeat;}
			.bx_wrap a.next {width:20px;height:24px;line-height:24px; left:870px;z-index:1; position: absolute;top:200px; text-indent:-999em; background:url('<%=contextPath%>/images/arr_right.gif') no-repeat;}
		</style>
	</head>
<body>
	<div >
		<jsp:include page="include/header.jsp"></jsp:include>
	</div>
	<div>
		<div class="main_visual">
			<div class="flicking_con">
				<a href="#">1</a>
				<a href="#">2</a>
				<a href="#">3</a>
			</div>
			<div class="main_image">
				<ul>
					<li><span class="img_1"></span></li>
					<li><span class="img_2"></span></li>
					<li><span class="img_3"></span></li>
				</ul>
				<a href="javascript:;" id="btn_prev"></a>
				<a href="javascript:;" id="btn_next"></a>
			</div>
		</div>
	</div>
	<div style="height:450px;background: url('<%=contextPath %>/images/shadow-bg.jpg') repeat-x scroll center top rgba(0, 0, 0, 0);">
		<div class="apply">
			<div class="img_l"><img src="<%=contextPath %>/images/left.gif" /></div>
			
			<div class="apply_nav">
				<div class="apply_w">
					<div class="apply_array">
						<div class="apply_img"><a href="<%=contextPath %>/product/caas/yunzhuji/"><img src="<%=contextPath%>/images/index-yzj.jpg" /></a></div>
						<div class="apply_info"><a href="<%=contextPath %>/product/caas/yunzhuji/">提供基于百兆共享网络的主机服务，每台云主机分配一个外网地址，面向小型、无专用设备要求或短期需求的用户。</a></div>
						<!-- <div class="apply_comment"><a href="http://www.17sucai.com/" target="_blank" title="我要评论">评论</a> <a href="http://www.17sucai.com/" target="_blank" title="查看评论">查看评论</a></div>
						<a href="javascript:void(0)" onclick="diggUP(1);" class="vote">投票(<span id="count_1">0</span>)</a> -->
					</div>
					
					<div class="apply_array">
						<div class="apply_img"><a href="<%=contextPath %>/product/caas/zhuanxiangyun/"><img src="<%=contextPath%>/images/index-zxy.jpg" /></a></div>
						<div class="apply_info"><a href="<%=contextPath %>/product/caas/zhuanxiangyun/">提供独享宽带的专享云服务，提供可管理的计算及存储资源池，针对中大型、有较高带宽要求的用户提供服务。</a></div>
					</div>
				
					<div class="apply_array">
						<div class="apply_img"><a href="<%=contextPath %>/product/staas/yuncunchu/"><img src="<%=contextPath%>/images/index-ycc.jpg" /></a></div>
						<div class="apply_info"><a href="<%=contextPath %>/product/staas/yuncunchu/">轻松实现文件或数据的上传、存储、备份、管理及企业内部共享，企业用户可以根据自身情况按需订购，按量付费。</a></div>
					</div>
					
					<div class="apply_array">
						<div class="apply_img"><a href="<%=contextPath %>/product/daas/yunzhuomian/"><img src="<%=contextPath%>/images/index-yzm.jpg" /></a></div>
						<div class="apply_info"><a href="<%=contextPath %>/product/daas/yunzhuomian/">桌面云服务能够让用户在一个安全的云端IT环境中进行办公，支持用户在任何时间、任何地点、使用各种设备访问桌面。</a></div>
					</div>
					
					<div class="apply_array">
						<div class="apply_img"><a href="<%=contextPath %>/product/secaas/safecloud/"><img src="<%=contextPath%>/images/index-aqy.jpg" /></a></div>
						<div class="apply_info"><a href="<%=contextPath %>/product/secaas/safecloud/">为用户计算即服务、桌面云以及云存储产品提供全面可靠的安全保护，确保云环境下服务器的应用程序和数据的安全。</a></div>
					</div>
					
					<div class="apply_array">
						<div class="apply_img"><a href="<%=contextPath %>/product/infaas/yunzixun/"><img src="<%=contextPath%>/images/index-yzx.jpg" /></a></div>
						<div class="apply_info"><a href="<%=contextPath %>/product/infaas/yunzixun/">为用户提供云计算资讯，让用户时刻掌握云计算产业动态、云计算技术发展以及云计算产品动态。</a></div>
					</div>
				</div>
			</div>
			
			<div class="img_r"><img src="<%=contextPath %>/images/right.gif" /></div>
		</div>
	<%-- 
		<div class="demo">
			<div class="bx_wrap">
				<div class="bx_container">
					<ul id="demo2">
						<li>
							<a href="<%=contextPath %>/product-host.jsp">
								<img alt="#" width="219" height="326" src="<%=contextPath%>/images/gx-yzj.jpg">
								<p>提供基于百兆共享网络的主机服务，每台云主机分配一个外网地址，面向小型、无专用设备要求或短期需求的用户。</p>
							</a>
						</li>
						<li>
							<a href="#">
								<img alt="#" width="219" height="326" src="<%=contextPath%>/images/gx-zxy.jpg">
								<p>提供独享宽带的专享云服务，提供可管理的计算及存储资源池，针对中大型、有较高带宽要求的用户提供服务。</p>
							</a>
						</li>
						<li>
							<a href="#">
								<img alt="#" width="219" height="326" src="<%=contextPath%>/images/gx-ycc.jpg">
								<p>轻松实现文件或数据的上传、存储、备份、管理及企业内部共享，企业用户可以根据自身情况按需订购，按量付费。</p>
							</a>
						</li>
						<li>
							<a href="#"><img alt="#" width="219" height="326" src="<%=contextPath%>/images/gx-yzj.jpg">
							<p>图片4</p></a>
						</li>
						<li>
							<a href="#"><img alt="#" width="219" height="326" src="<%=contextPath%>/images/gx-zxy.jpg">
							<p>图片5</p></a>
						</li>
						<li>
							<a href="#"><img alt="#" width="219" height="326" src="<%=contextPath%>/images/gx-ycc.jpg">
							<p>图片6</p></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	 --%>
	</div>
	<div class="wrap2">
		<div class="gx-service">
			<div class="float-left">
				<div class="gx-cypt" onclick="toRedirect(this)"></div>
				<div class="gx-cypt-text">
					<ul>
						<li><a href="<%=contextPath%>/aboutus/detail.jsp#yy">什么是易云？</a></li>
						<li><a href="<%=contextPath%>/aboutus/detail.jsp#ljzlrt">了解中联润通？</a></li>
					</ul>
				</div>
			</div>
			<div class="float-left">
				<div class="gx-fwyzc" onclick="toRedirect(this)"></div>
				<div class="gx-fwyzc-text">
					<ul>
						<li><a href="<%=contextPath%>/help/faq.jsp#What_can_I_do_with_Amazon_EC2">如何开始使用易云平台？</a></li>
						<li><a href="<%=contextPath%>/help/faq.jsp#How_much_does_it_cost_easy_to_enjoy_cloud_platform">使用易云如何收费？</a></li>
						<li><a href="<%=contextPath%>/help/faq.jsp#What_is_the_ECU_unit_of_Why_introduce_this_unit">什么是“ECU计算单位”，为什么要引入此单位？</a></li>
						<li><a href="<%=contextPath%>/help/faq.jsp#Easy_to_enjoy_cloud_storage_to_give_customers_what_kind_of_performance">平台存储能给用户带来什么样的性能？</a></li>
						<li><a href="<%=contextPath%>/help/faq.jsp#Easy_to_enjoy_cloud_service_level_agreement_what_sort_of_guarantees_are_there">易云服务等级协议有什么保证？</a></li>
					</ul>
				</div>
			</div>
			<div class="float-left">
				<div class="gx-gywm" onclick="toRedirect(this)"></div>
				<div class="gx-gywm-text">
					<ul>
						<li><a href="<%=contextPath%>/aboutus/abouts.jsp">售前电话</a></li>
						<li><a href="<%=contextPath%>/aboutus/abouts.jsp">联系客服</a></li>
						<li><a href="<%=contextPath%>/aboutus/abouts.jsp#yjjy">意见与建议</a></li>
					</ul>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div id="Footer">
		<jsp:include page="include/footer.jsp"></jsp:include>
	</div>
</body>
</html>