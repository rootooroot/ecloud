package org.apache.jsp.solution;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class kscz_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(1);
    _jspx_dependants.add("/solution/../include/common.jsp");
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
      out.write("<head>\r\n");
      out.write("\t<title>中联润通易云服务平台</title>\r\n");
      out.write("\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=9\"/>\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("\t<link style=\"text/css\" rel=\"stylesheet\" href=\"");
      out.print(contextPath );
      out.write("/css/Layout.css\"></link>\r\n");
      out.write("\t<link style=\"text/css\" rel=\"stylesheet\" href=\"");
      out.print(contextPath );
      out.write("/css/index.css\"></link>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/jquery-1.8.2.js\"></script>\r\n");
      out.write("\t");
      out.write("<script>\r\n");
      out.write("\tvar contextPath = \"");
      out.print(request.getContextPath() );
      out.write("\";\r\n");
      out.write("</script>");
      out.write('\r');
      out.write('\n');
      out.write('	');
      out.write("\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/scrolltopcontrol.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\t\tjQuery(document).ready(function() {\r\n");
      out.write("\t\t});\r\n");
      out.write("\t</script>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"Container\">\r\n");
      out.write("\t<div id=\"Header\">\r\n");
      out.write("\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../include/header.jsp", out, false);
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\t<div class=\"gx-solution-guanggao\"></div>\r\n");
      out.write("\t<div class=\"gx-solution\">\r\n");
      out.write("\t\t<div class=\"body\" style=\"overflow:hidden;overflow: hidden;\">\r\n");
      out.write("\t\t\t<div class=\"faq_box\">\r\n");
      out.write("\t\t\t\t<div class=\"help_left\" style=\"position: relative;\">\r\n");
      out.write("\t\t\t\t\t<!-- 导航 begin -->\r\n");
      out.write("\t\t\t\t\t<div class=\"faq_class\">\r\n");
      out.write("\t\t\t\t\t\t<ol style=\"margin-bottom: 0px;margin-top: 0px;\">\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"");
      out.print(contextPath);
      out.write("/solution/zf.jsp\" style=\"color: #000;\" class=\"link2\">政府客户</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"");
      out.print(contextPath);
      out.write("/solution/dxrj.jsp\" style=\"color: #000;\" class=\"link2\">大型软件企业</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"");
      out.print(contextPath);
      out.write("/solution/kscz.jsp\" style=\"color: #2E80E4;\" class=\"link2\">快速成长企业</a>\r\n");
      out.write("\t\t\t\t\t\t \t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li style=\"border:0px;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"");
      out.print(contextPath);
      out.write("/solution/ksczhlw.jsp\" style=\"color: #000;\" class=\"link2\">快速成长互联网公司</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t</ol>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t\t\t\t<div class=\"faq_body\">\r\n");
      out.write("\t\t\t\t\t<div class=\"help_nav\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"hr\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"title\">场景描述</div>\r\n");
      out.write("\t\t\t\t\t\t\t<p>某超市在运营的二十余年间，已发展成为拥有2000多家分店的，分布全国的连锁企业。</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"hr\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"title\">焦点问题</div>\r\n");
      out.write("\t\t\t\t\t\t\t<p>分支机构地域跨度大、协调难度大、终端分散而无法了解IT资产状态、网络接入质量有别，终端和重要数据缺少备份，维护人员少，工作量巨大。</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"hr\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"title\">解决方案</div>\r\n");
      out.write("\t\t\t\t\t\t\t<p>为用户提供500台云主机，每台云主机配备100M的优质共享带宽资源和网络防火墙。各区域管理员可通过广州电信高新产业云管理平台，对辖区内的云主机远程进行重启、克隆、备份等操作。分店店员登录后，即可使用。</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"hr\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"title\">客户受益</div>\r\n");
      out.write("\t\t\t\t\t\t\t<p>有效解决了终端难管理的问题，降低了IT桌面支持成本和维护成本，将因环境和人为因素造成的故障风险率降至最低。让所有数据实现集中保存，实时备份的同时也保证了数据的安全性。</p>\r\n");
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
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../include/footer.jsp", out, false);
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
