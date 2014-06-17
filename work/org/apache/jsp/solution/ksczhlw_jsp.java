package org.apache.jsp.solution;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ksczhlw_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("/solution/kscz.jsp\" style=\"color: #000;\" class=\"link2\">快速成长企业</a>\r\n");
      out.write("\t\t\t\t\t\t \t</li>\r\n");
      out.write("\t\t\t\t\t\t\t<li style=\"border:0px;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"");
      out.print(contextPath);
      out.write("/solution/ksczhlw.jsp\" style=\"color: #2E80E4;\" class=\"link2\">快速成长互联网公司</a>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t</ol>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t\t\t\t<div class=\"faq_body\">\r\n");
      out.write("\t\t\t\t\t<div class=\"help_nav\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"hr\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"title\">场景描述</div>\r\n");
      out.write("\t\t\t\t\t\t\t<p>一个在国内及全球华人网站中领先的旅行互动社区网站，它不仅为喜爱旅行的人提供了一个分享、交流、讨论的平台，也是旅游新手的学习场所。</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"hr\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"title\">焦点问题</div>\r\n");
      out.write("\t\t\t\t\t\t\t<p>初创型企业的前期IT设备投入是一个不小的经济压力，但过多的投入又势必影响公司的发展。并且，企业还需承担包括：数据中心、机柜、耗电量、冷气和人力成本。除此之外，还无法保证重要数据的安全性。</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"hr\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"title\">解决方案</div>\r\n");
      out.write("\t\t\t\t\t\t\t<p>可采用10台运行在云端的云主机和1个负载均衡器服务，内部存储采用1:3的冗余数据备份来确保重要数据的安全性，每台云主机还标配100M的优质共享带宽，配合负载均衡器的使用来保持整个系统运行安全。</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"hr\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"title\">客户受益</div>\r\n");
      out.write("\t\t\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li>软件方面：只需仅仅3分钟便可完成一台主机的创建工作，极大节省了部署时间。</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li>安全方面：每台云主机的业务系统都具备极强的保护措施，业务系统运行中断风险性极小。</li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<li>投入成本：由于按照费用成本方式进行付费，极大缩减了前期的资金投入。</li>\r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
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
