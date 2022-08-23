<%-- 
    Document   : subject-update-process
    Created on : Apr 30, 2020, 11:15:55 PM
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
         
         <sql:update dataSource="${datasource}" var="result">
             update subject set  subject_id=?, name=?, price=?, tutor=? where subject_id='${param.hidid}'
             <sql:param value="${param.subject_id2}"/>
            <sql:param value="${param.name}"/>
            <sql:param value="${param.price}"/>
            <sql:param value="${param.tutor}"/>
         </sql:update>
            <c:if test="${result>=1}">
                <c:redirect url="subject-list.jsp">
                    <c:param name="staUpdateMsg" value="Rekod berjaya dikemas kini."/>
                </c:redirect>
            </c:if>
    </body>
</html>