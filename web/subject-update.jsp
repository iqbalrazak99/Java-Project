<%-- 
    Document   : room-update
    Created on : May 29, 2020, 4:44:29 PM
    Author     : Iqbal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page import="com.user.Admin"%>
<%@page import="com.user.AdminDAO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Profile</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body style="background-color: #e6e6ff">
        <%-- Header--%>
        <%@include file = "header3.jsp" %>
        <br>
        <h2 class="text-center">Kemaskini Subjek</h2>
        <br>
        <div class="card" style="width: 25rem; margin-right: auto; margin-left: auto">
            <div class="card-body">

                <%--Connect to database--%>
                <sql:setDataSource var="datasource" driver="com.mysql.jdbc.Driver" 
                                   url="jdbc:mysql://localhost:3306/tuitionmanagementsystem"
                                   user="root" password=""/>

                <%--Retrieve data from database--%>
                <sql:query dataSource="${datasource}" var="dataresult">
                    select * from subject where subject_id='${param.subject_id}';
                </sql:query>

                <center><fieldset style="background-color: whitesmoke">
                        <legend></legend>
                        <form action="subject-update-process.jsp" method="post">
                            <table>
                                <c:forEach var="row" items="${dataresult.rows}">
                                    <tr>
                                        <td></td>
                                        <td><input type="hidden" name="hidid" value="${param.subject_id}"/></td>
                                    </tr>
                                    <tr>
                                        <td>PAKEJ</td>
                                        <td><input type="text" name="subject_id2" value="${param.subject_id}"/></td>
                                    </tr>
                                    <tr>
                                        <td>KELAS</td>
                                        <td><input type="text" name="name" value="${param.name}"/></td>
                                    </tr>
                                    <tr>
                                        <td>SESI</td>
                                        <td><input type="text" name="tutor" value="${param.tutor}"/></td>
                                    </tr>
                                    <tr>
                                        <td>HARGA</td>
                                        <td><input type="text" name="price" value="${param.price}"/></td>
                                    </tr>

                                </c:forEach>
                                    <tr>
                                    <td><label></label></td>
                                    <td><input type="submit" value="Kemaskini" </td>
                                    <td><input type="button" value="Batal" 
                                               onclick="window.location.href = 'subject-list.jsp';
                                                       return false;"/>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </fieldset></center>
            </div>
        </div>
        <br><br><br><br>
        <%--fotter--%>
       
    </body>
    <script>
    </script>
</html>