<%-- 
    Document   : AdminProfile
    Created on : May 4, 2020, 7:09:03 PM
    Author     : IQBAL
--%>

<%@page import="com.user.Admin"%>
<%@page import="com.user.AdminDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profil Admin</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <%
        int AdminId = (Integer) session.getAttribute("adminId");
        AdminDAO admindao = new AdminDAO();
        Admin admin = admindao.retrieveById(AdminId);

    %>
    <body style="background-color: #e6e6ff">
        <%-- Header--%>
        <%@include file = "header-test.jsp" %>
        <br>
        <h2 class="text-center">My Profile</h2>
        <br>
        <div class="card" style="width: 25rem; margin-right: auto; margin-left: auto">
            <div class="card-body">
                <form action="UpdateAdmin.jsp" method="post">

                    <div class="form-group">
                        <label>Nama Admin:</label>
                        <input type="text" class="form-control" value="<%=admin.getAdminName()%>" disabled/>
                    </div>

                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control" placeholder="Email Address" name="email" value="<%=admin.getEmail()%>" required/>
                    </div>
                    <table>
                        <td>
                            <div class="form-group">
                                <label>Kata Laluan</label>
                                <input type="password" class="form-control" placeholder="Kata Laluan"  name="password" id="password" value="<%=admin.getPassword()%>" required/>
                            </div>
                        </td>
                        <td>
                            <div class="form-group">
                                <label>Sahkan Kata Laluan</label>
                                <input type="password" class="form-control" placeholder="Taip semula kata laluan" name="repassword" id="repassword" required/>
                            </div>
                        </td>
                    </table>

                    <div class="form-group">
                        <label>Nombor Telefon</label>
                        <input type="number" class="form-control" placeholder="contact Number" name="phoneNumber" value="<%=admin.getPhoneNumber()%>" required/>
                    </div>  
                    <button type="submit" class="btn btn-primary">Kemaskini</button>   
                </form>
            </div>
        </div>
        <br><br><br><br>
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
