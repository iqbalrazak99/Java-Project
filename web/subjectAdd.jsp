<%-- 
    Document   : subjectAdd
    Created on : May 29, 2020, 4:02:25 PM
    Author     : IQBAL
--%>

<%@page import="com.user.Admin"%>
<%@page import="com.user.AdminDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Profile</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body style="background-color: #e6e6ff">
        <%-- Header--%>
        <%@include file = "header3.jsp" %>
        <br>
        <h2 class="text-center">Tambah Subjek</h2>
        <br>
        <div class="card" style="width: 25rem; margin-right: auto; margin-left: auto">
            <div class="card-body">
                <center><fieldset>
                    <legend></legend>
                    <form action="subject-add-process.jsp" method="post">
                    <table>
                        <tbody>
                        <p>Tambah Subjek</p>
                        <tr>
                            <td><label>Sesi </label></td>
                            <td><input type="text" name="txttutor" /></td>
                        </tr>
                        <tr>
                            <td><label>Kelas </label></td>
                            <td><input type="text" name="txtname" /></td>
                        </tr>
                        <tr>
                            <td><label>Harga</label></td>
                            <td><input type="text" name="txtprice" /></td>
                        </tr>
                        <tr>
                            <td><label>Pakej  </label></td>
                            <td><input type="text" name="txtsubject_id" /></td>
                        </tr>
                        <tr>
                        <br>
                        <td><label></label></td>
                        <td>
                            <br><input type="submit" class="btn btn-outline-success btn-sm" value="Tambah" style="float: right"/>
                            <a href="subject-list.jsp" class="btn btn-outline-info btn-sm" style="float: left">Batal</a>
                            
                        </tr>
                        </tbody>
                    </table>
                        </form>
                </fieldset></center>
            </div>
        </div>
        <br><br><br><br>
      
    </body>
    <script>
    </script>
</html>