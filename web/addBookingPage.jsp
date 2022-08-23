<%-- 
    Document   : addBookingPage
    Created on : May 2, 2020, 5:12:19 PM
    Author     : IQBAL
--%>

<%@page import="com.user.Booking"%>
<%@page import="com.user.table"%>
<%@page import="java.util.List"%>
<%@page import="com.user.BookingDAO"%>
<%@page import="com.user.userDAO, com.user.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Class</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <%
          int userId = (Integer) session.getAttribute("userId");
        String firstName = (String) session.getAttribute("firstName");
        String lastName = (String) session.getAttribute("lastName");
        BookingDAO bookingdao = new BookingDAO();
        
          List<table> curBooking = bookingdao.bookingHistory(userId);
       List<Booking> myBookingList = bookingdao.retrieveBooking(userId);
       
        List<Booking> subject = bookingdao.retrieveAllSubject();
        List<Booking> book = bookingdao.retrieveAllBooking();
        
    %>
    <body style="background-color: #e6e6ff">
        <%-- Header--%>
        <%@include file = "header.jsp" %>
        <br><br>
        <div class="row"> 
            <div class="col-sm-7">
                <div class="card"  style="width: 40rem; margin-right: auto; margin-left: auto ">
                    <h3 class="card-header">Tempahan Baharu</h3>
                    <div class="card-body">
                        
                        <form action="processAddBooking.jsp" method="post">
                            <table>
                                <td>
                                    <div class="form-group">
                                        <label>Tarikh </label>
                                        <input id="date" type="date" class="form-control" required=""
                                               min="2022-02-10" max="2022-12-31" name="date">
                                    </div>
                                </td>
                                <td>
                                    <div class="form-group">
                                        <label>Kaunter Urusan</label>
                                        <select id="subject" class="form-control" name="subject" onchange="Time('date', 'time', this.id)">
                                            <option>Pilih Kaunter Urusan</option>
                                            <% for (int i = 0; i < subject.size(); i++) {%>
                                            <option value="<%=subject.get(i).getSubject_id()%>"> <%=subject.get(i).getSubject_id()%> </option>
                                            <%}%>
                                        </select>

                                    </div>
                                </td> 
                                <td>
                                    <div class="form-group">
                                        <label>Masa Kelas</label>
                                        <select id="time" name="time" class="form-control"></select>
                                    </div>
                                </td>

                                <td style="display: none;">
                                    <div class="form-group">
                                        <label>Nama</label>
                                        <input type="text" name="email" class="form-control" value="<%=firstName%> <%=lastName%>" readonly ></select>
                                    </div>
                                </td>
                                
                            </table>
                                    
                            <div class="form-group">
                                <label>Urusan Utama</label>
                             <select id="bookingType" class="form-control" name="bookingType"  >
                                            <option>Pilih Tujuan</option>
                                          
                                            <option>  </option>
                                            <option>  Pindah Milik tanah</option>
                                           <option>  Pindah milik gadaian</option>
                                           <option>  Pendidikan Islam</option>
                                           <option>  Perbaharui Geran</option>
                                             <option>  </option>
                                        </select>
                                
                            </div>
                            <button type="submit" class="btn btn-primary">Tempah Sekarang</button>
                            <td> <a href="HomePage.jsp"><input type="button" class="btn btn-warning" value="Batal" name="cancel"/></a></td>
                        </form>
                    </div>
                </div>
            </div>
                                    
            <div class="col-sm-4">
                <div class="card" style="width: 30rem; margin-right: auto; margin-left: auto;">
                    <div class="card-body">
                        <h5 class="card-title">Maklumat Servis yang Tersedia</h5>

                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Kaunter urusan</th>
                                    <th>Jenis Urusan</th>
                                    <th>Harga(RM)</th>
                                    <th style="display: none">Sesi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% for (int i = 0; i < subject.size(); i++) {%>
                                <tr>
                                    <td><%=subject.get(i).getSubject_id()%></td>
                                    <td><%=subject.get(i).getSubjectName()%></td>
                                    <td><%=subject.get(i).getPrice()%></td>
                                    <td style="display: none"><%=subject.get(i).getTutor()%></td>
                                </tr>
                                <% }%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div><br><br><br>

      
    </body>
    <script type="text/javascript" >
        function Time(s1, s2, s5) {
            var s1 = document.getElementById(s1);
            var s2 = document.getElementById(s2);
            var s5 = document.getElementById(s5);

            s2.innerHTML = "";

            var optionArray = ["|", "10:00 AM - 12:00 PM|10:00 AM - 12:00 PM", "12:00 PM - 2:00 PM|1:00 PM - 2:00 PM", "3:00 PM - 5:00 PM|3:00 PM - 5:00 PM"];

        <%for (int y = 0; y < book.size(); y++) {%>
            if (s5.value === '<%=book.get(y).getSubject_id()%>') {
                if (s1.value === '<%=book.get(y).getDate()%>') {
                    var index = optionArray.indexOf("<%=book.get(y).getTime()%>|<%=book.get(y).getTime()%>");
                                    optionArray.splice(index, 1);
                                } else {
                                    var optionArray;
                                }
                            } else {
                                var optionArray;
                            }
        <%}%>

                            for (var option in optionArray) {
                                var pair = optionArray[option].split("|");
                                var newOption = document.createElement("option");
                                newOption.value = pair[0];
                                newOption.innerHTML = pair[1];
                                s2.options.add(newOption);
                            }
                        }


    </script>
</html>
