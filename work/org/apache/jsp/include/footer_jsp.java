package org.apache.jsp.include;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<style>\n");
      out.write("<!--\r\n");
      out.write("\t#Footer { width:100%; height:66px; background: url(\"");
      out.print(contextPath);
      out.write("/images/footer-bg.jpg\") repeat-x center top #EEE; }\r\n");
      out.write("\t#Footer .bottom { line-height:60px; width:980px; margin:0 auto; }\n");
      out.write("\t.float-right {\r\n");
      out.write("\t\tfloat:right;\r\n");
      out.write("\t}\r\n");
      out.write("\t.bottom-inlineBlock {\r\n");
      out.write("\t\tdisplay: inline-block;\r\n");
      out.write("\t\tpadding-right:10px;\r\n");
      out.write("\t\tcursor: pointer;\r\n");
      out.write("\t}\r\n");
      out.write("\t.bottom a {\r\n");
      out.write("\t\ttext-decoration: none;\r\n");
      out.write("\t}\r\n");
      out.write("\t.bottom a:hover {\r\n");
      out.write("\t\ttext-decoration: underline;\r\n");
      out.write("\t\tcolor:#2e83e8;\r\n");
      out.write("\t}\n");
      out.write("-->\n");
      out.write("</style>\r\n");
      out.write("<div class=\"bottom\">\r\n");
      out.write("\t<div class=\"float-left\">版权所有：北京中联润通信息技术有限公司</div>\r\n");
      out.write("\t<div class=\"float-right\" style=\"display: none;\">\r\n");
      out.write("\t\t<div class=\"bottom-inlineBlock\"><a href=\"");
      out.print(contextPath );
      out.write("/abouts.jsp\">联系我们</a></div>\r\n");
      out.write("\t\t<div class=\"bottom-inlineBlock\"><a href=\"#\">合作伙伴</a></div>\r\n");
      out.write("\t\t<div class=\"bottom-inlineBlock\"><a href=\"#\">招聘英才</a></div>\r\n");
      out.write("\t\t<div class=\"bottom-inlineBlock\"><a href=\"#\">网站声明</a></div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</div>");
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
