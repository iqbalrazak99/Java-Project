<%-- 
    Document   : createAccountPage
    Created on : May 1, 2020, 8:11:10 PM
    Author     : IQBAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Akaun Baru</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body style="background-color: #e6e6ff"> 
        <%--header--%>
        <%@include file = "header2.jsp"%><br>
        <div class="card" style="width: 30rem; margin-right: auto; margin-left: auto">
            <h2 class="card-header" style="text-align: center">Cipta Akaun</h2>
            <div class="card-body">
                <form action="processCreateAccount.jsp" method="post">
                    <table>
                        <table>
                            <td>
                                <div class="form-group">
                                    <label>Nama Awal</label>
                                    <input type="text" class="form-control" style="text-transform: capitalize;" name="firstName" placeholder="Masukkan Nama Awal" required/>
                                </div>
                            </td>
                            <td>
                                <div class="form-group">
                                    <label>Nama Akhir</label>
                                    <input type="text" class="form-control" style="text-transform: capitalize;" name="lastName" placeholder="Masukkan Nama Akhir" required/>
                                </div>
                            </td>
                        </table>
                        <div class="form-group">
                            <label>Alamat Email</label>
                            <input type="email" class="form-control" name="email" placeholder="Alamat Email" required/>
                        </div>
                        <table>
                            <td>
                                <div class="form-group">
                                    <label>Kata Laluan</label>
                                    <input type="password" class="form-control" name="password" id="password" placeholder="Kata Laluan" required/>
                                </div>
                            </td>
                            <td>
                                <div class="form-group">
                                    <label>Taip semula Kata Laluan</label>
                                    <input type="password" class="form-control" name="repassword" id="repassword" placeholder="Kata Laluan" required/>
                                </div>
                            </td>
                        </table>
                        <div class="form-group">
                            <label>Nombor Telefon</label>
                            <input type="text" class="form-control" name="phoneNumber"  placeholder="0103XXXX" required/>
                        </div>
                        
                        <div class="form-group">
                            <label>Jenis Pengguna</label>
                            <select class="form-control" name="userType">
                                <option value="Ibu Bapa">Ibu Bapa</option>
                                <option value="Pelajar">Pelajar</option>
                            </select>
                        </div>
                        
                        <button type="submit" class="btn btn-primary btn-lg btn-block">Daftar</button>
                    </table>
                </form>
            </div>
            <div class="card-footer">
                <p class="text-center"><a href="Userlogin.jsp">Sudah Mempunyai Akaun? Log Masuk</a></p>
            </div>
        </div>
        <br><br>
        <%--fotter--%>
        <%@include file = "footer.jsp" %>
    </body>
    <script>
        var password = document.getElementById("password")
                , repassword = document.getElementById("repassword");

        function validatePassword() {
            if (password.value != repassword.value) {
                repassword.setCustomValidity("Passwords Don't Match");
            } else {
                repassword.setCustomValidity('');
            }
        }

        password.onchange = validatePassword;
        repassword.onkeyup = validatePassword;
    </script>
</html>
