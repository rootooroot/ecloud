<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath();
%>
<html>
<head>
	<title>中联润通易云服务平台</title>
	<meta http-equiv="X-UA-Compatible" content="IE=9"/>
	<%-- <link style="text/css" rel="stylesheet" href="<%=contextPath %>/css/help.css"></link>
	<link style="text/css" rel="stylesheet" href="<%=contextPath %>/css/Layout.css"></link>
	<link style="text/css" rel="stylesheet" href="<%=contextPath %>/css/index.css"></link> --%>
	<script type="text/javascript" src="<%=contextPath %>/js/jquery-1.8.2.js"></script>
	<%@include  file="../include/common.jsp" %>
	<%-- <script type="text/javascript" src="<%=contextPath %>/js/scroll.js"></script> --%>
	<script type="text/javascript" src="<%=contextPath %>/js/sdmenu-faq.js"></script>
	<script type="text/javascript" src="<%=contextPath %>/js/scrolltopcontrol.js"></script>
	<script type="text/javascript" src="<%=contextPath %>/js/pub-util.js"></script>
	<script type="text/javascript">
        jQuery(document).ready(function() {
            $("#faq-body ol li span").click(function(){
                $(this.nextElementSibling).toggle();
            });
            
            var index = 0;
            $("#my_menu div span").click(function(){
            	if(this.innerHTML ==='计算即服务CaaS'){
            		index = 0;
            	}else if(this.innerHTML === '存储即服务STaaS'){
            		index = 1;
            	}else if(this.innerHTML === '桌面即服务DaaS'){
            		index = 2;
            	}else if(this.innerHTML === '安全即服务SECaaS'){
            		index = 3;
            	}else{
            		index = 0;
            	}
            	$(".sdcontent ul").each(function(i){
                	if(index == i){
		            	$(".sdcontent ul:eq("+i+")").attr("style","display:");
                	}else{
		            	$(".sdcontent ul:eq("+i+")").attr("style","display:none");
                	}
                });
            	//alert(index);
            });
            
            
		});
		
		var myMenu;
		window.onload = function() {
			myMenu = new SDMenu("my_menu");
			myMenu.init();
		};
	</script>
	<style type="text/css">
		.guanggao {
		   height:154px;
		   width:100%;
		   border:0px;
		}
		.faq {
			background: url("../images/banner-cjwt.jpg") no-repeat scroll center center transparent;
		}
		.faq-main {
			width:980px;
			overflow: hidden;
			margin:0 auto;
			min-height:550px;
		}
		
		div.sdmenu{ float:left; position:relative; margin-top:20px; -moz-border-radius:5px;-webkit-border-radius:5px;border-radius:5px;border:1px solid #DBDBDB; width:200px;font-family:Arial, sans-serif;font-size:12px;padding-bottom:10px;/* background:url(bottom.gif) no-repeat  right bottom; */color:#fff;}
		div.sdmenu div{/* background:url(title.gif) repeat-x #FFF; */overflow:hidden;border-bottom:1px solid #DBDBDB; color:#333; }
		div.sdmenu div:first-child{/* background:url(toptitle.gif) no-repeat; */-moz-border-radius:5px 5px 0px 0px;-webkit-border-radius:5px 5px 0px 0px;border-radius:5px 5px 0px 0px;}
		div.sdmenu div.collapsed{height:40px;}
		div.sdmenu div span{display:block;height:25px;line-height:25px;overflow:hidden;padding:8px 25px;font-weight:bold;color:#333;background:url(expanded.gif) no-repeat 10px center;cursor:pointer;border-bottom:1px solid #ddd;}
		div.sdmenu div.collapsed span{background-image:url(collapsed.gif);}
		div.sdmenu div a{padding:5px 10px 5px 40px;background:#eee;display:block;border-bottom:1px solid #ddd;color:#066;}
		div.sdmenu div a.current{background:#ccc;}
		div.sdmenu div a:hover{background:#066 url(linkarrow.gif) no-repeat right center;color:#fff;text-decoration:none;}

        div.sdcontent { float:left; margin:20px 0px 20px 40px; position:relative; width:700px; }
        div h2 a { font-size:18px; }
        div.sdcontent ul { list-style:}
        div.sdcontent ol { list-style: disc inside none; margin: 0; padding: 0; }
        div.sdcontent ol li { list-style-type: disc; padding:2px 0px; }
        div.sdcontent ol li h2 { font-size:18px; }
        div.sdcontent ol li span { padding-left:1em;cursor: pointer; }
        div.sdcontent ol li span:hover { color:#000;font-size:14px; }
        div.sdcontent ol li div { display: none; padding:0px 0px 5px 25px;}
        div.sdcontent ol li div p { text-indent: 2em; padding:5px 0px; }
        div.sdcontent ul  { list-style: decimal outside none; margin-left: 30px; }
        div.sdcontent ul  li { list-style-type: decimal; clear:both; overflow:hidden; padding: 10px 0px 20px 0px; border-bottom:1px dotted #aaa; }
        div.adcontent ul li.title { padding: 0px 0px 20px 0px; }
        div.sdcontent ul li >div.icon { float:left; height:42px; font-size:23px; line-height:44px; padding-left:50px; color: ＃525252; }
        .general-icon { background:url("../images/icon/general.jpg") no-repeat; } 
        .free-icon { background:url("../images/icon/free.jpg") no-repeat; }
        .platform-icon { background:url("../images/icon/platform.jpg") no-repeat; }
        .security-icon { background:url("../images/icon/security.jpg") no-repeat; }
        .elasticIP-icon { background:url("../images/icon/elasticIP.jpg") no-repeat; }
        .cloud_storage-icon { background:url("../images/icon/cloud_storage.jpg") no-repeat; }
        .cloud_monitoring-icon { background:url("../images/icon/cloud_monitoring.jpg") no-repeat; }
        .windows_software-icon { background:url("../images/icon/windows_software.jpg") no-repeat; }
        .technical_support-icon { background:url("../images/icon/technical_support.jpg") no-repeat; }
        .consulting-icon { background:url("../images/icon/consulting.jpg") no-repeat; }
        /*
        .basic-icon { background:url("../images/icon/basic.jpg") no-repeat; }
        .product-icon { background:url("../images/icon/product.jpg") no-repeat; }
        */
        .charge-icon { background:url("../images/icon/charge.jpg") no-repeat; }
        .zxy-icon { background:url("../images/icon/zxy.jpg") no-repeat; }
        .es3-icon { background:url("../images/icon/ES3.jpg") no-repeat; }
        
        
        div.sdcontent ul li ol { list-style-type: circle; }
        div.sdcontent ul li ol li { list-style-type: circle; }
        div.sdcontent ul li ol li { color: #666666;font-family: "宋体",Verdana;font-size: 12px;line-height: 25px; border:0px; margin: 0;padding:0px;padding-left: 30px; }
	</style>
</head>
<body>
<div id="Container">
	<div id="Header">
		<jsp:include page="../include/header.jsp"></jsp:include>
	</div>
	<div class="guanggao faq"></div>
	<div class="faq-main">
		<div id="my_menu" class="sdmenu">
			<div>
				<span>计算即服务CaaS</span>
				<a href="#General">一般性问题</a>
				<a href="#Fee">收费</a>
				<a href="#Platform_architecture_information">平台架构信息</a>
				<a href="#Security">安全</a>
				<a href="#Elastic_IP">弹性 IP</a>
				<a href="#Easy_to_enjoy_cloud_storage">平台存储</a>
				<a href="#Easy_to_enjoy_cloud_monitoring">平台监控</a>
				<a href="#The_Windows_and_the_third_party_software">Windows 和第三方软件</a>
				<a href="#Class_of_service_and_technical_support">服务等级和技术支持</a>
				<a href="#Cloud_computing_related_consulting">专享云</a>
			</div>
			<div class="collapsed">
				<span>存储即服务STaaS</span>
				<a href="#Basic_knowledge_quiz">云存储常见问题</a>
				<a href="#Product_problems">产品问题</a>
				<a href="#charge">收费</a>
				<!-- a href="#Data_download">资料下载</a -->
			</div>
			<div class="collapsed">
				<span>桌面即服务DaaS</span>
				<a href="#Desktop_cloud_common_problems">桌面云常见问题</a>
			</div>
			<div class="collapsed">
				<span>安全即服务SECaaS</span>
				<a href="#Cloud_service_common_safety_problems">安全云服务常见问题</a>
			</div>
		</div>
        <div id="faq-body" class="sdcontent">
        	<div >
	            <ul class="faq-0">
		            <li>
			           <div class="icon general-icon" id="General"> <h2>一般性问题</h2></div>
			            <ol>
							<li>
								<span>什么是易云平台？</span>
								<div><p>易云平台是北京联通于2012年正式面向企业用户的一个云计算（基础设施服务类型）资源租赁服务平台。客户可以通过易云平台自由的创建属于自己的数据中心基础资源，这包括：标准的服务器、可扩展的存储空间和定制的网络带宽，用来运行客户的对外发布的应用系统，办公网络和开发环境等等。该服务可以帮助客户大大降低建设系统的时间、人力投入。</p></div>
							</li>
							<li>
								<span>易云平台可以用来做什么？</span>
								<div><p>客户可以通过易云平台提供的计算、存储和网络资源自由的组合，并在其上运行客户的绝大多数应用软件和各类网站，为开发公司提供测试和开发环境，为中小企业提供办公网络环境，为科研单位提供演算服务器，为视频提供编码服务器等。因为易云平台管理和获取资源是通过一个基于web浏览器实施的，所以计算、存储和网络这样的资源可以在短短几分钟内就准备好，大大提高了随时变化的资源需求的响应效率。而只需要按租赁的资源缴纳相应的月租费就可以了。从而大大提供平台搭建的经济性。</p></div>
							</li>
							<li>
								<span>如何开始使用易云平台？</span>
								<div><p>首先您需要申购易云平台，申购的渠道有三种，一种联络联通的销售人员，第二种是访问易云的网站(<a href="http://cloud.bbn.com.cn" target="_blank">http://cloud.bbn.com.cn</a> )注册并申请，还有一种是拨打联通的易云服务热线(400-650-6306)申购。</p></div>
							</li>
							<li>
								<span>注册易云时为什么需要提交我的企业营业执照等认证信息？</span>
								<div><p>目前易云只为企业用户提供资源租赁服务。申购的时候，如果您的应用是需要备案的对外发布的类似网站的应用，那您需要准备好备案信息，如果是不需要对外发布的类似开发测试环境的需求，您只需要准备好企业的基本资质信息就可以了。</p></div>
							</li>
							<li>
								<span>易云的用户名为什么可以使用我的邮箱信息？</span>
								<div><p>易云平台可以使用客户的常用自有邮箱作为用户名，是为了方便将易云的服务通告能够快速有效的通过客户常用的邮箱告知客户，也便于用户记忆。</p></div>
							</li>
							<li>
								<span>企业用户现在可以获得哪些前所未有的优势？</span>
								<div>
									<p>企业用户常常遇到需要资本购置大量的计算资源，确保企业的业务发展需求，又或者面对一个新兴的业务拓展。易云平台可以让企业的IT管理人员利用易云平台自有的大规模优势，不需要大量投入。现在，企业的IT管理人员知道无论其业务变得多么不确定，都可以通过相对过去更经济而简单的方式来确保具有满足业务需求的计算容量，因此他们可以尽情创新。</p>
									<p>此服务的“弹性”本质可以让企业IT管理人员即时进行扩展，满足其流量或需求峰值。当计算需求意外改变时（增加或缩小），易云平台可以即时作出响应，这意味着企业IT人员可以在任意给定时间点上对使用多少资源进行控制。相反，传统的托管服务通常在固定的时间段内提供固定数量的资源，这就意味着当用量快速变化、不可预测或已知会在不同的时间间隔遭遇大峰值时，用户轻松响应的能力受限。</p>
								</div>
							</li>
							<li>
								<span>如何在易云平台中运行系统？</span>
								<div>
	                                <p>一旦客户获得了易云自服务账户之后，便可通过系统内置的常用的系统模板启动您的云主机。在自服务系统中，有一个启动主机的向导，客户可以按照这个向导，一步一步的提交主机的具体要求，如主机配置几核CPU、多大内存，用的什么网络策略，主机的命名等等。提交后，几分钟就可以拿到一台云主机了。</p>
	                            </div>
							</li>
							<li>
	                            <span>易云的主机自带的系统分区和易云平台的存储服务有什么关系，他们的区别又是什么？</span>
	                            <div>
	                                <p>启动易云主机时，主机自带一个启动分区用于运行主机的操作系统（windows或linux），同时客户也可以在易云自服务界面的存储服务中创建一个单个不大于500GB的存储空间，然后绑定到指定的主机上，就可以完成对主机存储空间的扩展。如果客户停止了主机，那么主机的系统分区会处于闲置的状态，同时挂载在这台主机的存储也会处于闲置状态，客户只要重新启动主机后，之前挂载的存储则会重新挂载到主机上，如果主机的系统是windows系统，则需要在系统中的设备管理器中重新扫瞄，才能看到这个系统分区以外的其他分区，但之前其他分区的文件系统和数据会自动保留，停止主机之前的状态。所有分区都可以在闲置的时候被其他运行的主机挂载，并读写里边的数据。有的时候，这也是转移数据的便捷的一个方式。</p>
	                            </div>
							</li>
							<li>
	                            <span>系统可以多快开始运行？</span>
	                            <div>
	                                <p>从自服务系统中选择配置并点击启动一个台主机到主机变成运行状态并可以远程访问，用时通常不到 5 分钟。这一时间由多个因素决定，包括：系统模板的大小以及多久前您启动过该系统模板。首次启动的系统模板可能需要稍长时间才能启动，通常首次被使用的系统模板启动不超过30分钟。</p>
	                            </div>
							</li>
							<li>
	                            <span>如何在易云平台加载和存储客户定制化的系统？</span>
	                            <div>
	                                <p>易云平台暂不提供系统模板的自助定制化，需要客户将定制化的系统需求已书面的形式告知易云客户服务邮件（<a href="mailto:bjs-ecloud@chinaunicom.cn">bjs-ecloud@chinaunicom.cn</a>），由易云平台的系统研发人员，进行定制化配置和测试，待测试后会通知客户，客户就可以在自己的自服务管理界面中，看到定制化的系统模板了。</p>
	                            </div>
							</li>
							<li>
	                            <span>如何访问我的主机系统？</span>
	                            <div>
	                                <p>在易云平台自服务界面的云主机页面，选择要访问的主机，然后选择”云主机登录”，系统会通过一个弹出框，告知访问这个主机的方式和参数。</p>
	                            </div>
							</li>
							<li>
	                            <span>我可以在易云平台中运行多少个主机？</span>
	                            <div>
	                                <p>在申购易云平台的时候，需要客户提交希望使用的月资源上限范围，而只要不超过这个上限范围，用户可以按需启动主机，最小的主机规格为0.25核／0.5G内存，最大的单个主机规格为8核／16G内存。例如，客户成功申购了100个核、200G内存，那么就可以启动400台最小规格的主机，或者可以启动12台最大规格的主机。</p>
	                                <p>易云平台提供多个机房的环境，如果需要更多的主机资源，请填写需求并与您的使用案例一起提交给易云服务邮箱（<a href="mailto:bjs-ecloud@chinaunicom.cn">bjs-ecloud@chinaunicom.cn</a>），我们将考虑增加您的主机数。主机限制的增加会与请求所针对的机房环境关联。</p>
	                            </div>
							</li>
							<li>
	                            <span>我能够多快扩展容量？</span>
	                            <div>
	                                <p>易云平台提供真正的弹性计算环境。有了易云平台，您可以在几分钟（而不是几小时或几天）内增加或减少容量。您可以同时启动一个、数百个，甚至数千个服务器。需要更多主机时，您只需要访问基于浏览器的易云自服务界面，通常将在几分钟内设置您的新主机。</p>
	                            </div>
							</li>
							<li>
	                            <span>支持哪些操作系统环境？</span>
	                            <div>
	                                <p>易云平台目前支持许多种操作系统，其中包括 RedHat Linux、Windows Server、Fedora、Debian、Cent OS。我们正在设法在未来版本中提供更多种类的操作系统环境。</p>
	                            </div>
							</li>
							<li>
	                            <span>此服务与普通托管服务有何不同？</span>
	                            <div>
	                                <p>传统的托管服务通常针对固定的时间段提供预先配置的资源，成本也是预先确定的。易云平台与其他产品截然不同，它给企业IT管理人员带来了灵活性、控制力和大幅成本节约，可以让他们将易云视作其企业独享的数据中心，同时充分享受易云强大基础设施的优势。</p>
	                                <p>当计算需求意外改变时（增加或缩小），易云平台可以即时作出响应，这意味着企业IT管理人员可以在任意给定时间点上对使用多少资源进行控制。相反，传统的托管服务通常在固定的时间段内提供固定数量的资源，这就意味着当用量快速变化、不可预测或已知会在不同的时间间隔遭遇大峰值时，用户轻松响应的能力受限。</p>
	                                <p>其次，许多托管服务无法让用户完全控制所提供的计算资源。使用易云平台时，开发人员不仅可以选择随时启动或关闭主机，而且还能根据其需求对主机配置进行全面自定义，并随时进行更改。许多托管服务更适合于具有相似系统要求的用户组，因而只提供有限的更改能力。</p>
	                                <p>最后，有了易云平台，企业IT管理人员享受一大好处，即仅需支付其实际资源消耗的费用，而且费用极低。大多数托管服务要求用户预先支付固定的费用，而不管其计算能力的实际用量，这就可能造成用户为避免无法在短时间内快速增长资源而超额购买资源。</p>
	                            </div>
							</li>
						</ol>
	                </li>
	                <li>
						<div class="icon free-icon" id="Free"><h2>收费</h2></div>
						<ol>
							<li>
								<span>使用易云平台如何收费？</span>
								<div>
									<p>易云平台按月租赁资源用量付费。定价依据为月上限资源。收费的项目主要包括，主机的月租赁费用，带宽的租赁费用、存储空间的租赁费用、同时还有增值服务，如主机保护、负载均衡等费用。</p>
									<p>有关易云平台的定价信息，请访问<a href="http://cloud.bbn.com.cn/html/cpyfw.jsp#prices" target="_blank">易云报价</a>部分。</p>
								</div>
							</li>
							<li>
								<span>易云平台的账单周期怎么计算？</span>
								<div>
									<p>从用户获得易云平台的账号后，到下一个自然月的当日，即为一个易云平台的使用月，易云平台是按照月来提供资源租赁服务的。</p>
								</div>
							</li>
							<li>
								<span>易云平台如果需要追加资源，应该如何计费？</span>
								<div>
									<p>如果客户在一个易云账单周期内，提出希望能扩充易云上限资源，以获取更多的资源，可以联络自己的客户代表，在成功提交增加资源的需求后，平台会在3～5个工作日调拨资源，调拨资源的快慢与资源所在机房的资源储备有关。如果遇到机房资源在做平台资源扩充维护阶段，时间会长一些。</p>
								</div>
							</li>
							<li>
								<span>易云平台的网络收费是如何计算的？</span>
								<div>
									<p>易云平台的网络租赁是依据带宽收费的，不论每月数据流量多少，只要不超过预定带宽，就固定收取带宽费用，带宽主要分两种：一种是千兆共享带宽，另外一种是定制独享带宽，独享带宽10M为最小带宽，没有上限。</p>
								</div>
							</li>
							<li>
								<span>如果我在不同的地区内有两个实例，那么数据传输如何收费？</span>
								<div>
									<p>各个不同地区的主机之间的数据传输，会占用各自地区的带宽，只收取各自地区的带宽费用。</p>
								</div>
							</li>
							<li>
								<span>如何缴费和开具发票？</span>
								<div>
									<p>目前易云平台的申购可以找联通的指定销售代表，但是缴费需要去联通指定的营业厅缴费，目前西单电报大楼营业厅可以收缴易云平台的费用。然后营业厅柜台服务人员会协助客户开具发票。</p>
								</div>
							</li>
						</ol>
					</li>
					<li>
						<div id="Platform_architecture_information" class="icon platform-icon"><h2>平台架构信息</h2></div>
						<ol>
							<li>
								<span>客户的应用程序是在哪类硬件上运行？</span>
								<div>
									<p>客户的应用程序将在虚拟计算机上执行，我们称之为“云主机”。有多种主机类型可供选择，因而可选择内存、CPU 和实例存储的配置，使其最适合您的应用程序。若要进一步了解易云主机类型和其适用性，请访问易云<a href="http://cloud.bbn.com.cn" target="_blank">主机类型</a>(此链接指到易云网站的主机类型)详细信息页面。</p>
								</div>
							</li>
							<li>
								<span>我如何选择正确的主机类型？</span>
								<div>
									<p>易云平台的主机可选配置分为8种，具体8种配置请访问易云主机类型(此链接指到易云网站的主机类型)详细信息页面，从0.25核／0.5G内存～8核／16G内存分别是：微型云主机、微型标准云主机、通用小型云主机、计算中型云主机、通用大型云主机、计算超大型云主机和计算超大型云主机。这些主机的计算和存储是分布结构的，即在不改变已存数据的前提下，用户只需要做一个关开主机的几分钟的操作，就可以在云资源上限范围内，对主机的CPU和内存配置进行随意的升级和缩减，因此建议在不确定客户企业应用对那一款云主机更匹配时，可以选择由小启动，再根据业务负载逐级升级的方式，这样可以最大的化的提高单位资源的利用率，好在一定的云资源范围内，运行更多的主机，承载更多的应用需求。在选择主机规格类型时，应当就资源使用率方面考量您的应用程序特点，选择最佳的主机系列和大小。</p>
								</div>
							</li>
							<li>
								<span>什么是“ECU计算单位”，为什么要引入此单位？</span>
								<div>
									<p>云计算集中部署的计算、存储和网络资源，然后根据客户的需求将这个集中的资源池切分交付的资源租赁服务模式，从根本上改变了企业IT管理人员对 CPU、内存、硬盘、网络等资源的惯性思维。企业IT管理人员不再需要购买或租用特定的处理器并用上数月或数年，而是以固定时间周期为单位租用容量。由于易云平台是在商用硬件基础上构建的，随着时间推移，可能会有多种不同类型的物理硬件为易云平台的主机提供支持。我们的目标是提供一致的CPU、内存的衡量单位，无论实际的底层硬件是什么。</p>
									<p>易云平台通过多种衡量标准，为每个主机提供一致且可预计的标准计算能力。为了便于企业IT管理人员可以在不同的主机配置规格之间比较计算的能力，我们定义了易云平台的ECU计算单位。一个ECU计算单位提供相当于一个 2.4 GHz 2011 Xeon 处理器5620配合2011最高性能内存2G的综合计算能力。</p>
									<p>有关更多详细信息，请参阅易云<a href="http://cloud.bbn.com.cn" target="_blank">主机类型</a>(此链接指到易云网站的主机类型)详细信息页面。</p>
								</div>	
							</li>
							<li>
								<span>易云平台能否支持用户自带的特殊安全设备或其他服务器存储硬件？</span>
								<p>可以，易云主机可以允许用户自带硬件，用户只需要向客户代表提出正式的书面申请，明确告知自带硬件设施的参数和用途，易云平台系统管理员一旦审核通过后，就可以投放到易云平台的机房内，一旦配置成功，用户就可以通过自服务界面管理基于用户自带服务器和存储的虚拟化资源。此项服务仅面对2010年以后生产的服务器和存储设备。</p>
							</li>
						</ol>
					</li>
					<li>
						<div id="Security" class="icon security-icon"><h2>安全</h2></div>
						<ol>
							<li>
								<span>如何防止他人查看我的系统？</span>
								<div>
									<p>客户在易云平台完全可以掌控自己的系统的可见性。易云平台自服务平台的所有权限是独立的，部门和部门之间、客户公司和其他客户公司之间都是不可见的，同时易云平台提供了网络虚拟防火墙，支持用户随时修改网络端口的访问策略，这其中包括可以控制访问主机的IP来源范围，杜绝互联网的恶意探测。</p>
								</div>
							</li>
							<li>
								<span>密钥下载之后，如果找不到了，还能再次下载么？</span>
								<div>
									<p>不能，为了安全起见密钥只有在创建的时候才能下载，如果丢失的话，需要重新创建一个新的密钥，如果希望访问这个密钥关联的主机，而这个主机只有密钥访问的方式开放，那么就需要重新启动一台新的主机。</p>
								</div>
							</li>
							<li>
								<span>如何限制云主机只允许从指定的地点访问？</span>
								<div>
									<p>进入中国联通企业云服务平台；</p>
									<p>在云主机列表中查看云主机所使用的网络虚拟防火墙名称；</p>
									<p>在网络虚拟防火墙详情页面查看限制云主机的22端口情况；</p>
									<p>通过网址（<a href="www.ip138.com" target="_blank">www.ip138.com</a>）查询指定地点出口IP，将此IP添加到22端口“来源允许范围IP”处。</p>
								</div>
							</li>
						</ol>
					</li>
					<li>
						<div id="Elastic_IP" class="icon elasticIP-icon"><h2>弹性 IP</h2></div>
						<ol>
							<li>
								<span>为什么每个主机配备1个弹性IP地址？</span>
								<div>
									<p>默认情况下，所有主机只使用 1 个弹性 IP 地址。如果您需要 2 个以上弹性 IP 地址，我们要求您申请可定制化的专享云服务来提高您的限制。我们会请您全面考虑您的使用情况后再下结论，帮助我们了解您对额外地址的需求。</p>
								</div>
							</li>
							<li>
								<span>为什么我的弹性 IP 地址在主机初次启动后与创建主机的指定IP地址不一样？</span>
								<div>
									<p>主机在由停止到正在运行的过程中，或新创建的启动过程中，会暂时用到一个随机的弹性IP，只要主机变成正在运行的状态，客户指定的IP地址就会生效，只需要刷新页面，指定的IP就会显示。</p>
								</div>
							</li>
							<li>
								<span>是否每个运行的实例都需要一个弹性 IP 地址？</span>
								<div>
									<p>如果是共享云，一个主机只配备一个弹性IP，如果申购的是专享云，并非所有主机都需要弹性 IP 地址。可以不需要弹性IP，也可以配置2个以上的弹性IP。共享云主机环境下，每个主机只有一个标准网卡，可配置一个 Internet 可路由公有 IP 地址。此公有地址唯一关联至该主机，直到主机停止或终止，或者替换为其他弹性 IP 地址。而专享云为了满足相对定制化程度较高和带宽能力需求较大的应用：计算集群、后端服务如数据库、缓存代理服务器或视频等都是通常不需要弹性 IP 地址或需要多个弹性IP的应用程序的例子。</p>
								</div>
							</li>
							<li>
								<span>给一台运行中的主机关联另一个弹性 IP 地址需要多长时间？</span>
								<div>
									<p>目前，从易云平台种，如果是共享云，则即关联即生效，如果是定制化网络的独享云，因为划分给客户的可用IP地址都是已经全网发布过，因此的时间也会很快，通常几分钟的时间。</p>
								</div>
							</li>
							<li>
								<span>是否可以为弹性 IP 地址配置反向 DNS 记录？</span>
								<div>
									<p>可以。您可以需求已书面的形式告知易云客户服务邮件（<a href="mailto:bjs-ecloud@chinaunicom.cn">bjs-ecloud@chinaunicom.cn</a>），配置弹性 IP 地址的反向 DNS 记录。请注意，在我们能够创建反向 DNS 记录前，必须存在指向该弹性 IP 地址的对应正向 DNS 记录。</p>
								</div>
							</li>
						</ol>
					</li>
					<li>
						<div id="Easy_to_enjoy_cloud_storage" class="icon cloud_storage-icon"><h2>易云存储</h2></div>
						<ol>
							<li>
								<span>系统终止时主机内的数据会发生什么情况？</span>
								<div>
									<p>存储在易云存储上的数据将独立于主机的生命周期保留下来。也就是说，即使主机处于关机、停止、终止等非运行状态，存储的数据都会随存储永久保存，除非客户在易云自服务管理界面将主机销毁（释放主机启动分区）或删除存储。</p>
								</div>
							</li>
							<li>
								<span>易云存储能给客户带来什么样的性能？</span>
								<div>
									<p>易云存储的性能基准测试的结果是平均75MB／秒的存取，满足绝大多数应用对存储读写性能的需求。</p>
								</div>
							</li>
							<li>
								<span>是否支持多个主机访问一个挂载存储？</span>
								<div>
									<p>虽然可以将多个存储连接到单个主机，目前不支持将多个主机连接到单个存储。</p>
								</div>
							</li>
							<li>
								<span>是否需要卸载存储才能拍摄快照？是否需要完成快照后才能重新使用存储？</span>
								<div>
									<p>否，可以在存储连接主机和使用期间实时拍摄快照。不过，快照只能保存已写入 易云主机存储上的数据，可能不包含应用程序或操作系统已在本地缓存的数据。为了确保能为主机挂载的存储获得一致的快照，我们建议先彻底地断开存储和主机的连接，再发出快照命令，然后重新连接存储到主机。对于用作系统启动分区的启动存储，我们建议先关闭主机，以便能拍摄完整的快照。</p>
								</div>
							</li>
							<li>
								<span>快照能否多次创建存储？恢复后的存储内容恢复时间点是什么？</span>
								<div>
									<p>每个快照都可以不限次数的创建恢复存储，只要在被分配的存储空间上限范围内。快照恢复后的存储内容时间点是客户成功发出快照指令的存储的数据时间点，在创建快照时的操作系统和应用程序的运行在内存中的缓存信息不会被保存。</p>
								</div>
							</li>
							<li>
								<span>是否为存储和快照提供加密？</span>
								<div>
									<p>否。如果加密对您而言很重要，我们建议您在存储上运行加密的文件系统。</p>
								</div>
							</li>
							<li>
								<span>使用易云的快照时如何收费？</span>
								<div>
									<p>易云的快照的收费方式和价格和易云的云主机存储是一样的。</p>
								</div>
							</li>
							<li>
								<span>我的易云存储快照能否共享给其他部门或者公司？</span>
								<div>
									<p>易云平台的快照和存储对于其他部门或公司是不可见的。</p>
								</div>
							</li>
						</ol>
					</li>
					<li>
						<div id="Easy_to_enjoy_cloud_monitoring" class="icon cloud_monitoring-icon"><h2>易云监控</h2></div>
						<ol>
							<li>
								<span>易云平台监控接收和聚合数据的最小时间间隔粒度是多少？</span>
								<div>
									<p>以 5 分钟为间隔接收和聚合指标。</p>
								</div>
							</li>
							<li>
								<span>易云监控平台支持哪些操作系统？</span>
								<div>
									<p>易云平台监控为所有易云的主机接收和提供指标，应该适用于易云平台目前支持的所有操作系统。</p>
								</div>
							</li>
							<li>
								<span>易云的监控什么时候生效，会保存多长时间的数据？</span>
								<div>
									<p>主机只要处于运行的状态，易云主机的监控就会产生数据并显示出来，如果主机处于非运行的状态，监控不会产生数据，监控的历史记录显示到最近2周的数据。</p>
								</div>
							</li>
							<li>
								<span>易云的监控内容是什么？</span>
								<div>
									<p>易云监控云主机的基本指标，包括CPU的平均负载、网络的进出流量和磁盘的读写平均负载。</p>
								</div>
							</li>
							<li>
								<span>易云监控服务是否为收费项目？</span>
								<div>
									<p>是免费的，易云的自服务界面中的监控服务是附赠的免费项目。</p>
								</div>
							</li>
						</ol>
					</li>
					<li>
						<div id="The_Windows_and_the_third_party_software" class="icon windows_software-icon"><h2>Windows 和第三方软件</h2></div>
						<ol>
							<li>
								<span>是否可以将现有的 Windows Server 许可用于易云平台的主机？</span>
								<div>
									<p>不可以。Microsoft Windows Server 许可当前不支持在易云主机或任何其他云环境中使用您现有的 Windows 许可。我们建议客户与 Microsoft 客户代表联络，以了解有哪些许可方案可以选择。</p>
								</div>
							</li>
							<li>
								<span>我可以将什么软件许可带入 Windows 环境？</span>
								<div>
									<p>具体的软件许可条款因供应商而异。因此，我们建议您查看软件供应商的许可条款，以确定您现有的许可是否授权在易云平台中使用。</p>
								</div>
							</li>
							<li>
								<span>Windows 的远程登录后能否更改显示分辨率？</span>
								<div>
									<p>不可以，远程登录windows桌面以后，windows桌面的分辨率就固定了，如果希望更改远程桌面的分辨率，可以尝试使用本地远程桌面连接程序的显示选项设置连接后的windows服务器在本地电脑上显示的分辨率。</p>
								</div>
							</li>
							<li>
								<span>Windows 主机是否可以自行安装杀毒软件和防火墙？</span>
								<div>
									<p>可以，但要视杀毒软件和防火墙等安全软件的许可条款，易云平台提供网络端口的访问控制（功能可见易云自服务管理界面中的网络虚拟防火墙），这在一定程度上避免不需要开放的端口因为没有限制而被恶意扫描并攻击，但无法确保开放的端口是安全可靠，开放的端口就取决于开放的端口相应服务程序的稳定性和安全性，因此我们建议用户考虑在windows主机上安装杀毒和防火墙软件。</p>
								</div>
							</li>
							<li>
								<span>购买Windows主机后，是否可以直接使用，还需要安装和配置么？</span>
								<div>
									<p>需要，目前易云平台提供的windows主机只有标准的windows基本环境，不包含任何第三方软件，交付客户的时候，只有一个远程桌面的口令，客户需要根据自己的业务需求远程登录到windows主机上，安装和配置自己的应用，如果发生主机无法远程桌面可以联络易云平台的客服。</p>
								</div>
							</li>
						</ol>
					</li>
					<li>
						<div id="Class_of_service_and_technical_support" class="icon technical_support-icon"><h2>服务等级和技术支持</h2></div>
						<ol>
							<li>
								<span>易云服务等级协议有什么保证？</span>
								<div>
									<p>易云平台的SLA保证在一个地区中连续 365 天期限内服务可用性达到 99.9%。</p>
								</div>
							</li>
							<li>
								<span>如何判断易云平台的服务达到了SLA 服务标准？</span>
								<div>
									<p>如果客户租赁的云平台内的资源在连续 365 天期限内测得的资源可用性累计总时长不低于365天服务总时长的99.9%，则视为达到服务标准。不可用状态的原因只限定于是因为云平台自身故障原因造成的。因主机配置不当或第三方软件问题导致的资源不可用，易云平台可以提供分析和解决问题的辅助工作。</p>
								</div>
							</li>
						</ol>
					</li>
					<li>
						<div id="Cloud_computing_related_consulting" class="icon zxy-icon"><h2>专享云</h2></div>
						<ol>
							<li>
								<span>专享云指的是私有云的概念吗？即计算、存储物理硬件是单独为我公司使用，不和其他人共享吗？</span>
								<div>
									<p>是的,计算、存储物理硬件是单独为贵公司使用，不和其他人共享。北京联通专享云可以被理解成是一款基于公有云的私有云。用户无需自己投入硬件设备，无需自建机房，只需要按需按月支付使用费即可。为您节约初期投入成本，后期备品备件成本以及运维成本。</p>
								</div>
							</li>
							<li>
								<span>微型专享云主机池是什么概念？是否有服务器集群功能？例如它包含16ECU，可能为4台物理服务器，如果其中一台坏了，计算任务是否会自动转移到其他物理服务器？</span>
								<div>
									<p>微型专享云主机池是包含16个标准计算单元，1个标准计算单元的计算能力等于一颗2011年的Intel E5620处理器单核配合2G内存的计算能力。我们的计算和存储的搭建是基于大规模的集群环境，如果某一台物理节点发生故障，计算任务会由其他计算节点承担，不会对您的业务产生任何影响。</p>
								</div>
							</li>
							<li>
								<span>微型专享云主机池是否仅以虚拟硬件服务器的方式提供？还是会加载操作系统？如加挂操作系统？为何种？（MS Windows, Unix, Linux）操作系统的许可证类型、数量，是否有额外费用？</span>
								<div>
									<p>每一台云主机都可以根据您的需求安装不同的操作系统，对于开源的免费操作系统我们免费提供，如Centos。对于需要授权的操作系统，例如Windows 2008 Server，我们可以为您提供未激活版本的操作系统镜像，由您来自行激活。</p>
								</div>
							</li>
							<li>
								<span>免费提供的防火墙的具体厂家、型号、软硬件版本号？大致安全策略？</span>
								<div>
									<p>免费的防火墙是网络软防火墙，只针对共享云的产品提供服务。防火墙默认策略是关闭所有端口的访问。专享云我们可以提供物理的硬防火墙，具体厂家、型号、软硬件版本号需要根据您的需求确定，不一样的需求所产生的租用费用也不一样。</p>
								</div>
							</li>
							<li>
								<span>除了免费提供的监控服务外，我司是否可以自行远程监控、操作虚拟服务器？</span>
								<div>
									<p>可以，我们有一支训练有素，业务精良的7x24小时监控团队，时时刻刻保证您主机的安全。同时您可以通过北京联通易云自服务平台对您的云主机进行CPU使用率，磁盘I/O读写，和网络流量的监控。</p>
								</div>
							</li>
							<li>
								<span>在联通网上的介绍中，还有一种云产品“定制化专享易云解决方案”。针对有专用设备要求、需要建设复杂网络结构、对带宽有较高要求、需要与用户自由系统整合的高端用户提供服务。如果我司需要，现在可否提供？如可提供，如何操作？是否有计费架构？</span>
								<div>
									<p>可以提供，您可以和您的客户经理提出您的需求，我们会安排专业的售前技术支持人员和您沟通，根据您的需求为您量身制定解决方案。通常情况下定制化专享易云解决方案不收费。</p>
								</div>
							</li>
						</ol>
					</li>
				</ul>
				<ul class="faq-1 hide">
					<li>
						<div id="Basic_knowledge_quiz" class="icon general-icon"><h2>云存储常见问题</h2></div>
						<ol>
							<li>
								<span>什么是 ES3？</span>
								<div>
									<p>易云简单存储服务(Ecloud Simple Storage Service，简称 ES3),是易云对外提供的海量、安全、低成本、高可靠的简单存储服务。支持任意数据类型的存储服务，支持任意时间、地点的数据上传和下载。基于ES3,用户可以搭建出各种多媒体分享网站、网盘、个人企业数据备份等基于大规模数据的服务。</p>
								</div>
							</li>
							<li>
								<span>ES3 可以用来做什么？</span>
								<div>
									<p>ES3提供一个简单的 Web 服务接口，可用于存储和提取任意数量的数据，这些操作可从 Web 上的任何位置随时执行。使用此种 Web 服务，用户可以轻松地构建利用互联网存储的应用程序。由于 ES3 具有很高的可扩展性，而且您只需按实际用量付费，因此用户可以从较小用量起步，根据需要扩展应用程序，而不影响性能或可靠性。其设计具有高灵活性：存储您需要的任意类型和任意数量的数据。可通过简单的web service接口通过程序调用API访问管理数据。</p>
								</div>
							</li>
							<li>
								<span>如何开始使用 ES3？</span>
								<div>
									<p>用分配给您的系统管理员用户名、密码进入中国联通企业云服务平台系统，点击左侧导航栏中用户管理下的“用户管理”按钮进入用户管理界面，点击上面的“创建”按钮，在“创建用户”弹出框中填写真实名称、登录名、用户密码、密码确认、选择所在部门、用户所属角色选择“公司级应用管理员”，点击“创建”按钮，设置好之后，联系我们。</p>
								</div>
							</li>
                        </ol>
                    </li>
                    <li>
                        <div id="Product_problems" class="icon es3-icon"><h2>产品问题</h2></div>
                        <ol>
                            <li>
								<span>ES3的目录结构是怎么样的？</span>
								<div>
									<p>ES3 是提供给用户的虚拟存储空间，在这个虚拟空间中，每个用户可拥有一个到多个Bucket。即在Bucket 下，可以直接存放Object，可以按目录分组归类存放，目录的级数最多为5 级，一般建议在三级以内为宜。要往一个Bucket 下存放Object，该Bucket 必须存在，如果不存在需要单独通过API进行创建；目录不需要通过单独的API创建，只需随Object 一起存取即可，系统会对此自动处理。</p>
									<p>在ES3 中，每一个用户下的所有Object 必须都包含在Bucket 中，一个用户可以拥有多一个Bucket，Bucket 下可以拥有多一个Object。</p>
								</div>
							</li>
							<li>
								<span>ES3 有哪些技术优势？</span>
								<div>
									<p>用户可以通过简单标准的REST 接口，在任何时间、任何地点上传和下载数据，也可以使用WEB页面对数据进行管理。同时，ES3 提供Java、Python、PHP等开发语言的SDK，简化用户的编程。基于ES3，用户可以搭建出各种多媒体分享网站、网盘、个人企业数据备份等基于大规模数据的服务。</p>
								</div>
							</li>
							<li>
								<span>我可以存储多少数据？</span>
								<div>
									<p>用户下的Bucket 数量及Bucket 下的Object 数量均没有限制，用户不需要考虑数据的可扩展性。在ES3 中，用户的每个文件都是一个Object，每个文件需小于5G。Object 包含对象名和数据内容。Object 的大小默认不能超过5G，而且包括已上传的object 的总大小不能超过该用户申请存储空间的大小，上传object 的总数量不能超过该用户申请的object 总数量，否则会返回失败及错误信息。</p>
								</div>
							</li>
							<li>
								<span>如何批量删除数据？</span>
								<div>
									<p>进入系统管理界面，您可以点击文件及文件夹（确保文件夹中的数据为空）前面的复选框，点击active中的“删除”按钮。</p>
								</div>
							</li>
							<li>
								<span>ES3的可靠性如何？</span>
								<div>
									<p>ES3让所有用户能够访问同一个高度可扩展、快速可靠、低成本的数据存储基础设施。该服务具有 99.99% 的可用性，遵守服务等级协议。</p>
								</div>
							</li>
							<li>
								<span>如果来自我的应用程序的流量突然达到峰值，会出现什么情况？</span>
								<div>
									<p>ES3从一开始就将处理来自任何互联网应用程序的高流量作为设计目标。按用量付费的定价以及无限制的容量，可以确保您的递增费用不会变化，而且您的服务也不会中断。ES3 的庞大规模使得我们能够均衡地分布负载，任何应用程序都不会受到流量峰值的影响。</p>
								</div>
							</li>
							<li>
								<span>ES3是否提供服务等级协议 (SLA)？</span>
								<div>
									<p>是。</p>
								</div>
							</li>
							<li>
								<span>ES3服务是否支持断点续传功能？</span>
								<div>
									<p>ES3存储服务平台暂不支持断点续传功能。</p>
								</div>
							</li>
							<li>
								<span>在通过API直接调用的方式使用、管理云存储服务过程中，密钥是否可以更换？</span>
								<div>
									<p>可以，在使用过程中，密钥可以随时更换。</p>
								</div>
							</li>
							<li>
								<span>发布后的访问地址隔多长时间失效？</span>
								<div>
									<p>自发布起有效时间为15分钟，15分钟过后则这个访问地址不能再使用，需重新发布。</p>
								</div>
							</li>
							<li>
								<span>ES3云存储服务可以提供哪些语言的SDK？</span>
								<div>
									<p>暂时可以提供SDK的语言包括：java、php、Python，后续还会有更多语言的SDK包发布。</p>
								</div>
							</li>
							<li>
								<span>怎么访问文件数据内容？</span>
								<div>
									<p>在管理界面，选中需要查看的文件，点击右边的“下载”按钮，便可以查看文件内容了。</p>
								</div>
							</li>
							<li>
								<span>如果不能进入管理界面，可以访问文件数据内容吗？</span>
								<div>
									<p>可以。让管理人员将您需要的文件发布，将访问地址给您，您拿着这个地址放在浏览器的地址栏中，回车就可以下载您需要的文件了。</p>
								</div>
							</li>
						</ol>
					</li>
					<li>
						<div id="charge" class="icon charge-icon"><h2>收费</h2></div>
						<ol>
							<li>
								<span>ES3云存储服务如何收费？</span>
								<div>
									<p>中联润通易云服务平台首页—云存储资费</p>
								</div>
							</li>
                        </ol>
                    </li>
                    <li style="display:none;">
                        <div id="Data_download" class="icon charge-icon"><h2>下载</h2></div>
						<ol>
							<li>
								<span><a href="<%=contextPath%>/">接口API说明文档</a></span>
							</li>
							<li>
								<span><a href="">ES3云存储操作手册</a></span>
							</li>
							<li>
								<span><a href="">ES3技术白皮书</a></span>
							</li>
						</ol>
					</li>
				</ul>
				<ul class="faq-2 hide">
					<li>
                        <div id="Desktop_cloud_common_problems" class="icon general-icon"><h2>桌面云常见问题</h2></div>
						<ol>                            
							<li>
								<span>什么是易云·桌面云？</span>
								<div>
									<p>易云·桌面云产品是以云计算的模式将桌面以服务的方式交付给用户。用户不需要进行桌面环境的建设、部署以及维护等各种繁琐的工作，只需要通过终端登陆桌面办公即可。</p>
									<p>目前已经推出两个版本的桌面云产品，分别是插件版和平台版。针对不同的需求特点可以选择不同的版本。插件版的桌面云是通过安装客户端软件的方式来使用桌面，这个版本的特点是能够支持多种终端平台包括瘦客户机、令客户机以及安卓的终端设备等。对视频播放、3D图形渲染等要求较高的用户较为合适；平台版是通过浏览器的方式来访问桌面平台，这个版本的桌面云特点是对终端要求低，只要能支持java环境即可；同时该版本的平台安全级别更高，一方面是基于隧道包裹的数据传输，一方面是基于物理介质的安全认证，因此对安全级别要求较高的用户较为适合。</p>
								</div>
							</li>
							<li>
								<span>采用贵公司的桌面云，我需要如何根据我公司的人员准备设备？</span>
								<div>
									<p>桌面云服务与传统的citrix 的xen desktop 的销售模式不同，citrix通过卖软件的方式来销售，需要您在本地准备一定数量的服务器，同时还需要承担一定的电费，机架以及机房费用；而我司的桌面云是以公有云的模式为您提供桌面服务，您不需要做任何设备的投入，只要提出您的需求，我们会为您做统一的管理和分配，您只要在终端使用就可以了。</p>
								</div>
							</li>
							<li>
								<span>如果虚拟桌面都运行在远端的数据中心，如何保证企业数据的安全性？</span>
								<div>
									<p>我们有一整套完整的安全解决方案，帮助用户保证业务数据的安全性；首先在环境建设上我们能够达到通常公有云无法达到的安全级别，可以以用户为单位部署安全的网络环境。其次在数据存储上采用类亚马逊的EBS存储架构,保证数据的安全性，第三在桌面数据传输的过程中两个版本都由自己的安全传输方案；插件版是对传输协议做的协议加密来实现传输安全；平台版是通过在数据传输的过程中通过隧道传输方式来保证传输信息的安全。最后一点，针对平台版桌面云能够提供物理介质登录的身份认证，通过动态口令卡等技术来满足安全保障的需求。</p>
								</div>
							</li>
							<li>
								<span>我能否设置敏感数据的下载或保存的权限？</span>
								<div>
									<p>可以根据您提出的需求，为您设置用户权限，确保哪些员工可以去下载或保存公司敏感数据，哪些员工不能进行这些操作。</p>
								</div>
							</li>
							<li>
								<span>如何保证桌面云的服务质量？</span>
								<div>
									<p>我方通过SLA保证您的服务质量。（SLA后续完善）</p>
								</div>
							</li>
							<li>
								<span>采用贵公司的桌面能够帮助我降低成本吗？</span>
								<div>
									<p>我们的桌面云服务是整套完整的服务，从远端的桌面服务到终端的设备服务；您采用桌面云服务肯定是会降低成本的；主要从几个方面来看，第一：零设备采购：不再需要采购服务器、办公电脑，完全由我公司提供服务，包括办公终端的键盘、鼠标、显示器；第二：节约能源损耗，采用我公司的低功耗的设备终端能够大大降低电费的消耗；第三：节约人力成本，所有设备维护，员工桌面的升级、软件的安装等大量重复性的工作不再需要您来处理，这些都在桌面云服务的范围内，大大减少了您的运维团队的工作量，第四：零机房投入成本，您不需要再支付机房租用费用，机房设备维护费用，服务器的电力费用等一切自建或租用机房所必须承担的支出。</p>
								</div>
							</li>
							<li>
								<span>虚拟桌面办公和本地桌面的办公体验上有什么区别吗？</span>
								<div>
									<p>桌面云是通过访问远端的办公环境，操作系统支持windows7 、windows8 与本地办公体验并无差别。</p>
								</div>
							</li>
							<li>
								<span>能否仔细说明下两个版本产品的区别？</span>
								<div>
									<p>技术区别：插件版主要优势在于实现了RDP协议的改造，能够支持流程的视频加速功能；平台版主要实现了基于https的数据密传输，以及访问终端的安全加密，提高了安全性能。</p>
									<p>功能区别：插件版更多的从功能上支持视频播放以及3D图形设计；平台版更多的从安全性上考虑，支持用户基本的办公需求，主要功能特点在于提高了安全性，对于没有特殊办公需求的用户推荐采用平台版。</p>
									<p>终端支持区别：插件版支持pc、瘦客户机、零客户机、安卓移动设备；平台版目前支持PC、瘦客户机，对零客户机、移动终端的支持会在下一次升级实现。</p>
									<p>终端网络：插件版需要借助RDGateway或专线的方式接入云端桌面；平台版不需要任何网络接入方案，可以直接通过Internet访问，且不需要担心访问的安全问题。</p>
								</div>
							</li>
							<li>
								<span>如何保证管理层和普通员工网络的分离或者涉密数据和非涉密数据的分离？</span>
								<div>
									<p>桌面云的桌面虚拟化平台采用与云平台同样的架构设计，可以根据用户的具体业务需求对桌面实现vlan隔离，保证企业数据的有效分离；</p>
								</div>
							</li>
							<li>
								<span>采用桌面云能否利旧原有的pc电脑？</span>
								<div>
									<p>桌面云两个版本都支持传统PC的终端，可以利用原有电脑作为终端设备，但是在桌面云服务的价格体系中，终端设备都是以配套桌面免费租用的方式提供给您的，而且在有效期内可以保修或包换；更重要的是，瘦终端的功率比传统pc要低很多，能够大大节约您的耗电成本，因此您完全没有必要利旧。</p>
								</div>
							</li>
							<li>
								<span>能不能对本地的打印机、usb、投影等日常办公设备的使用进行统一设置？</span>
								<div>
									<p>桌面云可以通过策略控制，设置您能否有权限去进行打印或者是USB的使用，完全根据企业的管理需求进行统一设置管理。</p>
								</div>
							</li>
							<li>
								<span>如何保证员工的办公业务的带宽？</span>
								<div>
									<p>根据用户业务的不同，对带宽的要求也有区别；基本办公操作与需要进行视频播放工作的业务带宽需求会有一定的差别。</p>
                                    <p>普通办公使用的推荐方案：每个桌面200Kbps的带宽即可，如果是500个并发的话，那么推荐使用的带宽为100M。</p>
								</div>
							</li>
							<li>
								<span>每个员工的桌面标准配置是多少？</span>
								<div>
									<p>我们为企业按照1核2G/桌面的资源规格标准做用户资源分配的推荐；如果您希望桌面的配置更高，可以按照您的需求量来做最终结果。</p>
								</div>
							</li>
							<li>
								<span>是否能够严格禁止涉密数据的下载或保存到本地？</span>
								<div>
									<p>首先用户桌面是不保存企业数据的，所有数据都保存在远端数据中心；桌面云的运维服务团队会根据用户的需求去完成策略配置，可以设置哪些数据能够被访问；哪些数据不能访问；以及数据的本地映射都是可以被管控的。</p>
								</div>
							</li>
							<li>
								<span>桌面云的系统升级、变更、维护等工作与市场上的citrix、VMware有什么不同？</span>
								<div>
									<p>我司的桌面云与citrix、VMware不同，对于系统的升级、维护等工作完全不需要企业管理员来操作，我司会通过运维服务体系为用户提供优质的业务服务，用户只需要提出业务需求即可；而在用户的终端不需要进行任何设置和操作；</p>
								</div>
							</li>
							<li>
								<span>桌面云架构设计能否适应系统扩充以及日后的需求变更？</span>
								<div>
									<p>桌面云的总体架构包括虚拟化平台、桌面会话管理以及终端访问接入；各个环节采用的是模块化设计，好处在于桌面更灵活，能够平滑扩展而不影响现有用户的使用；</p>
								</div>
							</li>
                        </ol>
                        <ol>
                            <div><h2></h2></div>
							<li>
								<span>桌面云架构设计能否适应系统扩充以及日后的需求变更？</span>
								<div>
									<p>桌面云的总体架构包括虚拟化平台、桌面会话管理以及终端访问接入；各个环节采用的是模块化设计，好处在于桌面更灵活，能够平滑扩展而不影响现有用户的使用；</p>
								</div>
							</li>
                        </ol>
                    </li>
				</ul>
				<ul class="faq-3 hide">
                    <li>
                        <div id="Cloud_service_common_safety_problems" class="icon general-icon"><h2>安全云服务常见问题</h2></div>
                        <ol>                            
                            <li>
                                <span>什么是安全云服务？</span>
                                <div>
                                    <p>安全云服务是按照云计算模式向企业用户业务云提供全方位、立体化的安全保障服务即Security as a service。对于采用基于虚拟化的云平台架构搭建IT环境的政府及企业用户来说，系统架构的安全性以及满足国家信息技术等级保护的合规性是用户需要考虑的首要因素，一套完整的安全服务体系可以为虚拟环境提供持续的保护，并满足其合规性检查的需要。</p>
                                </div>
                            </li>
                            <li>
                                <span>安全云可以用来做什么？</span>
                                <div>
                                    <p>可以有效的保护构成云的各种应用-计算服务（CaaS）、桌面云(DaaS)及存储服务（STaaS）、平台和环境以及用户存放于云端的各种敏感和隐私数据不被感染、攻击、窃取和非法利用等各种威胁的侵害。</p>
                                </div>
                            </li>
                            <li>
                                <span>安全云都提供什么服务？</span>
                                <div>
                                    <p>提供多种类型的安全服务产品，包括物理安全、边界安全、接入安全、入侵检测、主机安全、数据安全及安全审计等，以及全面的安全管理制度体系，包括总体目标、安全策略、管理制度、操作规程、专职的系统管理员、网络管理员、安全管理员，关键事物岗多人共同管理。</p>
                                </div>
                            </li>
                            <li>
                                <span>安全云服务能够实现定制化？</span>
                                <div>
                                    <p>根据不同的等保要求，提供三种级别安全服务套餐。另外，用户亦可根据自身需求选择基础类安全服务，可叠加任意一项或多项安全产品。</p>
                                </div>
                            </li>
                            <li>
                                <span>安全云服务如何收费？</span>
                                <div>
                                    <p>按月购买不同等级的套餐包进行付费，如用户定制套餐之外的安全产品，按照单一安全产品价格收费。</p>
                                    <p>有关安全云服务的定价信息，请查看安全云报价部分。</p>
                                </div>
                            </li>
                            <li>
                                <span>安全云服务的账单周期怎么计算？</span>
                                <div>
                                    <p>从用户购买安全云服务套餐3～5工作日后开通服务，到下一个自然月的当日，即为安全服务的使用月，按照月来提供安全云服务。</p>
                                </div>
                            </li>
                            <li>
                                <span>我能够多快扩展安全服务？</span>
                                <div>
                                    <p>可以。安全云提供真正的虚拟安全云服务。灵活的网络配置和连接，部署方便、授权简便、操作便捷、各类安全云服务产品通过安全服务管理平台集中管控。</p>
                                </div>
                            </li>
                            <li>
                                <span>安全云与传统集成方式的区别？</span>
                                <div>
                                    <p>传统网络安全保护是通过安全物理硬件来实现的，由于云计算自身的虚拟化、无边界、流动性等特性，我们的安全云服务全部通过虚拟化技术实现，部署方便、灵活，弹性高效、按需定制，全线安全产品通过安全管理平台集中管控。</p>
                                </div>
                            </li>
                            <li>
                                <span>企业用户数据如何保证安全不被丢失？</span>
                                <div>
                                    <p>我们的基础平台架构已经通过了国家信息安全等级保护三级认证备案，而且基于架构自身的存储特性，通过不可逆的算法将用户数据文件分割成N份，每份数据再进行三倍冗余存储。只要存储设备损坏率不超过50%，就可以保证数据安全不丢失。</p>
                                </div>
                            </li>
                            <li>
                                <span>用户如何发现存储设备损坏？</span>
                                <div>
                                    <p>提供7×24小时的监控服务，通过对存储设备的外部监控，从而获取到设备的运行状态信息，而且平台部署了存储灾备，缩短不可用时间。</p>
                                </div>
                            </li>
                            <li>
                                <span>什么是国家信息安全等级保护？</span>
                                <div>
                                    <p>国家信息安全等级保护是对国家安全、法人和其他组织及公民的专有信息以及公开信息和存储、传输、处理这些信息的信息系统分等级实行安全保护，对信息系统中使用的信息安全产品实行按等级管理，对信息系统中发生的信息安全事件分等级响应、处置的综合性工作。</p>
                                </div>
                            </li>
                            <li>
                                <span>国家信息安全等级保护分为几级？</span>
                                <div>
                                    <p>按照不同的安全保护能力，国家信息安全等级保护分为五级，级别越高的基本技术要求和基本管理要求越多。</p>
                                </div>
                            </li>
                            <li>
                                <span>什么是国家信息安全等级保护认证备案？</span>
                                <div>
                                    <p>具有国家安全相关技术资质和安全资质的测试单位对系统的安全测评，将系统定级、系统属性、等级划分理由及其他要求的备案材料报相应公安机关备案，备案需达到国家信息安全等级保护二级以上。</p>
                                </div>
                            </li>
                            <li>
                                <span>国家信息安全等级保评估咨询服务都包括那些内容？</span>
                                <div>
                                    <p>根据国家等保基本要求，针对企业用户安全技术要求、安全管理要求、人员安全管理以及系统建设管理等多方面评估企业用户安全的合规性。</p>
                                </div>
                            </li>
                            <li>
                                <span>安全报告服务是否免费？都包括那些内容？</span>
                                <div>
                                    <p>免费。根据企业用户所购买的安全云服务套餐内容提供安全评估报告，包括安全评估目标、安全评估时间和方式、实际安全需求和组成情况、安全评估策略步骤的制定及评估分析报告等内容。</p>
                                </div>
                            </li>
                        </ol>
                    </li>
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