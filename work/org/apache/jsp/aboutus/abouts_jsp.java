package org.apache.jsp.aboutus;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class abouts_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("/js/menu.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/pub-util.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"");
      out.print(contextPath );
      out.write("/js/scrolltopcontrol.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\t\tjQuery(document).ready(function() {\r\n");
      out.write("\t\t\t$(\"#prompt\").click(function(){\r\n");
      out.write("\t\t    \t$(this).hide();\r\n");
      out.write("\t\t    \t$(\"#jianyi\").focus();\r\n");
      out.write("\t\t    });\r\n");
      out.write("\t\t\t$(\"#jianyi\").focus(function(){\r\n");
      out.write("\t\t    \t$(\"#prompt\").hide();\r\n");
      out.write("\t\t    });\r\n");
      out.write("\t\t    $(\"#jianyi\").blur(function () { \r\n");
      out.write("\t\t        if ($(this).val() == \"\") { \r\n");
      out.write("\t\t        \t$(\"#prompt\").show();\r\n");
      out.write("\t\t        } \r\n");
      out.write("\t\t    }); \r\n");
      out.write("\t\t});\r\n");
      out.write("\t    \r\n");
      out.write("\t\t/**\r\n");
      out.write("\t\t * 换张图片\r\n");
      out.write("\t\t */\r\n");
      out.write("\t\tfunction changeImg(){\r\n");
      out.write("\t\t\tvar imgSrc = document.getElementById(\"imgObj\");\r\n");
      out.write("\t\t\tvar src = imgSrc.src;\r\n");
      out.write("\t\t\timgSrc.src = chgUrl(src);\r\n");
      out.write("\t\t\t$(\"#j_captcha\").focus();\r\n");
      out.write("\t\t}\r\n");
      out.write("\t\t//时间戳\r\n");
      out.write("\t\t//为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳\r\n");
      out.write("\t\tfunction chgUrl(url){\r\n");
      out.write("\t\t\tvar timestamp = (new Date()).valueOf();\r\n");
      out.write("\t\t\turl = \"");
      out.print(contextPath);
      out.write("/captcha\";\r\n");
      out.write("\t\t\turl = url + \"?timestamp=\" + timestamp;\r\n");
      out.write("\t\t\treturn url;\r\n");
      out.write("\t\t}\r\n");
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
      out.write("\t<div class=\"guanggao lxwm\"></div>\r\n");
      out.write("\t<div class=\"gx-abouts-pager\">\r\n");
      out.write("\t\t<div class=\"gx-abouts-wrap\">\r\n");
      out.write("\t\t\t<div class=\"gx-abouts-img\"></div>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<div class=\"gx-abouts-advice\">\r\n");
      out.write("\t\t\t\t<div class=\"title\" style=\"font-size:16px;margin-bottom:20px;\">联系电话<span style=\"padding-left:10px;color:#333;\">010-82484458</span></div>\r\n");
      out.write("\t\t\t\t<div class=\"title\"><a name=\"yjjy\"></a>意见/建议</div>\r\n");
      out.write("\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t<from>\r\n");
      out.write("\t\t\t\t\t\t<table>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td style=\"width:30%;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"gx-abouts-inputparent\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<table style=\"border-collapse: collapse;border-spacing: 0px;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td style=\"padding:10px 5px;border-bottom:1px solid #DBDBDB;font-size:12px;\">姓名</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td style=\"padding:10px 2px;border-bottom:1px solid #DBDBDB;font-size:12px;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"textObj\" style=\"border:0;background:url('");
      out.print(contextPath);
      out.write("/images/user.jpg') no-repeat center right transparent;\"/>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td style=\"padding:10px 5px;border-bottom:1px solid #DBDBDB;font-size:12px;\">电子邮箱</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td style=\"padding:10px 2px;border-bottom:1px solid #DBDBDB;font-size:12px;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"textObj\" style=\"border:0;background:url('");
      out.print(contextPath);
      out.write("/images/mail.jpg') no-repeat center right transparent;\"/>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td style=\"padding:10px 5px;border-bottom:1px solid #DBDBDB;font-size:12px;\">手机号码</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td style=\"padding:10px 2px;border-bottom:1px solid #DBDBDB;font-size:12px;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"textObj\"  style=\"border:0;background:url('");
      out.print(contextPath);
      out.write("/images/phone.jpg') no-repeat center right transparent;\"/>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td style=\"padding:10px 5px;font-size:12px;\">验证码</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<td style=\"padding:10px 2px;font-size:12px;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<input type=\"text\" class=\"textObj\"  style=\"border:0;width:55px;\"/>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<img id=\"imgObj\" title=\"看不清？\" src=\"");
      out.print(contextPath );
      out.write("/captcha\"  onclick=\"changeImg()\" style=\"margin:-8px 5px;cursor: pointer;height:25px;width:75px;\" />\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td style=\"position: relative;font-size:12px;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"textarea\"><textarea id=\"jianyi\" name=\"jianyi\" placeholder=\"请输入您的意见/建议\"></textarea></div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<!--[if IE]>   \r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span id=\"prompt\" style=\"position: absolute; top:15px; left:20px;\" class='px vm xg1'>请输入您的意见/建议</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<![endif]--> \r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td style=\"width:30%;\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"button\" class=\"gx-abouts-advice-submit\"/>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</from>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"gx-abouts-wrap2\">\r\n");
      out.write("\t\t\t<div class=\"gx-abouts-service\">\r\n");
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
