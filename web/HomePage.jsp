<%-- 
    Document   : HomePage
    Created on : May 1, 2020, 1:50:56 PM
    Author     : IQBAL
--%>

<%@page import="com.user.table"%>
<%@page import="com.user.BookingDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.user.userDAO, com.user.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Laman Utama</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <%

        int userId = (Integer) session.getAttribute("userId");
        String firstName = (String) session.getAttribute("firstName");
        String lastName = (String) session.getAttribute("lastName");
        
        BookingDAO bookingdao = new BookingDAO();
        
        List<table> curBooking = bookingdao.bookingHistory(userId);

    %>
    <body style="background-color: #e6e6ff">
        <div class="text-center">
            <%-- Header--%>
            <%@include file = "header.jsp" %>
            <br><br>
            <%--  <h2>Selamat Datang ke Pusat Pengurusan Tuisyen , <%=firstName%> <%=lastName%></h2>--%>
            <%--main Pge--%>
            <br><br>
            
            <%--booking List table--%>
            <div class="card" style="width: 80rem; margin-right: auto; margin-left: auto">
                <h3 class="card-header">Senarai Tempahan Saya</h3>
                <div class="card-body">

                    <% if (curBooking.isEmpty() == true) {%>
                    <p style="text-align: center">Anda masih belum membuat sebarang tempahan</p>
                    <% } else {%>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>PAKEJ</th>
                                <th>SESI</th>
                                <th style="display:none;" >DITEMPAH OLEH</th>
                                <th>SUBJEK</th>
                                <th>NOMBOR TELEFON</th>
                                <th>TARIKH</th>
                                <th>MASA</th>
                                <th>STATUS</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (int i = 0; i < curBooking.size(); i++) {%>
                            <tr>
                                <td><%=curBooking.get(i).getSubject_id()%></td>
                                <td><%=curBooking.get(i).getTutor()%></td>
                                <td style="display:none;" ><%=curBooking.get(i).getFirstName()%> <%=curBooking.get(i).getLastName()%></td>
                                <td><%=curBooking.get(i).getBooking_type()%></td>
                                <td>0<%=curBooking.get(i).getPhoneNumber()%></td>
                                <td><%=curBooking.get(i).getDate()%></td>
                                <td><%=curBooking.get(i).getTime()%></td>
                                <td><%=curBooking.get(i).getStatus()%></td>
                            </tr>
                            <% }%>
                        </tbody>
                    </table>
                    <% }%>
                </div>
            </div>
            <br>
            <form action="addBookingPage.jsp" method="post">
                <button type="submit" class="btn btn-primary">Tempah sekarang</button>
            </form>
        </div>
        <br><br><br><br><br><br><br><br><br><br><br><br>
        <%--fotter--%>
        <%@include file = "footer.jsp" %>
    </body>
</html>
