package org.apache.jsp.aboutus;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class detail_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(1);
    _jspx_dependants.add("/aboutus/../include/common.jsp");
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
      out.write("\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/pub-util.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/scrolltopcontrol.js\"></script>\r\n");
      out.write("\t\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\t\tjQuery(document).ready(function() {\r\n");
      out.write("\t\t});\r\n");
      out.write("\t</script>\r\n");
      out.write("\t<style type=\"text/css\">\r\n");
      out.write("\t\ttable.tbody {\r\n");
      out.write("\t\t\twidth:100%;\r\n");
      out.write("\t\t\tborder-collapse: collapse;\r\n");
      out.write("\t\t\tborder-spacing: 0;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\ttable.tbody td {\r\n");
      out.write("\t\t\tfont-size:12px;\r\n");
      out.write("\t\t\tvertical-align: top;\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t} \r\n");
      out.write("\t\ttable.tbody td img {\r\n");
      out.write("\t\t\tmargin-top:5px;\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div id=\"Container\">\r\n");
      out.write("\t<div id=\"Header\">\r\n");
      out.write("\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../include/header.jsp", out, false);
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"guanggao ljyy\"></div>\r\n");
      out.write("\t<div style='background: url(\"");
      out.print(contextPath);
      out.write("/images/shadow-bg.jpg\") repeat-x; height:550px; width:100%;'>\r\n");
      out.write("\t\t<div id=\"yy\" style=\"width:940px;margin:0 auto;padding:80px 20px 0px;\">\r\n");
      out.write("\t\t\t<table class=\"tbody\" style=\"border:0px;\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td style=\"vertical-align: top;\"><img src=\"");
      out.print(contextPath);
      out.write("/images/ljyy-yylogo.jpg\"/></td>\r\n");
      out.write("\t\t\t\t\t<td style=\"padding-left:50px;\">\r\n");
      out.write("\t\t\t\t\t\t<div style=\"font-family: '微软雅黑';font-size:30px;padding-bottom: 20px;\">易云</div>\r\n");
      out.write("\t\t\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t\t\t易云是北京中联润通信息技术有限公司面向集团及中小企业客户提供云计算服务的产品，通过扎实稳定的基础架构为用户提供完整IT环境的云服务。帮助企业在不拥有任何物理资源的情况下就可以获得稳定可靠的办公环境、业务环境，同时易云以专业的服务团队金牌服务标准帮助企业解决一切运维难题。\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t\t<table class=\"tbody\" style=\"border:0px;margin-top:80px;\">\r\n");
      out.write("\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t<td style=\"vertical-align: top;\"><img src=\"");
      out.print(contextPath);
      out.write("/images/ljyy-gslogo.jpg\"/></td>\r\n");
      out.write("\t\t\t\t\t<td id=\"ljzlrt\" style=\"padding-left:50px;\">\r\n");
      out.write("\t\t\t\t\t\t<div style=\"font-family: '微软雅黑';font-size:30px;padding-bottom: 20px;\">中联润通</div>\r\n");
      out.write("\t\t\t\t\t\t<div style=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t中联润通成立于2009年，是一家专注于云计算技术研究、产品开发以及业务运营服务的云计算服务运营商。中联润通以最优的产品、最佳的解决方案及个性化的专业服务得到了众多客户的认可。目前，中联润通已与三大运营商：北京联通、天津移动、广州电信合作，分别推出了易享云、移动云、高新产业云服务，并成长为运营商可信赖的重要合作伙伴。公司骨干从中国互联网发展的起步阶段就开始研究IT基础设施的建设和运营管理。经过不断的技术积累，成功打造了中国首个自主知识产权的弹性主机服务平台。自成立之初、中联润通始终在挑战与机遇的磨砺中前行，始终遵循以“市场为导向、客户为核心”的原则，以“创新、求实”为宗旨，以“诚信、合作”为理念，为客户提供标准化、专业化的解决方案与IT增值服务，致力于成为客户最信任的成长伙伴。\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t</tr>\r\n");
      out.write("\t\t\t</table>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"wrap2\">\r\n");
      out.write("\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../include/footerbanner.jsp", out, false);
      out.write("\r\n");
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
