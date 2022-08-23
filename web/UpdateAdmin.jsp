<%-- 
    Document   : UpdateAdmin
    Created on : May 4, 2020, 7:24:51 PM
    Author     : IQBAL
--%>

<%@page import="com.user.AdminDAO"%>
<%@page import="com.user.Admin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int AdminId = (Integer) session.getAttribute("adminId");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            int phoneNumber = Integer.parseInt(request.getParameter("phoneNumber"));

            Admin admin = new Admin();
            admin.setAdminId(AdminId);
            admin.setEmail(email);
            admin.setPassword(password);
            admin.setPhoneNumber(phoneNumber);

            AdminDAO admindao = new AdminDAO();
            int result = admindao.UpdateAdmin(admin);

            if (result > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Rekod berjaya dikemaskini\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("AdminProfile.jsp");
                rd.include(request, response);
            }

        %>
    </body>
</html>
