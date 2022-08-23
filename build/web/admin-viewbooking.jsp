<%-- 
    Document   : admin-viewbooking
    Created on : Jul 3, 2021, 8:07:28 AM
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
            select * from booking where status='Menunggu Bayaran';
        </sql:query>
        <sql:query dataSource="${datasource}" var="result2">
            select * from booking where status='DITERIMA';
        </sql:query>
        <sql:query dataSource="${datasource}" var="result3">
            select * from booking where status='Selesai';
        </sql:query>

<body class="text-center" style="background-color: #e6e6ff">
        <br>
        <div class="card" style="width: 80rem; margin-right: auto; margin-left: auto">
            <h3 class="card-header">Senarai Tempahan yang Diterima</h3>
            <div class="card-body">
               
          
               
        <table class="table" border="2">


            <tr>

                <td><b>Booking ID:</b></td>
                <td><b>booking type:</b></td>
                <td><b>tarikh:</b></td>
                <td><b>Masa:</b></td>
                <td><b>Pakej</b></td>
                <td><b>Nama Pengguna</b></td>
                  <td><b>Status:</b></td>
               <td><b>Tindakan</b></td>
           
            </tr>


            <c:forEach items="${result2.rows}" var="row">
                <form action="changestatus.jsp?id=<c:out value='${row.booking_id}'/>" method="post">
                    <tr>
                        <td><c:out value="${row.booking_id}"/></td>
                        <td><c:out value="${row.booking_type}"/></td>
                        <td><c:out value="${row.date}"/></td>
                        <td><c:out value="${row.time}"/></td>
                        <td><c:out value="${row.subject_id}"/></td>
                        <td><c:out value="${row.email}"/></td>
                       <td><select name='status'>
                                <option value='<c:out value="${row.status}"/>' hidden selected><c:out value="${row.status}"/></option>
                                <option value="DITERIMA">Diterima</option>
                                <option value="Menunggu Bayaran">Menunggu Bayaran</option>
                                <option value="Selesai">Selesai</option>
                            </select></td>
                        <td>

                            <input type="Submit" class="btn btn-primary" value="Kemas kini"/>

                        </td>

                    </tr>
                </form>
            </c:forEach>





        </table>
            </div></div></body>

   
       <body class="text-center" style="background-color: #e6e6ff">
        <br>
        <div class="card" style="width: 80rem; margin-right: auto; margin-left: auto">
            <h3 class="card-header">Senarai Menunggu Bayaran</h3>
            <div class="card-body">
               
            
               
        <table class="table" border="2">


            <tr>

                <td><b>Booking ID:</b></td>
                <td><b>booking type:</b></td>
                <td><b>tarikh:</b></td>
                <td><b>Masa:</b></td>
                <td><b>Pakej</b></td>
                <td><b>Nama Pengguna</b></td>
                <td><b>Status:</b></td>
                <td><b>Tindakan</b></td>
               
            </tr>


            <c:forEach items="${result1.rows}" var="row">
                <form action="changestatus.jsp?id=<c:out value='${row.booking_id}'/>" method="post">
                    <tr>
                        <td><c:out value="${row.booking_id}"/></td>
                        <td><c:out value="${row.booking_type}"/></td>
                        <td><c:out value="${row.date}"/></td>
                        <td><c:out value="${row.time}"/></td>
                        <td><c:out value="${row.subject_id}"/></td>
                        <td><c:out value="${row.email}"/></td>
                         <td><select name='status'>
                                <option value='<c:out value="${row.status}"/>' hidden selected><c:out value="${row.status}"/></option>
                                
                                <option value="Menunggu Bayaran">Menunggu Bayaran</option>
                                <option value="Selesai">Selesai</option>
                            </select></td>

                        <td>

                            <input type="Submit" class="btn btn-primary" value="Kemas kini"/>

                        </td>

                    </tr>
                </form>
            </c:forEach>





        </table>

            </div></div></body>
            
            
            
    
          
 <body class="text-center" style="background-color: #e6e6ff">
        <br>
        <div class="card" style="width: 80rem; margin-right: auto; margin-left: auto">
            <h3 class="card-header">Senarai Selesai Bayaran</h3>
            <div class="card-body">
               
 
               
        <table class="table" border="2">


            <tr>

                <td><b>Booking ID:</b></td>
                <td><b>booking type:</b></td>
                <td><b>tarikh:</b></td>
                <td><b>Masa:</b></td>
                <td><b>Pakej</b></td>
                <td><b>Nama Pengguna</b></td>
                <td><b>Status:</b></td>
                <td><b>Tindakan</b></td>
               

            </tr>


            <c:forEach items="${result3.rows}" var="row">
                <form action="changestatus.jsp?id=<c:out value='${row.booking_id}'/>" method="post">
                    <tr>
                        <td><c:out value="${row.booking_id}"/></td>
                        <td><c:out value="${row.booking_type}"/></td>
                        <td><c:out value="${row.date}"/></td>
                        <td><c:out value="${row.time}"/></td>
                        <td><c:out value="${row.subject_id}"/></td>
                        <td><c:out value="${row.email}"/></td>
                           <td> <c:out value="${row.status}"/></td>





                         <td><a class="btn btn-primary" href="admin-deletebooking.jsp?id=<c:out value="${row.booking_id}"/>"
                           onclick="return confirm('Adakah anda pasti untuk padam?')">Padam</a>
                    </td>

                    </tr>
                </form>
            </c:forEach>





        </table>
    </body>

</html>
