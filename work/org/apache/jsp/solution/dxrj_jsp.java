package org.apache.jsp.solution;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class dxrj_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"Container\">\r\n");
      out.write("\t<div id=\"Header\">\r\n");
      out.write("\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../include/header.jsp", out, false);
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"gx-solution-guanggao\"></div>\r\n");
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
      out.write("/solution/dxrj.jsp\" style=\"color: #2E80E4;\" class=\"link2\">大型软件企业</a>\r\n");
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
      out.write("\t\t\t\t\t\t\t<p>某软件公司是一家在业内处于领先水平的软件外包提供商，并在全国乃至海外拥有分支机构。</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"hr\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"title\">焦点问题</div>\r\n");
      out.write("\t\t\t\t\t\t\t<p>计算资源冗余严重，服务器硬件老化，增加系统宕机风险，出现问题后恢复速度慢，缺少对所有服务器的状态及性能监控等。</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"hr\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"title\">解决方案</div>\r\n");
      out.write("\t\t\t\t\t\t\t<p>独享带宽的专享云为用户提供256个标准计算单元（ECU）的计算资源池（总计10TB的存储持空间）和50M的优质独享宽度。用户可更具实际需求，定义主机的计算能力，动态调整主机配置，设定内外网IP来进行各主机之间的通信。还可通过广州电信高新产业云服务平台，对每台主机进行监控。</p>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"hr\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"title\">客户受益</div>\r\n");
      out.write("\t\t\t\t\t\t\t<p>缩短了硬件维修时长，且不必将机器送修。实现了零时间宕机硬件维护，大大提升了可管理性。</p>\r\n");
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
