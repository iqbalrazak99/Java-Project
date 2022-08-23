<%-- 
    Document   : subject-list
    Created on : Apr 29, 2020, 9:53:11 PM
    Author     : IQBAL
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
        

        <%--Alert user after record added--%>
        <c:if test="${not empty param.staAddMsg}">
            <script>
                var message = "${param.staAddMsg}";
                alert(message);
            </script>
        </c:if>

        <%--Alert user after record updated--%>
        <c:if test ="${not empty param.staUpdateMsg}">
            <script>
                var message = "${param.staUpdateMsg}";
                alert(message);
            </script>
        </c:if>   

        <%--Alert user after record deleted--%>
        <c:if test ="${not empty param.staDeleteMsg}">
            <script>
                var message = "${param.staDeleteMsg}";
                alert(message);
            </script>  
        </c:if>

        <%-- Header--%>
        <%@include file = "header-test.jsp" %>
        <br>
        <h2 class="text-center">Senarai Servis</h2>
        <br>
        <div class="card" style="width: 60rem; margin-right: auto; margin-left: auto">
            <div class="card-body">
                <%--Connect to database--%>
                <sql:setDataSource var="datasource" driver="com.mysql.jdbc.Driver" 
                                   url="jdbc:mysql://localhost:3306/tuitionmanagementsystem"
                                   user="root" password=""/>

                <%--Retrieve data from database--%>
                <sql:query dataSource="${datasource}" var="dataresult">
                    select * from subject;
                </sql:query>

                    <center><table class="table" align="center" border="2">
                        <tr>
                            <th style="display:none;">SESI</th>
                            <th>Jenis Urusan</th>
                            <th>HARGA(RM)</th>
                            <th>Kaunter Urusan</th>
                            <th>TINDAKAN</th>
                        </tr>
                        <c:forEach var="row" items="${dataresult.rows}">
                            <tr>
                                <td style="display:none; padding-right: 40px"><c:out value="${row.tutor} "/></td>
                                <td style="padding-right: 40px"><c:out value="${row.name}"/></td>
                                <td style="padding-right: 40px"><c:out value="${row.price}"/></td>
                                <td style="padding-right: 40px"><c:out value="${row.subject_id}"/></td>
                                <td style="padding-right: 40px">
                                    <a href="subject-update.jsp?subject_id=<c:out value="${row.subject_id}"/>"
                                        class="btn btn-outline-warning btn-sm">Kemaskini</a>
                                        
                                    <a  href="subject-delete.jsp?subject_id=<c:out value="${row.subject_id}"/>"
                                       onclick="return confirm('Adakah anda pasti untuk padam?')"
                                   class="btn btn-outline-danger btn-sm">Padam</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                    <br><br><a href="subjectAdd.jsp? onclick="return confirm('Adakah anda pasti untuk tambah subjek?')"
                                   class="btn btn-outline-success btn-sm">Tambah Servis</a><br></center><br>
            </div>
        </div>
        <br><br><br><br>
       
    </body>
    <script>function confirmDelete() {
            confirm("Confirm Delete?");
        }
    </script>
</html>