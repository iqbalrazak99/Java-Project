<%-- 
    Document   : AdminLogin
    Created on : May 4, 2020, 4:53:07 PM
    Author     : IQBAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body class="text-center" style="background-color: #e6e6ff">
        <%-- Header--%>
        <%@include file = "header4.jsp" %>
        <br><br><br>
        <div class="card" style="width: 25rem; margin-right: auto; margin-left: auto">
            <div class="card-header">
                <img src="logo.PNG" alt="" width="72" height="72" style="margin-right: auto; margin-left: auto">
                <h3>Log Masuk Admin</h3>
            </div>
            <div class="card-body">
                <form action="processAdminLogin.jsp" method="post">
                    <div class="form-group">
                        <label class="sr-only">Email </label>
                        <input type="email" class="form-control" name="email" placeholder="Email" required/>
                    </div>
                    <div class="form-group">
                        <label class="sr-only">Kata Laluan</label>
                        <input type="password" class="form-control" name="password" placeholder="Kata Laluan" required/>
                    </div>

                    <button type="submit" class="btn btn-primary btn-lg btn-block">Log Masuk</button>   
                </form>
            </div>
        </div>
        <br><br><br><br><br><br><br><br>
        <%--fotter--%>
        <%@include file = "footer.jsp" %>
    </body>
</html>
