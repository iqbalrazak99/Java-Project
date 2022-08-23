<%-- 
    Document   : header
    Created on : May 1, 2020, 7:03:54 PM
    Author     : IQBAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%-- Header--%>
        <header class="masthead mb-auto">
            <div class="navbar navbar-light bg-light">
                <a class="navbar-brand" href="#">
                    <img src="gogo.png" width="40" height="40" class="d-inline-block align-top" alt="">
                    E-temujanji
                </a>
                <nav class="nav nav-masthead justify-content-center">
                   <a class="nav-link" href="AdminHomepage1.jsp">Laman Utama</a>
                      <a class="nav-link" href="AdminProfile.jsp">Profil Saya</a>
                    <a class="nav-link" href="subject-list.jsp">Pakej</a>
                    
                    <li class="nav-item dropdown">                       
                   <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Bayaran</a>
                   <div class="dropdown-menu">
                   <a class="dropdown-item" href="listadmin.jsp">Maklumat Bayaran</a>
                   <a class="dropdown-item" href="admin-viewbooking.jsp">Ubah Status Bayaran</a>
                   </li>
                   
                  <a class="nav-link" href="logout.jsp">Log Keluar</a>
            </nav>
            </div>
        </header>
    </body>
</html>
