<%-- 
    Document   : LogoutUser
    Created on : May 4, 2020, 8:02:54 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.invalidate();
            RequestDispatcher rd = request.getRequestDispatcher("firstPage.jsp");
            rd.include(request, response);
        %>
    </body>
</html>
