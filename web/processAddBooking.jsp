<%-- 
    Document   : processAddBooking
    Created on : May 2, 2020, 8:59:02 PM
    Author     : IQBAL
--%>

<%@page import="com.user.BookingDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="booking" class="com.user.Booking" scope="request"/>
<jsp:setProperty name="booking" property="booking_type" value='<%=request.getParameter("bookingType")%>'/>
<jsp:setProperty name="booking" property="date" value='<%=request.getParameter("date")%>'/>
<jsp:setProperty name="booking" property="time" value='<%=request.getParameter("time")%>'/>
<jsp:setProperty name="booking" property="subject_id" value='<%=request.getParameter("subject")%>'/>
<jsp:setProperty name="booking" property="email" value='<%=request.getParameter("email")%>'/>
<jsp:setProperty name="booking" property="user_id" value='<%=(Integer)session.getAttribute("userId")%>'/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <%
            BookingDAO bookingdao = new BookingDAO();
            int result = bookingdao.addBooking(booking);
            
            if (result > 0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert(\"Tempahan berjaya dibuat\")");
                out.println("</script>");
                RequestDispatcher rd = request.getRequestDispatcher("myBookingPage.jsp");
                rd.include(request, response);
            }
        %>
    </body>
</html>
