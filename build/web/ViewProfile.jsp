<%-- 
    Document   : ViewProfile
    Created on : May 1, 2020, 5:32:34 PM
    Author     : User
--%>

<%@page import="com.user.user"%>
<%@page import="com.user.userDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profil Saya</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <%
        int userId = (Integer) session.getAttribute("userId");
        userDAO userdao = new userDAO();
        user user = userdao.retrieveById(userId);

    %>
    <body style="background-color: #e6e6ff">
        <%-- Header--%>
        <%@include file = "header.jsp" %>
        <br>
        <h2 class="text-center">Profil Saya</h2>
        <br>
        <div class="card" style="width: 25rem; margin-right: auto; margin-left: auto">
            <div class="card-body">
                <form action="processUpdate.jsp" method="post">
                    <table>
                        <td>
                            <div class="form-group">
                                <label>Nama Awal</label>
                                <input type="text" class="form-control" value="<%=user.getFirstName()%>" disabled/>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label>Nama Akhir</label>
                                <input type="text" class="form-control" value="<%=user.getLastName()%>" disabled/>
                            </div>
                        </td>
                    </table>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control" placeholder="Email " name="email" value="<%=user.getEmail()%>" required/>
                    </div>
                    <table>
                        <td>
                            <div class="form-group">
                                <label>Kata Laluan</label>
                                <input type="password" class="form-control" placeholder="Kata Laluan"  name="password" id="password" value="<%=user.getPassword()%>" required/>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label>Sahkan Kata laluan</label>
                                <input type="password" class="form-control" placeholder="Sahkan kata laluan" name="repassword" id="repassword" required/>
                            </div>
                        </td>
                    </table>

                    <div class="form-group">
                        <label>Nombor telefon</label>
                        <input type="number" class="form-control" placeholder="Nombor telefon" name="phoneNumber" value="<%=user.getPhoneNumber()%>" required/>
                    </div> 
                    
                    <div class="form-group">
                        <label>Jenis Pengguna</label>
                        <input type="text" class="form-control" value="<%=user.getUserType()%>" disabled/>
                    </div>
                    <button type="submit" class="btn btn-primary">Kemas kini</button>   
                </form>
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
