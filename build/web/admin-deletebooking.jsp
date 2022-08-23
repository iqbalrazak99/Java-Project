<%-- 
    Document   : admin-deletebooking
    Created on : Jul 4, 2021, 5:46:57 AM
    Author     : IQBAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistem Pengurusan Tuisyen</title>
    </head>
    <body>
       <sql:setDataSource var="datasource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/tuitionmanagementsystem"
                           user="root" password=""/>
        <sql:update dataSource="${datasource}" var="result">
            delete from booking where booking_id='${param.id}';
        </sql:update>
        <c:if test="${result>=1}">
            <c:redirect url="admin-viewbooking.jsp">
                <c:param name="staDeleteMsg" value="Rekod berjaya dipadam."/>
            </c:redirect>
        </c:if>
    </body>
</html>
