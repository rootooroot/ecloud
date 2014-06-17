package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(1);
    _jspx_dependants.add("/include/common.jsp");
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');

	String contextPath = request.getContextPath();
	//System.out.println(contextPath);

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<title>中联润通易云服务平台</title>\r\n");
      out.write("\t\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=9\" />\r\n");
      out.write("\t\t<link style=\"text/css\" rel=\"stylesheet\" href=\"");
      out.print(contextPath);
      out.write("/css/comment_01.css\"/>\r\n");
      out.write("\t\t");
      out.write("\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"");
      out.print(contextPath);
      out.write("/js/jquery-1.8.2.js\"></script>\r\n");
      out.write("\t\t");
      out.write("\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"");
      out.print(contextPath);
      out.write("/js/jquery.event.drag-1.5.min.js\"></script>\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"");
      out.print(contextPath);
      out.write("/js/jquery.touchSlider.js\"></script>\r\n");
      out.write("\t\t");
      out.write("<script>\r\n");
      out.write("\tvar contextPath = \"");
      out.print(request.getContextPath() );
      out.write("\";\r\n");
      out.write("</script>");
      out.write("\r\n");
      out.write("\t\t");
      out.write("\r\n");
      out.write("\t\t<script type=\"text/javascript\" src=\"");
      out.print(contextPath);
      out.write("/js/pub-util.js\"></script>\r\n");
      out.write("\t\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t\tjQuery(document).ready(function() {\r\n");
      out.write("\t\t\t\t/* $('#demo2').bxCarousel({\r\n");
      out.write("\t\t\t\t\tdisplay_num: 3, \r\n");
      out.write("\t\t\t\t\tmove: 3,\r\n");
      out.write("\t\t\t\t\tmargin: 10 \r\n");
      out.write("\t\t\t\t}); */\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t// 图片轮转\r\n");
      out.write("\t\t\t\t$(\".main_visual\").hover(function(){\r\n");
      out.write("\t\t\t\t\t$(\"#btn_prev,#btn_next\").fadeIn()\r\n");
      out.write("\t\t\t\t},function(){\r\n");
      out.write("\t\t\t\t\t$(\"#btn_prev,#btn_next\").fadeOut()\r\n");
      out.write("\t\t\t\t});\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t$dragBln = false;\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t$(\".main_image\").touchSlider({\r\n");
      out.write("\t\t\t\t\tflexible : true,\r\n");
      out.write("\t\t\t\t\tspeed : 200,\r\n");
      out.write("\t\t\t\t\tbtn_prev : $(\"#btn_prev\"),\r\n");
      out.write("\t\t\t\t\tbtn_next : $(\"#btn_next\"),\r\n");
      out.write("\t\t\t\t\tpaging : $(\".flicking_con a\"),\r\n");
      out.write("\t\t\t\t\tcounter : function (e){\r\n");
      out.write("\t\t\t\t\t\t$(\".flicking_con a\").removeClass(\"on\").eq(e.current-1).addClass(\"on\");\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t});\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t$(\".main_image\").bind(\"mousedown\", function() {\r\n");
      out.write("\t\t\t\t\t$dragBln = false;\r\n");
      out.write("\t\t\t\t});\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t$(\".main_image\").bind(\"dragstart\", function() {\r\n");
      out.write("\t\t\t\t\t$dragBln = true;\r\n");
      out.write("\t\t\t\t});\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t$(\".main_image a\").click(function(){\r\n");
      out.write("\t\t\t\t\tif($dragBln) {\r\n");
      out.write("\t\t\t\t\t\treturn false;\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t});\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\ttimer = setInterval(function(){\r\n");
      out.write("\t\t\t\t\t$(\"#btn_next\").click();\r\n");
      out.write("\t\t\t\t}, 5000);\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t$(\".main_visual\").hover(function(){\r\n");
      out.write("\t\t\t\t\tclearInterval(timer);\r\n");
      out.write("\t\t\t\t},function(){\r\n");
      out.write("\t\t\t\t\ttimer = setInterval(function(){\r\n");
      out.write("\t\t\t\t\t\t$(\"#btn_next\").click();\r\n");
      out.write("\t\t\t\t\t},5000);\r\n");
      out.write("\t\t\t\t});\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t$(\".main_image\").bind(\"touchstart\",function(){\r\n");
      out.write("\t\t\t\t\tclearInterval(timer);\r\n");
      out.write("\t\t\t\t}).bind(\"touchend\", function(){\r\n");
      out.write("\t\t\t\t\ttimer = setInterval(function(){\r\n");
      out.write("\t\t\t\t\t\t$(\"#btn_next\").click();\r\n");
      out.write("\t\t\t\t\t}, 5000);\r\n");
      out.write("\t\t\t\t});\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tfunction setHideShow(lc1,rc1){\r\n");
      out.write("\t\t\t\tif(lc1 == 0 && rc1 != 0){\r\n");
      out.write("\t\t\t\t\t$(\".apply .img_l\").attr(\"style\",\"visibility: hidden;\")\r\n");
      out.write("\t\t\t\t}else{\r\n");
      out.write("\t\t\t\t\t$(\".apply .img_l\").attr(\"style\",\"visibility: visible;\")\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\tif(rc1 == 0 && lc1 != 0){\r\n");
      out.write("\t\t\t\t\t$(\".apply .img_r\").attr(\"style\",\"visibility: hidden;\")\r\n");
      out.write("\t\t\t\t}else{\r\n");
      out.write("\t\t\t\t\t$(\".apply .img_r\").attr(\"style\",\"visibility: visible;\")\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t// 产品图片移动\r\n");
      out.write("\t\t\t$(function(){\r\n");
      out.write("\t\t\t\t$li1 = $(\".apply_nav .apply_array\");\r\n");
      out.write("\t\t\t\t$window1 = $(\".apply .apply_w\");\r\n");
      out.write("\t\t\t\t$left1 = $(\".apply .img_l\");\r\n");
      out.write("\t\t\t\t$right1 = $(\".apply .img_r\");\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t$window1.css(\"width\", $li1.length*393);\r\n");
      out.write("\r\n");
      out.write("\t\t\t\tvar lc1 = 0;\r\n");
      out.write("\t\t\t\tvar rc1 = $li1.length-3;\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t$left1.click(function(){\r\n");
      out.write("\t\t\t\t\tif (lc1 < 1) {\r\n");
      out.write("\t\t\t\t\t\t//alert(\"已经是第一张图片\");\r\n");
      out.write("\t\t\t\t\t\treturn;\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\tlc1--;\r\n");
      out.write("\t\t\t\t\trc1++;\r\n");
      out.write("\t\t\t\t\t$window1.animate({left:'+=284px'}, 1000);\r\n");
      out.write("\t\t\t\t\tsetHideShow(lc1,rc1);\r\n");
      out.write("\t\t\t\t});\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t$right1.click(function(){\r\n");
      out.write("\t\t\t\t\tif (rc1 < 1){\r\n");
      out.write("\t\t\t\t\t\t//alert(\"已经是最后一张图片\");\r\n");
      out.write("\t\t\t\t\t\treturn;\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\tlc1++;\r\n");
      out.write("\t\t\t\t\trc1--;\r\n");
      out.write("\t\t\t\t\t$window1.animate({left:'-=284px'}, 1000);\r\n");
      out.write("\t\t\t\t\tsetHideShow(lc1,rc1);\r\n");
      out.write("\t\t\t\t});\r\n");
      out.write("\r\n");
      out.write("\t\t\t})\r\n");
      out.write("\t\t</script>\r\n");
      out.write("\t\t<style type=\"text/css\">\r\n");
      out.write("\t\t\t/* apply */\r\n");
      out.write("\t\t\t.apply{width:940px;margin:0 auto; }\r\n");
      out.write("\t\t\t.apply_array{/* border:#cdcdcd 1px solid; */width:219px;float:left;height:450px;margin-right:45px;padding:0 10px;}\r\n");
      out.write("\t\t\t.apply_array .vote{position:absolute;line-height:26px;margin-top:10px;padding-left:29px;width:83px;display:block;background:url(imgs/vote.gif) no-repeat 0px 0px;height:26px;color:#282828;margin-left:-6px;text-decoration:none;}\r\n");
      out.write("\t\t\t.apply_last{margin-right:0px}\r\n");
      out.write("\t\t\t.apply_img{text-align:center;width:219px;height:326px;display:table-cell;background:#e2e2e2;font-size:95px;vertical-align:middle}\r\n");
      out.write("\t\t\t.apply_array a{text-decoration:underline}\r\n");
      out.write("\t\t\t.apply_array a:hover{color:#e01111}\r\n");
      out.write("\t\t\t.apply_info{text-align:left;padding:15px;}\r\n");
      out.write("\t\t\t/* .apply_comment{text-align:center}\r\n");
      out.write("\t\t\t.apply_info a p { text-align: left;} */\r\n");
      out.write("\t\t\t.apply_info a{line-height:22px;font-weight:700; text-decoration: none; }\r\n");
      out.write("\t\t\t.apply_nav{position:relative;width:820px;float:left;height:455px;overflow:hidden;background: transparent;}\r\n");
      out.write("\t\t\t.apply_w{position:absolute;margin-top:0px;width:1000px;float:left;left:0px}\r\n");
      out.write("\t\t\t.apply .img_l{padding:160px 12px 0 12px;float:left;cursor:pointer;}\r\n");
      out.write("\t\t\t.apply .img_r{padding:160px 12px 0 12px;float:left;cursor:pointer;}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t.demo{width: 890px;height: auto;margin: 0px auto; overflow:hidden; clear: both;position: relative;border:0px solid #d3d3d3}\r\n");
      out.write("\t\t\t.bx_wrap {margin-left: 15px; margin-right:20px;padding-right:20px; }\r\n");
      out.write("\t\t\t.bx_wrap ul img { border: 0px solid #ddd; }\r\n");
      out.write("\t\t\t.bx_wrap ul li{ text-align:center;padding:0 25px; }\r\n");
      out.write("\t\t\t.bx_wrap ul li p { padding:0 25px;width:242px; text-align: left; }\r\n");
      out.write("\t\t\t.bx_wrap ul li a:hover{text-decoration:none; color:#f30}\r\n");
      out.write("\t\t\t.bx_wrap a.prev {width:20px;height:24px;line-height:24px;outline-style:none;outline-width: 0;position:absolute; top:200px; left:-2px; text-indent:-999em; background: url('");
      out.print(contextPath);
      out.write("/images/arr_left.gif') no-repeat;}\r\n");
      out.write("\t\t\t.bx_wrap a.next {width:20px;height:24px;line-height:24px; left:870px;z-index:1; position: absolute;top:200px; text-indent:-999em; background:url('");
      out.print(contextPath);
      out.write("/images/arr_right.gif') no-repeat;}\r\n");
      out.write("\t\t</style>\r\n");
      out.write("\t</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div >\r\n");
      out.write("\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/header.jsp", out, false);
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div>\r\n");
      out.write("\t\t<div class=\"main_visual\">\r\n");
      out.write("\t\t\t<div class=\"flicking_con\">\r\n");
      out.write("\t\t\t\t<a href=\"#\">1</a>\r\n");
      out.write("\t\t\t\t<a href=\"#\">2</a>\r\n");
      out.write("\t\t\t\t<a href=\"#\">3</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"main_image\">\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li><span class=\"img_1\"></span></li>\r\n");
      out.write("\t\t\t\t\t<li><span class=\"img_2\"></span></li>\r\n");
      out.write("\t\t\t\t\t<li><span class=\"img_3\"></span></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t<a href=\"javascript:;\" id=\"btn_prev\"></a>\r\n");
      out.write("\t\t\t\t<a href=\"javascript:;\" id=\"btn_next\"></a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div style=\"height:450px;background: url('");
      out.print(contextPath );
      out.write("/images/shadow-bg.jpg') repeat-x scroll center top rgba(0, 0, 0, 0);\">\r\n");
      out.write("\t\t<div class=\"apply\">\r\n");
      out.write("\t\t\t<div class=\"img_l\"><img src=\"");
      out.print(contextPath );
      out.write("/images/left.gif\" /></div>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<div class=\"apply_nav\">\r\n");
      out.write("\t\t\t\t<div class=\"apply_w\">\r\n");
      out.write("\t\t\t\t\t<div class=\"apply_array\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"apply_img\"><a href=\"");
      out.print(contextPath );
      out.write("/product/caas/yunzhuji/\"><img src=\"");
      out.print(contextPath);
      out.write("/images/index-yzj.jpg\" /></a></div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"apply_info\"><a href=\"");
      out.print(contextPath );
      out.write("/product/caas/yunzhuji/\">提供基于百兆共享网络的主机服务，每台云主机分配一个外网地址，面向小型、无专用设备要求或短期需求的用户。</a></div>\r\n");
      out.write("\t\t\t\t\t\t<!-- <div class=\"apply_comment\"><a href=\"http://www.17sucai.com/\" target=\"_blank\" title=\"我要评论\">评论</a> <a href=\"http://www.17sucai.com/\" target=\"_blank\" title=\"查看评论\">查看评论</a></div>\r\n");
      out.write("\t\t\t\t\t\t<a href=\"javascript:void(0)\" onclick=\"diggUP(1);\" class=\"vote\">投票(<span id=\"count_1\">0</span>)</a> -->\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<div class=\"apply_array\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"apply_img\"><a href=\"");
      out.print(contextPath );
      out.write("/product/caas/zhuanxiangyun/\"><img src=\"");
      out.print(contextPath);
      out.write("/images/index-zxy.jpg\" /></a></div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"apply_info\"><a href=\"");
      out.print(contextPath );
      out.write("/product/caas/zhuanxiangyun/\">提供独享宽带的专享云服务，提供可管理的计算及存储资源池，针对中大型、有较高带宽要求的用户提供服务。</a></div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<div class=\"apply_array\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"apply_img\"><a href=\"");
      out.print(contextPath );
      out.write("/product/staas/yuncunchu/\"><img src=\"");
      out.print(contextPath);
      out.write("/images/index-ycc.jpg\" /></a></div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"apply_info\"><a href=\"");
      out.print(contextPath );
      out.write("/product/staas/yuncunchu/\">轻松实现文件或数据的上传、存储、备份、管理及企业内部共享，企业用户可以根据自身情况按需订购，按量付费。</a></div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<div class=\"apply_array\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"apply_img\"><a href=\"");
      out.print(contextPath );
      out.write("/product/daas/yunzhuomian/\"><img src=\"");
      out.print(contextPath);
      out.write("/images/index-yzm.jpg\" /></a></div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"apply_info\"><a href=\"");
      out.print(contextPath );
      out.write("/product/daas/yunzhuomian/\">桌面云服务能够让用户在一个安全的云端IT环境中进行办公，支持用户在任何时间、任何地点、使用各种设备访问桌面。</a></div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<div class=\"apply_array\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"apply_img\"><a href=\"");
      out.print(contextPath );
      out.write("/product/secaas/safecloud/\"><img src=\"");
      out.print(contextPath);
      out.write("/images/index-aqy.jpg\" /></a></div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"apply_info\"><a href=\"");
      out.print(contextPath );
      out.write("/product/secaas/safecloud/\">为用户计算即服务、桌面云以及云存储产品提供全面可靠的安全保护，确保云环境下服务器的应用程序和数据的安全。</a></div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<div class=\"apply_array\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"apply_img\"><a href=\"");
      out.print(contextPath );
      out.write("/product/infaas/yunzixun/\"><img src=\"");
      out.print(contextPath);
      out.write("/images/index-yzx.jpg\" /></a></div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"apply_info\"><a href=\"");
      out.print(contextPath );
      out.write("/product/infaas/yunzixun/\">为用户提供云计算资讯，让用户时刻掌握云计算产业动态、云计算技术发展以及云计算产品动态。</a></div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<div class=\"img_r\"><img src=\"");
      out.print(contextPath );
      out.write("/images/right.gif\" /></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"wrap2\">\r\n");
      out.write("\t\t<div class=\"gx-service\">\r\n");
      out.write("\t\t\t<div class=\"float-left\">\r\n");
      out.write("\t\t\t\t<div class=\"gx-cypt\" onclick=\"toRedirect(this)\"></div>\r\n");
      out.write("\t\t\t\t<div class=\"gx-cypt-text\">\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"");
      out.print(contextPath);
      out.write("/aboutus/detail.jsp#yy\">什么是易云？</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"");
      out.print(contextPath);
      out.write("/aboutus/detail.jsp#ljzlrt\">了解中联润通？</a></li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"float-left\">\r\n");
      out.write("\t\t\t\t<div class=\"gx-fwyzc\" onclick=\"toRedirect(this)\"></div>\r\n");
      out.write("\t\t\t\t<div class=\"gx-fwyzc-text\">\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"");
      out.print(contextPath);
      out.write("/help/faq.jsp#What_can_I_do_with_Amazon_EC2\">如何开始使用易云平台？</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"");
      out.print(contextPath);
      out.write("/help/faq.jsp#How_much_does_it_cost_easy_to_enjoy_cloud_platform\">使用易云如何收费？</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"");
      out.print(contextPath);
      out.write("/help/faq.jsp#What_is_the_ECU_unit_of_Why_introduce_this_unit\">什么是“ECU计算单位”，为什么要引入此单位？</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"");
      out.print(contextPath);
      out.write("/help/faq.jsp#Easy_to_enjoy_cloud_storage_to_give_customers_what_kind_of_performance\">平台存储能给用户带来什么样的性能？</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"");
      out.print(contextPath);
      out.write("/help/faq.jsp#Easy_to_enjoy_cloud_service_level_agreement_what_sort_of_guarantees_are_there\">易云服务等级协议有什么保证？</a></li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"float-left\">\r\n");
      out.write("\t\t\t\t<div class=\"gx-gywm\" onclick=\"toRedirect(this)\"></div>\r\n");
      out.write("\t\t\t\t<div class=\"gx-gywm-text\">\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"");
      out.print(contextPath);
      out.write("/aboutus/abouts.jsp\">售前电话</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"");
      out.print(contextPath);
      out.write("/aboutus/abouts.jsp\">联系客服</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"");
      out.print(contextPath);
      out.write("/aboutus/abouts.jsp#yjjy\">意见与建议</a></li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"clear\"></div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div id=\"Footer\">\r\n");
      out.write("\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include/footer.jsp", out, false);
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else log(t.getMessage(), t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}