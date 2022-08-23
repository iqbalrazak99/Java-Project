<%-- 
    Document   : myBookingPage
    Created on : May 1, 2020, 5:41:37 PM
    Author     : IQBAL
--%>

<%@page import="java.util.List"%>
<%@page import="com.user.Booking"%>
<%@page import="com.user.BookingDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Booking </title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <%
        int userId = (Integer) session.getAttribute("userId");
        BookingDAO bookingdao = new BookingDAO();

        List<Booking> myBookingList = bookingdao.retrieveBooking(userId);

    %>

    <body class="text-center" style="background-color: #e6e6ff">
        <%-- Header--%>
        <%@include file = "header.jsp" %>
        <br>
        <div class="card" style="width: 80rem; margin-right: auto; margin-left: auto">
            <h3 class="card-header">Senarai Tempahan</h3>
            <div class="card-body">
                <%if (myBookingList.isEmpty() == true) {%>
                <p style="text-align: center">Anda Belum Membuat Tempahan</p>
                <%} else {%>
                <table class="table">
                    <thead>
                        <tr>
                            <th>ID Tempahan</th>
                            <th>TUJUAN</th>
                            <th>TARIKH</th>
                            <th>MASA</th>
                            <th>JENIS URUSAN</th>
                            <th>HARGA(RM)</th>
                            <th style="display: none">SESI</th>
                            <th>STATUS</th>
                            <th>TINDAKAN</th>
                        </tr>
                    </thead> 
                    <tbody>
                        <% for (int i = 0; i < myBookingList.size(); i++) {%>
                        <tr>
                            <td><%=myBookingList.get(i).getBooking_id()%></td>
                            <td><%=myBookingList.get(i).getBooking_type()%></td>
                            <td><%=myBookingList.get(i).getDate()%></td>
                            <td><%=myBookingList.get(i).getTime()%></td>
                            <td><%=myBookingList.get(i).getSubjectName()%></td>
                            <td><%=myBookingList.get(i).getPrice()%></td>
                            <td style="display: none"><%=myBookingList.get(i).getTutor()%></td>
                            <td><%=myBookingList.get(i).getStatus()%></td>
                            
                            <td> <div class="btn-group">
  <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   Pilih
  </button>
  <div class="dropdown-menu">
    <a class="dropdown-item" href="updateBookingPage.jsp?id=<%=myBookingList.get(i).getBooking_id()%>"onclick="return confirm('Adakah anda pasti untuk kemaskini?')"
                                   class="btn btn-outline-warning btn-sm" >Kemaskini</a>
    <a class="dropdown-item" href="processDeleteBooking.jsp?id=<%=myBookingList.get(i).getBooking_id()%>" onclick="return confirm('Adakah anda pasti untuk padam?')"
                                   class="btn btn-outline-danger btn-sm">Padam</a>
    <a class="dropdown-item" href="index.jsp?id=<%=myBookingList.get(i).getBooking_id()%>" onclick="return confirm('Bayar Sekarang?')"
                                   class="btn btn-outline-success btn-sm">Bayar</a>
  
  </div>
</div>
</div>
                            </td>                 <%--  <td><a href="updateBookingPage.jsp?id=<%=myBookingList.get(i).getBooking_id()%>" 
                                   class="btn btn-outline-warning btn-sm">KEMASKINI</a>
                                <a href="processDeleteBooking.jsp?id=<%=myBookingList.get(i).getBooking_id()%>" onclick="return confirm('Adakah anda pasti untuk padam?')"
                                   class="btn btn-outline-danger btn-sm">PADAM</a>
                                   <a href="index.jsp?id=<%=myBookingList.get(i).getBooking_id()%>" onclick="return confirm('Bayar Sekarang?')"
                                   class="btn btn-outline-success btn-sm">BAYAR</a>
                                <%--<  <td><a href="processDeleteBooking.jsp?id=<%=myBookingList.get(i).getBooking_id()%>" onclick="return confirm('Are you sure want to delete?')"
                                   class="btn btn-outline-danger btn-sm">DELETE</a></td>
                                --%>
                            </td>
                        </tr>
                        <% } %>
                    </tbody>
                </table>
                <% }%>
            </div>
        </div><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <%--fotter--%>
        <%@include file = "footer.jsp" %>
    </body>
</html>
