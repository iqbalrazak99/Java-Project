<%-- 
    Document   : index
    Created on : Jun 30, 2021, 8:19:30 AM
    Author     : IQBAL
--%>

<%@page import="com.user.table"%>
<%@page import="java.util.List"%>
<%@page import="com.user.Booking"%>
<%@page import="com.user.BookingDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Muat Naik Resit</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
      <%@include file = "header.jsp" %>
    
          <body style="background-color: #e6e6ff">
        <%

        int userId = (Integer) session.getAttribute("userId");
        String firstName = (String) session.getAttribute("firstName");
        String lastName = (String) session.getAttribute("lastName");
        
        BookingDAO bookingdao = new BookingDAO();
        
        List<table> curBooking = bookingdao.bookingHistory(userId);
       List<Booking> myBookingList = bookingdao.retrieveBooking(userId);
    %>
    
          <br><br>
        <div class="row"> 
            <div class="col-sm-7">
                <div class="card"  style="width: 40rem; margin-right: auto; margin-left: auto ">
                    <h3 class="card-header">Hantar resit bayaran</h3>
                    <div class="card-body">
                        
                        
                <form action="UploadServlet" method="post" enctype="multipart/form-data">
            <table class="table" width="60px" align="center" border=2>
                <tr>
                    <td align="center" colspan="2"></td>
                </tr>
                <tr>
                    <td>Nama </td>
                    <td>
                        <input type="text" required="" value="<%=firstName%> <%=lastName%>" name="firstname" >
                    </td>
                </tr>
                <tr style="display: none;">
                    <td style="display:none;">email </td>
                    <td>
                        <input type="text" required="" value="<%=lastName%>" name="lastname">
                    </td>
                </tr>
                <tr>
                    <td>Pilih Dokumen </td>
                    <td>
                        <input type="file" required="" name="file">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Muat Naik"></td>
                </tr>
            </table>

        </form>
        <br><a href = "file-list.jsp"  Headerwidth="250px;" accesskey="" class="btn btn-outline-success btn-sm" >Lihat Senarai</a>         
                        
   
        
                    </div></div></div>
    
    
          

    
   
      <div class="col-sm-4">
                <div class="card" style="width: 40rem; margin-right: auto; margin-left: auto; ">
                    <div class="card-body">
                        <h5 class="card-title">Maklumat Akaun Bank</h5>

        <table class="table">
            <thead>
            <tr>
                <th style="display: none;">Id</th>
                <th>Bank</th>
                <th>Akaun Bank</th>
                <th>Pautan</th>
                 </tr>
            </thead>
            
            
          <tbody>
           <tr>
    <td>Maybank</td>
    <td>153131189257</td>
    <td><a href="https://www.maybank2u.com.my/" class="btn btn-warning btn-block" role="button">Maybank</a></td>
  </tr>
          
            <tr>
                <td>CIMB</td>
                <td>2674653418</td>
                <td><a href="https://www.cimb.com.my/" class="btn btn-danger btn-block" role="button">CIMB</a></td>
               
            </tr>
             
            
            <tr>
                <td>BSN</td>
                <td>9087654267</td>
                <td><a style="padding: 6px 12px;" href="https://www.bsn.com.my/" class="btn btn-info btn-block" role="button">BSN</a></td>
               
            </tr>
            </tbody>
        </table>
            
    
    </body>
                    </div></div></div></div>
    </center>
  
</body>

</html>

