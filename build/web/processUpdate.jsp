<%-- 
    Document   : processUpdate
    Created on : May 1, 2020, 5:33:00 PM
    Author     : IQBAL
--%>

<%@page import="com.user.userDAO"%>
<%@page import="com.user.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int userId = (Integer)session.getAttribute("userId");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            int phoneNumber = Integer.parseInt(request.getParameter("phoneNumber"));
            
            user user = new user();
            user.setUserId(userId);
            user.setEmail(email);
            user.setPassword(password);
            user.setPhoneNumber(phoneNumber);
            
            userDAO userdao = new userDAO();
            
            int result = userdao.updateUser(user);
            
             if(result > 0){
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Profil berjaya dikemaskini\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("HomePage.jsp");
                rd.include(request,response);
            }

        %>
    </body>
</html>
