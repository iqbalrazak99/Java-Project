package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class firstPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\"\n");
      out.write("              integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">\n");
      out.write("        <title>Sistem Pengurusan Pusat Tuisyen</title>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"text-center\" style=\"background-color: #CED2D0\">\n");
      out.write("        \n");
      out.write("        <br><br>\n");
      out.write("        <img src=\"gogo.png\" width=\"200\" height=\"200\" class=\"d-inline-block align-top\" alt=\"\">\n");
      out.write("        <br><br>\n");
      out.write("        <h3>Selamat Datang ke E-temujanji</h3>\n");
      out.write("        <br><br><br>\n");
      out.write("        <table style=\"margin-right: auto; margin-left: auto\"\">\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <div class=\"card\" style=\"width: 18rem;\">\n");
      out.write("                        <a href=\"AdminLogin.jsp\"><img src=\"Admin.png\" class=\"img-fluid\" alt=\"Responsive image\"></a>\n");
      out.write("                    </div>\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    <div class=\"card\" style=\"width: 18rem;\">\n");
      out.write("                        <a href=\"Userlogin.jsp\"><img src=\"User.png\"  class=\"img-fluid\" alt=\"Responsive image\"></a>\n");
      out.write("                    </div>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("        <br><br><br><br><br>\n");
      out.write("        <footer class=\"footer mt-auto py-3\" style=\"background-color: #f2f2f2\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <span class=\"text-muted\">&#169; Sistem E-temujanji </span>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
