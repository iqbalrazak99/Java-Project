<%-- 
    Document   : HomePage1
    Created on : Jul 10, 2021, 3:12:26 AM
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
            <br>
            <h2>Selamat Datang E-temujanji , <%=firstName%> <%=lastName%></h2>
            <br>
                <table style="margin-right: auto; margin-left: auto"">
            <tr>
                <td>
                    <div class="card" style="width: 16rem;">
                        <a href="HomePage.jsp"><img src="status.png" class="img-fluid" alt="Responsive image"></a>
                    </div>
                </td>
                <td>
                    <div class="card" style="width: 16rem;">
                        <a href="addBookingPage.jsp"><img src="tempah.png"  class="img-fluid" alt="Responsive image"></a>
                    </div>
                </td>
            </tr>
              <tr>
                <td style="display:none">
                    <div class="card" style="width: 16rem;">
                        <a href="index.jsp"><img src="Bayar.png" class="img-fluid" alt="Responsive image"></a>
                    </div>
                </td>
                <td>
                    <div class="card" style="width: 16rem; ;margin-left:auto;margin-right:auto;">
                        <a href="ViewProfile.jsp"><img src="profil.png"  class="img-fluid" alt="Responsive image"></a>
                    </div>
                </td>
            </tr>
        </table>
                  <%@include file = "footer.jsp" %>
    </body>
</html>