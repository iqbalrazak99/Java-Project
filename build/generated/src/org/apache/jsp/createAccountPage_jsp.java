package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class createAccountPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header2.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

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
      out.write("        <title>Akaun Baru</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\"\n");
      out.write("              integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color: #e6e6ff\"> \n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\"\n");
      out.write("              integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        <header class=\"masthead mb-auto\">\n");
      out.write("            <div class=\"navbar navbar-light bg-light\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\">\n");
      out.write("                    <img src=\"logo.PNG\" width=\"40\" height=\"40\" class=\"d-inline-block align-top\" alt=\"\">\n");
      out.write("                   Sistem Pengurusan Pusat Tuisyen\n");
      out.write("                </a>\n");
      out.write("                <nav class=\"nav nav-masthead justify-content-center\">\n");
      out.write("                    <a class=\"nav-link\" href=\"firstPage.jsp\">Laman Utama</a>\n");
      out.write("                    <a class=\"nav-link\" href=\"email.html\">Hubungi Kami</a>\n");
      out.write("                </nav>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("    </body>\n");
      out.write("</html>");
      out.write("<br>\n");
      out.write("        <div class=\"card\" style=\"width: 30rem; margin-right: auto; margin-left: auto\">\n");
      out.write("            <h2 class=\"card-header\" style=\"text-align: center\">Cipta Akaun</h2>\n");
      out.write("            <div class=\"card-body\">\n");
      out.write("                <form action=\"processCreateAccount.jsp\" method=\"post\">\n");
      out.write("                    <table>\n");
      out.write("                        <table>\n");
      out.write("                            <td>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label>Nama Awal</label>\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" style=\"text-transform: capitalize;\" name=\"firstName\" placeholder=\"Masukkan Nama Awal\" required/>\n");
      out.write("                                </div>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label>Nama Akhir</label>\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" style=\"text-transform: capitalize;\" name=\"lastName\" placeholder=\"Masukkan Nama Akhir\" required/>\n");
      out.write("                                </div>\n");
      out.write("                            </td>\n");
      out.write("                        </table>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Alamat Email</label>\n");
      out.write("                            <input type=\"email\" class=\"form-control\" name=\"email\" placeholder=\"Alamat Email\" required/>\n");
      out.write("                        </div>\n");
      out.write("                        <table>\n");
      out.write("                            <td>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label>Kata Laluan</label>\n");
      out.write("                                    <input type=\"password\" class=\"form-control\" name=\"password\" id=\"password\" placeholder=\"Kata Laluan\" required/>\n");
      out.write("                                </div>\n");
      out.write("                            </td>\n");
      out.write("                            <td>\n");
      out.write("                                <div class=\"form-group\">\n");
      out.write("                                    <label>Taip semula Kata Laluan</label>\n");
      out.write("                                    <input type=\"password\" class=\"form-control\" name=\"repassword\" id=\"repassword\" placeholder=\"Kata Laluan\" required/>\n");
      out.write("                                </div>\n");
      out.write("                            </td>\n");
      out.write("                        </table>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Nombor Telefon</label>\n");
      out.write("                            <input type=\"text\" class=\"form-control\" name=\"phoneNumber\" value=\"+6\" placeholder=\"010xxx99999\" required/>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <label>Jenis Pengguna</label>\n");
      out.write("                            <select class=\"form-control\" name=\"userType\">\n");
      out.write("                                <option value=\"Ibu Bapa\">Ibu Bapa</option>\n");
      out.write("                                <option value=\"Pelajar\">Pelajar</option>\n");
      out.write("                            </select>\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                        <button type=\"submit\" class=\"btn btn-primary btn-lg btn-block\">Daftar</button>\n");
      out.write("                    </table>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"card-footer\">\n");
      out.write("                <p class=\"text-center\"><a href=\"Userlogin.jsp\">Sudah Mempunyai Akaun? Log Masuk</a></p>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <br><br>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <footer class=\"footer mt-auto py-3\" style=\"background-color: #f2f2f2\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <span class=\"text-muted\">&#169; Sistem Pengurusan Pusat Tuisyen </span>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("    <script>\n");
      out.write("        var password = document.getElementById(\"password\")\n");
      out.write("                , repassword = document.getElementById(\"repassword\");\n");
      out.write("\n");
      out.write("        function validatePassword() {\n");
      out.write("            if (password.value != repassword.value) {\n");
      out.write("                repassword.setCustomValidity(\"Passwords Don't Match\");\n");
      out.write("            } else {\n");
      out.write("                repassword.setCustomValidity('');\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        password.onchange = validatePassword;\n");
      out.write("        repassword.onkeyup = validatePassword;\n");
      out.write("    </script>\n");
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
