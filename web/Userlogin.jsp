<%-- 
    Document   : Userlogin
    Created on : May 1, 2020, 9:58:44 PM
    Author     : IQBAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Log Masuk Pengguna</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body>
        <div class="text-center">
            <%--header--%>
            <%@include file = "header2.jsp" %>
            <div style="background-color: #e6e6ff">
                <br><br><br><br>
                <div class="card" style="width: 25rem; margin-right: auto; margin-left: auto">
                    <div class="card-header">
                        <img src="gogo.png" alt="" width="72" height="72" style="margin-right: auto; margin-left: auto">
                        <h3>Log Masuk Pengguna</h3>
                    </div>
                    <div class="card-body">
                        <form action="processUserlogin.jsp" method="post">
                            <div class="form-group">
                                <label class="sr-only">Email </label>
                                <input type="email" class="form-control" name="email" placeholder="Email " required/>
                            </div>
                            <div class="form-group">
                                <label class="sr-only">Kata Laluan</label>
                                <input type="password" class="form-control" name="password" placeholder="Kata Laluan" required/>
                            </div>

                            <button type="submit" class="btn btn-primary btn-lg btn-block">Log Masuk</button>   
                        </form>
                    </div>
                    <div class="card-footer">
                        <a href="createAccountPage.jsp">Perlukan Akaun? Daftar Sekarang!</a>
                    </div>
                </div><br><br><br><br><br>
            </div>
            
        </div>
        <footer class="footer mt-auto py-3" style="background-color: #f2f2f2">
            <div class="container">
                <span class="text-muted"> </span>
            </div>
        </footer>
    </body>
</html>