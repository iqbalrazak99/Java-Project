<%-- 
    Document   : userlist
    Created on : Jul 9, 2021, 11:44:25 PM
    Author     : IQBAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Pusat Tuisyen Qiraati</title>
        
 <%-- Header--%>
        <%@include file = "header-test.jsp" %><br><br>
 
     

    </head>
     
      
           

      
        <sql:setDataSource var="datasource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/tuitionmanagementsystem"
                           user="root" password=""/>

        <sql:query dataSource="${datasource}" var="result1">
            select * from user;
        </sql:query>
            
            
               <body class="text-center" style="background-color: #e6e6ff">
        <br>
        <div class="card" style="width: 80rem; margin-right: auto; margin-left: auto">
            <h3 class="card-header">Senarai Pengguna Berdaftar</h3>
            <div class="card-body">
               
            
        <table class="table">

            <thead>
            <tr>

                <td><b>ID Pengguna:</b></td>
                <td><b>Nama Pengguna</b></td>
      
                <td><b>Email:</b></td>
                <td><b>Nombor Telefon</b></td>
               
                <td><b>Jenis Pengguna</b></td>
                <td><b>Tindakan</b></td>
               
            </tr>
            </thead>
            
            <tbody>
            <c:forEach items="${result1.rows}" var="row">
      
                    <tr>
                        <td><c:out value="${row.user_id}"/></td>
                        <td><c:out value="${row.first_name}"/> <c:out value="${row.last_name}"/></td>
                       
                        <td><c:out value="${row.email}"/></td>
                        <td><c:out value="${row.phone_number}"/></td>
                       
                        <td><c:out value="${row.user_type}"/></td>
                       
                             
                                
          

                         <td><a class="btn btn-primary" href="admin-deleteuser.jsp?id=<c:out value="${row.user_id}"/>"
                           onclick="return confirm('Adakah anda pasti untuk padam?')">Padam</a>
                    </td>

                    </tr>
                     </c:forEach>
                  
            </tbody>
            
                </form>
           





        </table>
            </div>
        </div><br><br><br><br><br><br><br><br><br>
        
        <%@include file = "footer.jsp" %>
            </body>
        </html>
             
             