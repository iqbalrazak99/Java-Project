<%-- 
    Document   : processDeleteBoooking
    Created on : May 2, 2020, 10:58:36 PM
    Author     : IQBAL
--%>

<%@page import="com.user.BookingDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int bookingId = Integer.parseInt(request.getParameter("id"));
            BookingDAO bookingdao = new BookingDAO();
            int result = bookingdao.deleteBooking(bookingId);
            
             if(result > 0 ){
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Tempahan berjaya dipadam\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("myBookingPage.jsp");
                rd.include(request, response);
            }
        %>
    </body>
</html>
