package org.apache.jsp.product.daas.yunzhuomian;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(1);
    _jspx_dependants.add("/product/daas/yunzhuomian/../../../include/common.jsp");
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

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\t<title>中联润通易云服务平台</title>\r\n");
      out.write("\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=9\"/>\r\n");
      out.write("\t<link style=\"text/css\" rel=\"stylesheet\" href=\"");
      out.print(contextPath );
      out.write("/css/Layout.css\"></link>\r\n");
      out.write("\t<link style=\"text/css\" rel=\"stylesheet\" href=\"");
      out.print(contextPath );
      out.write("/css/jquery-ui.css\"></link>\r\n");
      out.write("\t<link style=\"text/css\" rel=\"stylesheet\" href=\"");
      out.print(contextPath );
      out.write("/css/index.css\"></link>\r\n");
      out.write("\t<link style=\"text/css\" rel=\"stylesheet\" href=\"");
      out.print(contextPath );
      out.write("/css/nav-menu.css\"></link>\r\n");
      out.write("\t<link style=\"text/css\" rel=\"stylesheet\" href=\"");
      out.print(contextPath );
      out.write("/css/hover-menu.css\"></link>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/jquery-1.8.2.js\"></script>\r\n");
      out.write("\t");
      out.write("<script>\r\n");
      out.write("\tvar contextPath = \"");
      out.print(request.getContextPath() );
      out.write("\";\r\n");
      out.write("</script>");
      out.write("\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/sdmenu.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/pub-util.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/scroll.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/jquery-ui.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/scrolltopcontrol.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\t\tvar myMenu;\r\n");
      out.write("\t\twindow.onload = function() {\r\n");
      out.write("\t\t\tmyMenu = new SDMenu(\"my_menu\");\r\n");
      out.write("\t\t\tmyMenu.init();\r\n");
      out.write("\t\t};\r\n");
      out.write("\t</script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"Container\">\r\n");
      out.write("\t<div id=\"Header\">\r\n");
      out.write("\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../../../include/header.jsp", out, false);
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"guanggao zmy\"></div>\r\n");
      out.write("\t<div class=\"gx-host\">\r\n");
      out.write("\t\t<div class=\"body\" style=\"overflow:hidden;overflow: hidden;\">\r\n");
      out.write("\t\t\t<div class=\"faq_box\">\r\n");
      out.write("\t\t\t\t<div class=\"help_left\" style=\"position: relative;\">\r\n");
      out.write("\t\t\t\t\t<!-- 导航 begin -->\r\n");
      out.write("\t\t\t\t\t<div id=\"my_menu\" class=\"pdmenu\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"collapsed\">\r\n");
      out.write("\t\t\t\t\t\t\t<span>计算即服务CaaS</span>\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"");
      out.print(contextPath );
      out.write("/product/caas/yunzhuji/\">云主机</a>\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"");
      out.print(contextPath );
      out.write("/product/caas/zhuanxiangyun/\">专享云</a>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"collapsed\">\r\n");
      out.write("\t\t\t\t\t\t\t<span>存储即服务STaaS</span>\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"");
      out.print(contextPath );
      out.write("/product/staas/yuncunchu/\">云存储</a>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t\t\t<span>桌面即服务DaaS</span>\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"");
      out.print(contextPath );
      out.write("/product/daas/yunzhuomian/\" style=\"color:#2E83e8;\">桌面云</a>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"collapsed\">\r\n");
      out.write("\t\t\t\t\t\t\t<span>安全即服务SECaaS</span>\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"");
      out.print(contextPath );
      out.write("/product/secaas/safecloud/\">安全云</a>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"collapsed\">\r\n");
      out.write("\t\t\t\t\t\t\t<span>资讯即服务INFaaS</span>\r\n");
      out.write("\t\t\t\t\t\t\t<a href=\"");
      out.print(contextPath );
      out.write("/product/infaas/yunzixun/\">云资讯</a>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t\t\t\t<div class=\"faq_body\">\r\n");
      out.write("\t\t\t\t\t<div class=\"help_nav\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"hr\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"zmyImg float-left\"></div>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"text float-left\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"title\">桌面云</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"desc\">桌面云是易云产品系列的桌面即服务产品(DaaS)，桌面云服务能够让用户在一个安全的云端IT环境中进行办公，支持用户在任何时间、任何地点、使用各种设备访问桌面。</div>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"clear\"></div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div id=\"show\" class=\"showNav\">\r\n");
      out.write("\t\t\t\t\t\t\t<div id=\"hover-menu\" class=\"hover-menu\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"selected\"><a href=\"#cp-ms\">产品描述</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"#cp-fl\">产品分类</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"#cp-td\">产品特点</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"#cp-db\">与传统物理桌面对比</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"items\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"item-0\" id=\"cp-ms\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"item-title\">产品描述</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"item-detail\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div>桌面云依托易云的基础架构平台，通过桌面云管理平台为企业分配和管理用户桌面；借助易云的安全即服务，使得DaaS能够和计算即服务产品CaaS拥有同等的安全防护级别；同时通过运维服务的方式完成用户桌面的交付。用户只需要能在本地连接到云端桌面即可，无需关心桌面云环境的配置、部署、分配维护等一些列繁琐的工作。</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"item-1\" id=\"cp-fl\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"item-title\">产品分类</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"item-detail\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div>目前已经推出两个版本的桌面云产品，分别是插件版和平台版。针对不同的需求特点用户可以选择不同的版本。</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<ul style=\"padding：0px; list-style-type: decimal;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<li>插件版：<p>插件版的桌面云是通过安装客户端软件的方式来使用桌面，这个版本的特点是能够支持多种终端平台包括瘦客户机、令客户机以及安卓的终端设备等。对视频播放、3D图形渲染等要求较高的用户较为合适；</p></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<li>平台版：<p>平台版是通过浏览器的方式来访问桌面平台，这个版本的桌面云特点是对终端要求低，只要能支持java环境即可；同时该版本的平台安全级别更高，一方面是基于隧道包裹的数据传输，一方面是基于物理介质的安全认证，因此对安全级别要求较高的用户较为适合。</p></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"item-2\" id=\"cp-td\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"item-title\">产品特点</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"item-detail\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<ul style=\"padding：0px; list-style-type: decimal;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t安全优势：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<p>虚拟安全域划分</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<p>终端访问的多种安全机制</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<p>部署环境的安全，安全服务体系，满足国家等级保护</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t定制化优势：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<p>业务定制化，从虚拟化平台到桌面管理平台，拥有完整的自主知识产品，能够灵活完成业务定制化</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<p>服务定制化，能够根据用户的需求，进行服务范围选择，包括桌面托管服务</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t服务优势：\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<p>提供桌面云环境的部署服务</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<p>提供桌面云的管理服务</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<p>支持对桌面的故障处理和系统扩容等服务</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<p>提供终端设备使用服务</p>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"item-3\" id=\"cp-db\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"item-title\">与传统物理桌面对比</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"item-detail\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<table class=\"db\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<th colspan=\"2\">运营目标</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<th>传统桌面</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<th>桌面云</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<th rowspan=\"2\"><p>数据保护</p><p>数据保密</p></th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td style=\"background-color: #efefef;\">独立的有限保护</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>防止数据丢失</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>集中保护备份</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>难以控制</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>防止数据被窃</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>有效控制</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<th rowspan=\"4\">集中管理</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td style=\"background-color: #efefef;\">可靠的SLA</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>难以保证SLA</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>可预测的SLA</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>降低故障风险</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>软硬件故障频发</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>避免硬件故障</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>提高环境部署效率</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>4小时装机</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>5分钟装机</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>不受地域限制</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>无法实现</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>易云实现</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<th rowspan=\"3\">访问便捷</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td style=\"background-color: #efefef;\">移动设备访问</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>无法实现</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>支持多种移动设备</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>跨地域访问</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>无法实现</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>多手段实现</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>多场景支持</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>无法实现</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>支持任意多场景</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<th colspan=\"2\">节能环保，节省电费</th>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>150w</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<td>10w</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"pager\">\r\n");
      out.write("\t\t<div class=\"wrap2\">\r\n");
      out.write("\t\t\t<div class=\"gx-service\">\r\n");
      out.write("\t\t\t\t<div class=\"float-left\">\r\n");
      out.write("\t\t\t\t\t<div class=\"gx-cypt\" onclick=\"toRedirect(this)\"></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"float-left\">\r\n");
      out.write("\t\t\t\t\t<div class=\"gx-fwyzc\" onclick=\"toRedirect(this)\"></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"float-left\">\r\n");
      out.write("\t\t\t\t\t<div class=\"gx-gywm\" onclick=\"toRedirect(this)\"></div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"clear\"></div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div id=\"Footer\">\r\n");
      out.write("\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../../../include/footer.jsp", out, false);
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>\r\n");
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
