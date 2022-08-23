<%-- 
    Document   : success
    Created on : Jun 30, 2021, 8:20:12 AM
    Author     : IQBAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success Page</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
       <body style="background-color: #e6e6ff">
        <%-- Header--%>
        <%@include file = "header.jsp" %>
    <body>
    <center>
        <c:if test="${requestScope.msg!=null}">
        <h3><c:out value="${requestScope.msg}"></c:out></h3>
        </c:if><br><br>
        <c:if test="${sessionScope.fileName!=null}">
            <c:set var = "file" scope = "session" value = "${sessionScope.fileName}"/>  
        </c:if>
         <a href = "<c:url value = "DownloadServlet?fileName=${file}"/>" class="btn btn-outline-success btn-sm">Muat Turun</a>&nbsp;&nbsp;&nbsp;
         <a href = "<c:url value = "file-list.jsp"/>" class="btn btn-outline-warning btn-sm" >Lihat Senarai</a>
    </center>
    </body>
</html>
