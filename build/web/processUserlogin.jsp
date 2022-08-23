<%-- 
    Document   : processUserlogin
    Created on : May 2, 2020, 11:06:07 AM
    Author     : IQBAL
--%>

<%@page import="com.user.user"%>
<%@page import="com.user.userDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            userDAO userdao = new userDAO();
            user user = userdao.login(email, password);
            int userId = user.getUserId();
            String firstName = user.getFirstName();
            String lastName = user.getLastName();
            session.setAttribute("userId", userId);
            session.setAttribute("firstName", firstName);
            session.setAttribute("lastName", lastName);

            if (userId == 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Anda telah memasukkan kata laluan yang salah. Sila cuba lagi.\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("Userlogin.jsp");
                rd.include(request, response);
            } else {
                RequestDispatcher rd = request.getRequestDispatcher("HomePage1.jsp");
                rd.include(request, response);
            }
        %>
    </body>
</html>
