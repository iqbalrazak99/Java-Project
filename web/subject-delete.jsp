<%-- 
    Document   : subject-delete-process
    Created on : Apr 30, 2020, 10:35:54 PM
    Author     : IQBAL
--%>

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
            delete from subject where subject_id='${param.subject_id}';
        </sql:update>

        <c:if test="${dataresult>=1}">
            <c:redirect url="subject-list.jsp">
                <c:param name="staDeleteMsg" value="Pakej berjaya dipadam."/>
            </c:redirect>
        </c:if>
    </body>
</html>