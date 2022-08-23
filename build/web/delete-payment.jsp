<%-- 
    Document   : delete-payment
    Created on : Jul 3, 2021, 5:41:26 AM
    Author     : IQBAL
--%>
<%@page import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="datasource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/tuitionmanagementsystem"
                           user="root" password="" />

        <sql:update dataSource="${datasource}" var="dataresult">
            delete from employee where id='${param.id}';
        </sql:update>

        <c:if test="${dataresult>=1}">
            <c:redirect url="file-list.jsp">
                <c:param name="staDeleteMsg" value="Rekod berjaya dipadam."/>
            </c:redirect>
        </c:if>
    </body>
</html> 




