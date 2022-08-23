<%-- 
    Document   : listadmin
    Created on : Jun 30, 2021, 9:11:36 AM
    Author     : IQBAL
--%>


<%@page import="com.servlet.db.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

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
            <%@include file = "header-test.jsp" %>
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
        <table border="2">
            <tr>
                <th>ID</th><th>Nama Pelanggan</th><th style="display:none;">Nama Akhir</th><th>Nama Dokumen</th><th>Maklumat</th><th>Tarikh muat naik</th><th>Muat Turun</th>
            </tr>
            <%
                con = DB.getConnection();
            String sql = "select * from payment";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
            %>
            <tr>
                <td><%=rs.getInt(1)%></td>
                <td style="display: none;"><%=rs.getString(2)%></td>
                <td><%=rs.getString(2)%> </td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getTimestamp(6)%></td>
                <td><a href="DownloadServlet?fileName=<%=rs.getString(4)%>" accesskey=""class="btn btn-outline-success btn-sm">Muat Turun</a>
                      <a  href="viewAll.jsp?id=<c:out value="${row.id}"/>"
                                       onclick="return confirm('Adakah anda pasti untuk padam?')"
                                   class="btn btn-outline-danger btn-sm">Padam</a>
            </tr>
            <%
                }
            %>
            
        </table><br>
        <a href="AdminHomePage.jsp"  button type="button" class="btn btn-primary"  >Laman Utama</a>
        
    </center>
    </body>
</html>
