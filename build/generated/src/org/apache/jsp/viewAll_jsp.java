package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;

public final class viewAll_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/header.jsp");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Maklumat Bayaran</title>\n");
      out.write("        \n");
      out.write("          <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\"\n");
      out.write("              integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("      ");
      out.write("\n");
      out.write("            ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("        <head>\n");
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
      out.write("                    <a class=\"nav-link\" href=\"HomePage1.jsp\">Laman Utama</a>\n");
      out.write("                    <a class=\"nav-link\" href=\"ViewProfile.jsp\">Profil Saya</a>\n");
      out.write("                    <a class=\"nav-link\" href=\"myBookingPage.jsp\">Tempahan Saya</a>\n");
      out.write("                    <li class=\"nav-item dropdown\">                       \n");
      out.write("                   <a class=\"nav-link dropdown-toggle\" data-toggle=\"dropdown\" href=\"#\">Bayaran</a>\n");
      out.write("                   <div class=\"dropdown-menu\">\n");
      out.write("                   <a class=\"dropdown-item\" href=\"index.jsp\">Bayar</a>\n");
      out.write("                   <a class=\"dropdown-item\" href=\"file-list.jsp\">Senarai Bayaran</a>\n");
      out.write("                   </li>\n");
      out.write("                   ");
      out.write("\n");
      out.write("                    <a class=\"nav-link\" href=\"logout.jsp\">Log Keluar</a>\n");
      out.write("                    \n");
      out.write("                </nav>\n");
      out.write("            </div>\n");
      out.write("        </header>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("    <body style=\"background-color: #e6e6ff\">\n");
      out.write("        <br><br><br><br>\n");
      out.write("    <center>\n");
      out.write("          <div class=\"card\" style=\"width: 80rem; margin-right: auto; margin-left: auto\">\n");
      out.write("              <h3 class=\"card-header\">Maklumat Bayaran</h3>\n");
      out.write("              <div class=\"card-body\"></div>\n");
      out.write("    <body>\n");
      out.write("    <body>\n");
      out.write("        ");

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore", "root", "");
                Statement st = con.createStatement();
                String sql = "SELECT * FROM image_table";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
                    int id = rs.getInt("id");
                    String firstname = rs.getString("firstname");
                    String lastname = rs.getString("lastname");
                    String filename = rs.getString("filename");
                    String path = rs.getString("path");
        
      out.write("\n");
      out.write("\n");
      out.write("        <table style=\"width:100%\" border=\"2\">\n");
      out.write("            <tr>\n");
      out.write("                <th>Id</th>\n");
      out.write("                <th>First Name</th>\n");
      out.write("                <th>Last Name</th>\n");
      out.write("                <th>Image</th>\n");
      out.write("                <th style=\"display: none;\">Path</th>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>");
      out.print(id);
      out.write("</td>\n");
      out.write("                <td>");
      out.print(firstname);
      out.write("</td>\n");
      out.write("                <td>");
      out.print(lastname);
      out.write("</td>\n");
      out.write("                <td><image src=\"");
      out.print(filename);
      out.write("\" width=\"200\" height=\"20\"/></td>\n");
      out.write("                <td style=\"display: none;\">");
      out.print(path);
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("        ");

                }
            } catch (Exception e) {
                out.println(e);
            }
        
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
