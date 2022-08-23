<%-- 
    Document   : header3
    Created on : May 4, 2020, 6:15:57 PM
    Author     : IQBAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%-- Header--%>
        <header class="masthead mb-auto">
            <div class="navbar navbar-light bg-light">
                <a class="navbar-brand" href="#">
                    <img src="logo.PNG" width="40" height="40" class="d-inline-block align-top" alt="">
                  Sistem Pengurusan Pusat Tuisyen
                </a>
                <nav class="nav nav-masthead justify-content-center">
                    <a class="nav-link" href="AdminHomePage.jsp">Laman Utama</a>
                      <a class="nav-link" href="AdminProfile.jsp">Profil Saya</a>
                    <a class="nav-link" href="subject-list.jsp">Subjek</a>
                      <a class="nav-link" href="listadmin.jsp">Bayaran</a>
                    
                    
                    <a class="nav-link" href="logout.jsp">Log Keluar</a>
                </nav>
            </div>
        </header>
    </body>
</html>
