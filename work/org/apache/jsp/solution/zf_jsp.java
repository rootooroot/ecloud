package org.apache.jsp.solution;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class zf_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("/solution/zf.jsp\" style=\"color: #2E80E4;\" class=\"link2\">政府客户</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"");
      out.print(contextPath);
      out.write("/solution/dxrj.jsp\" style=\"color: #000;\" class=\"link2\">大型软件企业</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"");
      out.print(contextPath);
      out.write("/solution/kscz.jsp\" style=\"color: #000;\" class=\"link2\">快速成长企业</a>\r\n");
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
      out.write("\t\t\t\t\t\t\t<p>某政府机构需要建设综合管理信息系统应用支撑平台，为该机构的内部组织和外部公众执行统一的权限管理、资源控制、数据交换、应用集成和工作流监控等功能，为业务应用的流程一体化提供技术支持，避免各业务系统对功能的重复开发。</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"hr\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"title\">焦点问题</div>\r\n");
      out.write("\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li>业务的全球化发展，人员与分支机构的骤增；</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li>企业架构需要“外部网”和“内部网”相结合的方式进行；</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li>希望以超强的网络安全级别和高弹性的服务能力，来防止网络恶意攻击或因社会热点以及新政策公布而导致的访问量突升。</li>\r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"hr\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"title\">解决方案</div>\r\n");
      out.write("\t\t\t\t\t\t\t<p>为用户提供云主机和专享云两项服务，以租赁的方式建立“内外部云系统”。负载均衡器的使用让系统具备高可靠性，可用率指标达99.9%以上（含），安全冗余的计算，1:3的全数据备份存储及多层保护的网络架构。物理防火墙等网络设备的托管服务增强抗攻击能力。同时，还提供网络、硬件、软件、应用、数据的全面外包服务。</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"hr\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"title\">客户受益</div>\r\n");
      out.write("\t\t\t\t\t\t\t<p>此方案中，用户有一次投入转为分次付费，这不仅降低了初期建设成本，并实现了整体的成本节约。用户根据使用量需求，租用必要的服务器和存储资源，可以避免不必要的资源浪费，同时还能解决访问量突升时快速扩容的问题。</p>\r\n");
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
