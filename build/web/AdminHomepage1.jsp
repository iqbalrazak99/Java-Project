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
        <%@include file = "header-test.jsp" %><br>
        <h2>Selamat Datang ke E-temujanji , <%=Name%></h2>
        <br>
     
        <table style="margin-right: auto; margin-left: auto"">
            <tr>
                <td>
                    <div class="card" style="width: 16rem;">
                        <a href="AdminHomepage2.jsp"><img src="tempahan.png" class="img-fluid" alt="Responsive image"></a>
                    </div>
                </td>
                <td>
                    <div class="card" style="width: 16rem;">
                        <a href="subject-list.jsp"><img src="urus.png"  class="img-fluid" alt="Responsive image"></a>
                    </div>
                </td>
            </tr>
              <tr>
                <td>
                    <div class="card" style="width: 16rem;">
                        <a href="admin-viewbooking.jsp"><img src="Bayar.png" class="img-fluid" alt="Responsive image"></a>
                    </div>
                </td>
                <td>
                    <div class="card" style="width: 16rem;">
                        <a href="AdminProfile.jsp"><img src="profil.png"  class="img-fluid" alt="Responsive image"></a>
                    </div>
                </td>
            </tr>
        </table>

            <%@include file = "footer.jsp" %>
    </body>
</html>
