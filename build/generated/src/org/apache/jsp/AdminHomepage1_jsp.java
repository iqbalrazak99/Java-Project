package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.user.table;
import java.util.List;
import com.user.BookingDAO;

public final class AdminHomepage1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header-test.jsp");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Laman Admin</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\"\n");
      out.write("              integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">\n");
      out.write("    </head>\n");
      out.write("    ");

        String Name = (String) session.getAttribute("Name");
        BookingDAO bookingdao = new BookingDAO();
        List<table> curBooking = bookingdao.currentBooking();
    
      out.write("\n");
      out.write("    <body class=\"text-center\" style=\"background-color: #e6e6ff\">\n");
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
      out.write("          <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        <header class=\"masthead mb-auto\">\n");
      out.write("            <div class=\"navbar navbar-light bg-light\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\">\n");
      out.write("                    <img src=\"logo.PNG\" width=\"40\" height=\"40\" class=\"d-inline-block align-top\" alt=\"\">\n");
      out.write("                    Sistem Pengurusan Pusat Tuisyen\n");
      out.write("                </a>\n");
      out.write("                <nav class=\"nav nav-masthead justify-content-center\">\n");
      out.write("                   <a class=\"nav-link\" href=\"AdminHomepage1.jsp\">Laman Utama</a>\n");
      out.write("                      <a class=\"nav-link\" href=\"AdminProfile.jsp\">Profil Saya</a>\n");
      out.write("                    <a class=\"nav-link\" href=\"subject-list.jsp\">Pakej</a>\n");
      out.write("                    \n");
      out.write("                    <li class=\"nav-item dropdown\">                       \n");
      out.write("                   <a class=\"nav-link dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">Bayaran</a>\n");
      out.write("                   <div class=\"dropdown-menu\">\n");
      out.write("                   <a class=\"dropdown-item\" href=\"listadmin.jsp\">Maklumat Bayaran</a>\n");
      out.write("                   <a class=\"dropdown-item\" href=\"admin-viewbooking.jsp\">Ubah Status Bayaran</a>\n");
      out.write("                   </li>\n");
      out.write("                   \n");
      out.write("                  <a class=\"nav-link\" href=\"logout.jsp\">Log Keluar</a>\n");
      out.write("            </nav>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("<br>\n");
      out.write("        <h2>Selamat Datang ke Pusat Tuisyen Qiraati , ");
      out.print(Name);
      out.write("</h2>\n");
      out.write("        <br>\n");
      out.write("     \n");
      out.write("        <table style=\"margin-right: auto; margin-left: auto\"\">\n");
      out.write("            <tr>\n");
      out.write("                <td>\n");
      out.write("                    <div class=\"card\" style=\"width: 16rem;\">\n");
      out.write("                        <a href=\"AdminHomepage2.jsp\"><img src=\"tempahan.png\" class=\"img-fluid\" alt=\"Responsive image\"></a>\n");
      out.write("                    </div>\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    <div class=\"card\" style=\"width: 16rem;\">\n");
      out.write("                        <a href=\"subject-list.jsp\"><img src=\"urus.png\"  class=\"img-fluid\" alt=\"Responsive image\"></a>\n");
      out.write("                    </div>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("              <tr>\n");
      out.write("                <td>\n");
      out.write("                    <div class=\"card\" style=\"width: 16rem;\">\n");
      out.write("                        <a href=\"admin-viewbooking.jsp\"><img src=\"Bayar.png\" class=\"img-fluid\" alt=\"Responsive image\"></a>\n");
      out.write("                    </div>\n");
      out.write("                </td>\n");
      out.write("                <td>\n");
      out.write("                    <div class=\"card\" style=\"width: 16rem;\">\n");
      out.write("                        <a href=\"AdminProfile.jsp\"><img src=\"profil.png\"  class=\"img-fluid\" alt=\"Responsive image\"></a>\n");
      out.write("                    </div>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("\n");
      out.write("            ");
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
