<%-- 
    Document   : processAdminLogin
    Created on : May 4, 2020, 5:09:57 PM
    Author     : IQBAL
--%>

<%@page import="com.user.Admin"%>
<%@page import="com.user.AdminDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            AdminDAO userdao = new AdminDAO();
            Admin admin = userdao.login(email, password);
            int adminId = admin.getAdminId();
            String Name = admin.getAdminName();
            
            session.setAttribute("adminId", adminId);
            session.setAttribute("Name", Name);

            if (adminId == 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Anda telah memasukkan kata laluan yang salah. Sila cuba lagi\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("AdminLogin.jsp");
                rd.include(request, response);
            } else {
                RequestDispatcher rd = request.getRequestDispatcher("AdminHomepage1.jsp");
                rd.include(request, response);
            }
        %>
    </body>
</html>
