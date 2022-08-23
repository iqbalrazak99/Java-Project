<%-- 
    Document   : AdminHomepage2
    Created on : Jul 10, 2021, 1:08:44 AM
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
        <h2>Urus pengguna dan tempahan </h2>
        <br> <br> <br> <br> 
     
        <table style="margin-right: auto; margin-left: auto"">
            <tr>
                <td>
                    <div class="card" style="width: 16rem;">
                        <a href="userlist.jsp"><img src="delete-payment.png" class="img-fluid" alt="Responsive image"></a>
                    </div>
                </td>
                <td>
                    <div class="card" style="width: 16rem;">
                        <a href="AdminHomePage.jsp"><img src="12.png"  class="img-fluid" alt="Responsive image"></a>
                    </div>
                </td>
            </tr>
            
        </table>
 <br> <br> <br> <br> <br> <br> <br>
            <%@include file = "footer.jsp" %>
    </body>
</html>
