<%-- 
    Document   : subject-add-process
    Created on : Apr 30, 2020, 5:42:03 PM
    Author     : Iqbal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="CSS.css">
    </head>
    <body>
        <sql:setDataSource var="datasource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/tuitionmanagementsystem"
                           user="root" password="" />

        <sql:update dataSource="${datasource}" var="dataresult">
            insert into subject(subject_id, name, price, tutor) value(?,?,?,?);
            <sql:param value="${param.txtsubject_id}"/>
            <sql:param value="${param.txtname}"/>
            <sql:param value="${param.txtprice}"/>
            <sql:param value="${param.txttutor}"/>
        </sql:update>

        <c:if test="${dataresult>=1}">
            <c:redirect url="subject-list.jsp">
                <c:param name="staAddMsg" value="Rekod berjaya ditambah." />
            </c:redirect>
        </c:if>
    </body>
</html>