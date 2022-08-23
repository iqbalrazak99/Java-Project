<%-- 
    Document   : file-list
    Created on : Jun 30, 2021, 8:20:22 AM
    Author     : IQBAL
--%>

<%@page import="com.servlet.db.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.user.table"%>
<%@page import="com.user.BookingDAO"%>
<%@page import="com.user.payment"%>
<%@page import="com.user.paymentDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.user.userDAO, com.user.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <style>
            tr,td,th{
                padding: 20px;
                text-align: center;
            }
        </style>
        
    </head>
    
     <%-- Header--%>
            <%@include file = "header.jsp" %>
    <body style="background-color: #e6e6ff">
        <br><br><br><br>
    <center>
          <div class="card" style="width: 80rem; margin-right: auto; margin-left: auto">
              <h3 class="card-header">Maklumat Bayaran</h3>
              <div class="card-body"></div>
    <body>
        <br><br><br>
    <center>
        <%!
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
            
        %>
        
        <table class="table" border="2">
            <tr>
                <th>ID</th><th>Nama Pengguna</th><th style="display:none;">Nama Akhir</th><th>Nama Dokumen</th><th>Maklumat Dokumen</th><th>Tarikh muat naik</th><th>Muat Turun</th>
            </tr>
            <%
                con = DB.getConnection();
            String sql = "select * from payment";
            String firstname = (String) session.getAttribute("firstname");
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
            %>
            <tr>
                <td ><%=rs.getInt(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td style="display:none;"><%=rs.getString(3)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getTimestamp(6)%></td>
                <td><a href="DownloadServlet?fileName=<%=rs.getString(4)%>" accesskey=""class="btn btn-outline-success btn-sm">Muat Turun</a>
                 <a href="mailto: pusattuisyenqiraati@gmail.com" class="btn btn-outline-info btn-sm">EMAIL</a></td>
            </tr>
            <%
                }
            %>
            
        </table><br>
        <a href="index.jsp" button type="button" class="btn btn-primary">Laman Utama</a>
    </center>

    </body>
</html>
