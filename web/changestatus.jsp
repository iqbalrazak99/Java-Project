<%-- 
    Document   : changestatus
    Created on : Jul 3, 2021, 9:11:18 AM
    Author     : IQBAL
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CAR RENTAL SYSTEM</title>
        <sql:setDataSource var="datasource" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/tuitionmanagementsystem"
                   user="root" password=""/>
        <%
            int id =Integer.parseInt(request.getParameter("id"));
            %>
                    
         
         <sql:update dataSource="${datasource}" var="result1">
        update booking set status=? where booking_id='<%=id%>';
        <sql:param value="${param.status}"/>
        
                </sql:update>
        <c:if test="${result1 > 0}">
                <c:redirect url="admin-viewbooking.jsp">
                
                </c:redirect>
            </c:if>
        

         
    </head>
    <body>
        
    </body>
</html>
