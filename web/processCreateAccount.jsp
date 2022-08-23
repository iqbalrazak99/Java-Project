<%-- 
    Document   : processCreateAccount
    Created on : May 2, 2020, 2:05:38 AM
    Author     : IQBAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, com.user.DBConnection, com.user.userDAO"%>
<jsp:useBean id="user" class="com.user.user" scope="request"/>
<jsp:setProperty name="user" property="firstName" value='<%=request.getParameter("firstName")%>'/>
<jsp:setProperty name="user" property="lastName" value='<%=request.getParameter("lastName")%>'/>
<jsp:setProperty name="user" property="email" value='<%=request.getParameter("email")%>'/>
<jsp:setProperty name="user" property="phoneNumber" value='<%=Integer.parseInt(request.getParameter("phoneNumber"))%>'/>
<jsp:setProperty name="user" property="password" value='<%=request.getParameter("password")%>'/>
<jsp:setProperty name="user" property="userType" value='<%=request.getParameter("userType")%>'/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            DBConnection database = new DBConnection();
            userDAO userdao = new userDAO();
            int result = userdao.addUser(user);
            
            if (result > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Pendaftaran berjaya\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("Userlogin.jsp");
                rd.include(request, response);
            }
            database.closeConnection();
        %>
    </body>
</html>
