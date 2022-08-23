<%-- 
    Document   : AdminHomePage
    Created on : May 4, 2020, 5:32:08 PM
    Author     : IQBAL
--%>

<%@page import="com.user.table"%>
<%@page import="java.util.List"%>
<%@page import="com.user.BookingDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Laman Admin</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <%
        String Name = (String) session.getAttribute("Name");
        BookingDAO bookingdao = new BookingDAO();
        List<table> curBooking = bookingdao.currentBooking();
    %>
    <body class="text-center" style="background-color: #e6e6ff">
        <%-- Header--%>
        <%@include file = "header-test.jsp" %><br><br>
        <h2>Selamat Datang ke Pusat Tuisyen Qiraati , <%=Name%></h2>
        <br>
        <%--booking List table--%>
        <div class="card" style="width: 90rem; margin-right: auto; margin-left: auto">
            <h3 class="card-header">Senarai Tempahan Pelanggan</h3>
            <div class="card-body">

                <% if (curBooking.isEmpty() == true) {%>
                <p style="text-align: center">Pusat Tuisyen masih belum menerima sebarang tempahan</p>
                <% } else {%>
                <table class="table">
                    <thead>
                        <tr>
                            <th>PAKEJ</th>
                            <th>SESI</th>
                            <th>DITEMPAH OLEH</th>
                            <th>SUBJEK</th>
                            <th>NOMBOR TELEFON</th>
                            <th>TARIKH</th>
                            <th>MASA</th>
                            <th>STATUS</th>
                            <th>TINDAKAN</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for (int i = 0; i < curBooking.size(); i++) {%>
                        <tr>
                            <td><%=curBooking.get(i).getSubject_id()%></td>
                            <td><%=curBooking.get(i).getTutor()%></td>
                            <td><%=curBooking.get(i).getFirstName()%> <%=curBooking.get(i).getLastName()%></td>
                            <td><%=curBooking.get(i).getBooking_type()%></td>
                            <td>0<%=curBooking.get(i).getPhoneNumber()%></td>
                            <td><%=curBooking.get(i).getDate()%></td>
                            <td><%=curBooking.get(i).getTime()%></td>
                            <td><%=curBooking.get(i).getStatus()%></td>
                            <td>
                                <a href="ApproveBooking.jsp?id=<%=curBooking.get(i).getBookingId()%>" onclick="return confirm('Adakah anda pasti untuk terima?')" accesskey=""class="btn btn-outline-success btn-sm">TERIMA</a>
                                <a href="RejectBooking.jsp?id=<%=curBooking.get(i).getBookingId()%>" onclick="return confirm('Adakah anda pasti untuk tolak?')" accesskey="" class="btn btn-outline-warning btn-sm">TOLAK</a>
                               <a href="mailto: faridiqbal990@gmail.com"?id=<%=curBooking.get(i).getBookingId()%>" class="btn btn-outline-info btn-sm">EMAIL</a>
                                <%--<a href="DeleteBooking.jsp?id=<%=curBooking.get(i).getBookingId()%>" onclick="return confirm('Are you sure want to delete?')"
                                   class="btn btn-outline-danger btn-sm">DELETE</a>
                                --%>
                            </td>
                        </tr>
                        <% }%>
                    </tbody>
                </table>
                <% }%>
            </div>
        </div>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <%@include file = "footer.jsp" %>
    </body>
</html>
