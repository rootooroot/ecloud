package org.apache.jsp.include;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

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
      out.write("<link style=\"text/css\" rel=\"stylesheet\" href=\"");
      out.print(contextPath );
      out.write("/css/com.css\"></link>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/seed-min.js\" data-config=\"{combine:true}\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/header/dom/base-min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/header/event/base-min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/header/event/dom/base-min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/header/event/dom/focusin-min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/header/event/dom/shake-min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/header/anim/base-min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/header/anim/timer-min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/header/anim/transition-min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/header/anim-min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/header/promise-min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/header/node-min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<script src=\"http://g.tbcdn.cn/kissy/k/1.4.3/seed-min.js\" data-config=\"{combine:true}\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/header/index-kissy.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/header/header.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<header>\r\n");
      out.write("\t<div id=\"J_Headerwrap\" class=\"header-wrap\" data-spm=\"2\">\r\n");
      out.write("\t\t<div class=\"header-inner y-row\">\r\n");
      out.write("\t\t\t<div class=\"y-span11 \">\r\n");
      out.write("\t\t\t\t<a id=\"J_logo\" class=\"logo\" data-ga=\"导航.主体.易云\" href=\"http://www.china-ops.com\"> <span class=\"icon-logo logo\"></span></a>\r\n");
      out.write("\t\t\t\t<nav id=\"J_Nav\">\r\n");
      out.write("\t\t\t\t\t<ul id=\"J_Menu\">\r\n");
      out.write("\t\t\t\t\t\t<li class=\"nav-1\" data-menu=\"sub_menu_1\" data-case=\"one\">\r\n");
      out.write("\t\t\t\t\t\t\t<h2><a href=\"");
      out.print(contextPath );
      out.write("/index.jsp\">首页</a></h2>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"nav-2\" data-menu=\"sub_menu_2\" data-case=\"one\">\r\n");
      out.write("\t\t\t\t\t\t\t<h2>产品服务</h2>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"nav-3\" data-menu=\"sub_menu_3\" data-case=\"one\">\r\n");
      out.write("\t\t\t\t\t\t\t<h2>解决方案</h2>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"nav-4\" data-menu=\"sub_menu_4\" data-case=\"three\">\r\n");
      out.write("\t\t\t\t\t\t\t<h2>帮助支持</h2>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"nav-5\" data-menu=\"sub_menu_5\" data-case=\"two\">\r\n");
      out.write("\t\t\t\t\t\t\t<h2>关于我们</h2>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</nav>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div id=\"J_subMenus\" class=\"sub-menus\" style=\"top: 99px;\" data-spm=\"201\">\r\n");
      out.write("\t\t<div id=\"sub_menu_1\" class=\"sub-menu\"  style=\"background:transparent;\"><dl></dl></div>\r\n");
      out.write("\t\t<div id=\"sub_menu_2\" class=\"sub-menu\">\r\n");
      out.write("\t\t\t<dl class=\"first\" style=\"margin-left: 95.5px;\">\r\n");
      out.write("\t\t\t\t<dt>计算即服务<br>CaaS</dt>\r\n");
      out.write("\t\t\t\t<dd>\r\n");
      out.write("\t\t\t\t\t<a data-ga=\"导航.产品服务.云主机\" href=\"");
      out.print(contextPath);
      out.write("/product/caas/yunzhuji/\">云主机</a>\r\n");
      out.write("\t\t\t\t</dd>\r\n");
      out.write("\t\t\t\t<dd>\r\n");
      out.write("\t\t\t\t\t<a data-ga=\"导航.产品服务.专享云\" href=\"");
      out.print(contextPath);
      out.write("/product/caas/zhuanxiangyun/\">专享云</a>\r\n");
      out.write("\t\t\t\t</dd>\r\n");
      out.write("\t\t\t</dl>\r\n");
      out.write("\t\t\t<dl>\r\n");
      out.write("\t\t\t\t<dt>存储即服务<br>STaaS</dt>\r\n");
      out.write("\t\t\t\t<dd>\r\n");
      out.write("\t\t\t\t\t<a data-ga=\"导航.产品服务.云存储\" href=\"");
      out.print(contextPath);
      out.write("/product/staas/yuncunchu/\">云存储</a>\r\n");
      out.write("\t\t\t\t</dd>\r\n");
      out.write("\t\t\t</dl>\r\n");
      out.write("\t\t\t<dl>\r\n");
      out.write("\t\t\t\t<dt>桌面即服务<br>DaaS</dt>\r\n");
      out.write("\t\t\t\t<dd>\r\n");
      out.write("\t\t\t\t\t<a data-ga=\"导航.产品服务.桌面云\" href=\"");
      out.print(contextPath);
      out.write("/product/daas/yunzhuomian/\">桌面云</a>\r\n");
      out.write("\t\t\t\t</dd>\r\n");
      out.write("\t\t\t</dl>\r\n");
      out.write("\t\t\t<dl>\r\n");
      out.write("\t\t\t\t<dt>安全即服务<br>SECaaS</dt>\r\n");
      out.write("\t\t\t\t<dd>\r\n");
      out.write("\t\t\t\t\t<a data-ga=\"导航.产品服务.安全云\" href=\"");
      out.print(contextPath);
      out.write("/product/secaas/safecloud/\">安全云</a>\r\n");
      out.write("\t\t\t\t</dd>\r\n");
      out.write("\t\t\t</dl>\r\n");
      out.write("\t\t\t<dl>\r\n");
      out.write("\t\t\t\t<dt>资讯即服务<br>INFaaS</dt>\r\n");
      out.write("\t\t\t\t   <dd>\r\n");
      out.write("\t\t\t\t\t   <a data-ga=\"导航.产品服务.云资讯\" href=\"");
      out.print(contextPath);
      out.write("/product/infaas/yunzixun/\">云资讯</a>\r\n");
      out.write("\t\t\t\t   </dd>\r\n");
      out.write("\t\t\t</dl>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div id=\"sub_menu_3\" class=\"sub-menu\">\r\n");
      out.write("\t\t\t<dl class=\"first\" style=\"margin-left: 187.5px;\">\r\n");
      out.write("\t\t\t\t<dd>\r\n");
      out.write("\t\t\t\t\t<a data-ga=\"导航.解决方案.政府客户\" href=\"");
      out.print(contextPath);
      out.write("/solution/zf.jsp\">政府客户</a>\r\n");
      out.write("\t\t\t\t</dd>\r\n");
      out.write("\t\t\t</dl>\r\n");
      out.write("\t\t\t<dl>\r\n");
      out.write("\t\t\t\t<dd>\r\n");
      out.write("\t\t\t\t\t<a data-ga=\"导航.解决方案.大型软件企业\" href=\"");
      out.print(contextPath);
      out.write("/solution/dxrj.jsp\">大型软件企业</a>\r\n");
      out.write("\t\t\t\t</dd>\r\n");
      out.write("\t\t\t</dl>\r\n");
      out.write("\t\t\t<dl>\r\n");
      out.write("\t\t\t\t<dd>\r\n");
      out.write("\t\t\t\t\t<a data-ga=\"导航.解决方案.快速成长企业\" href=\"");
      out.print(contextPath);
      out.write("/solution/kscz.jsp\">快速成长企业</a>\r\n");
      out.write("\t\t\t\t</dd>\r\n");
      out.write("\t\t\t</dl>\r\n");
      out.write("\t\t\t<dl>\r\n");
      out.write("\t\t\t\t<dd>\r\n");
      out.write("\t\t\t\t\t<a data-ga=\"导航.解决方案.快速成长互联网公司\" href=\"");
      out.print(contextPath);
      out.write("/solution/ksczhlw.jsp\">快速成长互联网公司</a>\r\n");
      out.write("\t\t\t\t</dd>\r\n");
      out.write("\t\t\t</dl>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div id=\"sub_menu_4\" class=\"sub-menu\">\r\n");
      out.write("\t\t\t<dl class=\"first\" style=\"margin-left: 263.5px;\">\r\n");
      out.write("\t\t\t\t<dd>\r\n");
      out.write("\t\t\t\t\t<a data-ga=\"导航.帮助支持.选择理由\" href=\"");
      out.print(contextPath);
      out.write("/help/select-reson.jsp\">选择理由</a>\r\n");
      out.write("\t\t\t\t</dd>\r\n");
      out.write("\t\t\t</dl>\r\n");
      out.write("\t\t\t   <dl>\r\n");
      out.write("\t\t\t\t<dd>\r\n");
      out.write("\t\t\t\t\t<a data-ga=\"导航.帮助支持.常见问题\" href=\"");
      out.print(contextPath );
      out.write("/help/faq.jsp\">常见问题</a>\r\n");
      out.write("\t\t\t\t</dd>\r\n");
      out.write("\t\t\t</dl>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div id=\"sub_menu_5\" class=\"sub-menu\">\r\n");
      out.write("\t\t\t<dl class=\"first\" style=\"margin-left: 663.5px;\">\r\n");
      out.write("\t\t\t\t<dd>\r\n");
      out.write("\t\t\t\t\t<a data-ga=\"导航.关于我们.了解易云\" href=\"");
      out.print(contextPath );
      out.write("/aboutus/detail.jsp\">了解易云</a>\r\n");
      out.write("\t\t\t\t</dd>\r\n");
      out.write("\t\t\t</dl>\r\n");
      out.write("\t\t\t<dl>\r\n");
      out.write("\t\t\t\t<dd>\r\n");
      out.write("\t\t\t\t\t<a data-ga=\"导航.关于我们.联系我们\" href=\"");
      out.print(contextPath );
      out.write("/aboutus/abouts.jsp\">联系我们</a>\r\n");
      out.write("\t\t\t\t</dd>\r\n");
      out.write("\t\t\t</dl>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</header>\r\n");
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
