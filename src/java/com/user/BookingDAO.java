/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
public class BookingDAO {

    private final Connection connection;
    private int result;

    public BookingDAO() {
        connection = DBConnection.getConnection();
    }

    public int addBooking(Booking booking) {
        try {
            String mySqlQuery = "insert into booking(booking_type, date, time, subject_id, email, user_id)"
                    + " values(?,?,?,?,?,?)";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setString(1, booking.getBooking_type());
            myPs.setString(2, booking.getDate());
            myPs.setString(3, booking.getTime());
            myPs.setString(4, booking.getSubject_id());
            myPs.setString(5, booking.getEmail());
            myPs.setInt(6, booking.getUser_id());
            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return result;
    }

    public List<table> currentBooking() {
        List<table> curBooking = new ArrayList<table>();
        table curAll;
        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "SELECT subject.subject_id, subject.tutor, user.first_name, "
                    + "user.last_name, booking.booking_type, user.phone_number, "
                    + "booking.date, booking.time, booking.status, booking.booking_id FROM ((booking"
                    + " INNER JOIN user ON booking.user_id = user.user_id) "
                    + "INNER JOIN subject ON booking.subject_id = subject.subject_id);";
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                curAll = new table();
                curAll.setSubject_id(myRs.getString(1));
                curAll.setTutor(myRs.getString(2));
                curAll.setFirstName(myRs.getString(3));
                curAll.setLastName(myRs.getString(4));
                curAll.setBooking_type(myRs.getString(5));
                curAll.setPhoneNumber(myRs.getInt(6));
                curAll.setDate(myRs.getString(7));
                curAll.setTime(myRs.getString(8));
                curAll.setStatus(myRs.getString(9));
                curAll.setBookingId(myRs.getInt(10));
                curBooking.add(curAll);
            }
        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return curBooking;
    }
    
    public List<table> bookingHistory(int userId) {
        List<table> curBooking = new ArrayList<table>();
        table curAll;
        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "SELECT subject.subject_id, subject.tutor, user.first_name, "
                    + "user.last_name, booking.booking_type, user.phone_number, "
                    + "booking.date, booking.time, booking.status, booking.booking_id FROM ((booking"
                    + " INNER JOIN user ON booking.user_id = user.user_id) "
                    + "INNER JOIN subject ON booking.subject_id = subject.subject_id) where booking.user_id="+userId+";";
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                curAll = new table();
                curAll.setSubject_id(myRs.getString(1));
                curAll.setTutor(myRs.getString(2));
                curAll.setFirstName(myRs.getString(3));
                curAll.setLastName(myRs.getString(4));
                curAll.setBooking_type(myRs.getString(5));
                curAll.setPhoneNumber(myRs.getInt(6));
                curAll.setDate(myRs.getString(7));
                curAll.setTime(myRs.getString(8));
                curAll.setStatus(myRs.getString(9));
                curAll.setBookingId(myRs.getInt(10));
                curBooking.add(curAll);
            }
        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return curBooking;
    }

    public List<Booking> retrieveBooking(int userId) {
        List<Booking> myBooking = new ArrayList<Booking>();
        Booking book;

        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "SELECT booking.booking_id, booking.booking_type,"
                    + " booking.date, booking.time, subject.name, subject.price, "
                    + "subject.tutor, booking.status FROM booking INNER JOIN "
                    + "subject ON booking.subject_id = subject.subject_id "
                    + "WHERE booking.user_id =" + userId;
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                book = new Booking();
                book.setBooking_id(myRs.getInt(1));
                book.setBooking_type(myRs.getString(2));
                book.setDate(myRs.getString(3));
                book.setTime(myRs.getString(4));
                book.setSubjectName(myRs.getString(5));
                book.setPrice(myRs.getInt(6));
                book.setTutor(myRs.getString(7));
                book.setStatus(myRs.getString(8));
                myBooking.add(book);
            }
        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return myBooking;
    }

    public List<Booking> retrieveAllSubject() {
        List<Booking> allSubject = new ArrayList<Booking>();
        Booking All;

        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from subject";
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                All = new Booking();
                All.setSubject_id(myRs.getString(1));
                All.setSubjectName(myRs.getString(2));
                All.setPrice(myRs.getInt(3));
                All.setTutor(myRs.getString(4));
                allSubject.add(All);
            }
        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return allSubject;
    }

    
    public Booking viewbookingById(int bookingId) {
        Booking book = new Booking();
        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from booking where booking_id=" + bookingId;
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                book.setBooking_type(myRs.getString(2));
                book.setDate(myRs.getString(3));
                book.setTime(myRs.getString(4));
                book.setSubject_id(myRs.getString(5));
                book.setEmail(myRs.getString(6));
            }
        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return book;
    }
    
    
    
    

    public int updateBooking(Booking book) {
        try {
            String mySqlQuery = "update booking set booking_type=?, date=?,"
                    + " time=?, email=?, subject_id=? where booking_id=?;";

            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setString(1, book.getBooking_type());
            myPs.setString(2, book.getDate());
            myPs.setString(3, book.getTime());
             myPs.setString(4, book.getEmail());
            myPs.setString(5, book.getSubject_id());
            myPs.setInt(6, book.getBooking_id());
            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return result;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    

    public int deleteBooking(int bookingId) {
        try {
            String mySqlQuery = "delete from booking where booking_id=?";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setInt(1, bookingId);
            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return result;
    }
    
    public int ApproveBooking( int bookingId) {
        try {
            String mySqlQuery = "update booking set status=? "
                    + " where booking_id=?;";

            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setString(1, "Diterima");
            myPs.setInt(2, bookingId);
            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return result;
    }
    
    public int RejectBooking( int bookingId) {
        try {
            String mySqlQuery = "update booking set status=? "
                    + " where booking_id=?;";

            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setString(1, "Ditolak");
            myPs.setInt(2, bookingId);
            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return result;
    }
    
    public List<Booking> retrieveAllBooking() {
        List<Booking> allBooking = new ArrayList<Booking>();
        Booking All;

        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from booking";
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                All = new Booking();
                All.setBooking_id(myRs.getInt(1));
                All.setBooking_type(myRs.getString(2));
                All.setDate(myRs.getString(3));
                All.setTime(myRs.getString(4));
                All.setStatus(myRs.getString(5));
                All.setSubject_id(myRs.getString(6));
                All.setUser_id(myRs.getInt(7));
                allBooking.add(All);
            }
        } catch (Exception e) {
            System.out.println("Exception is ;" + e);
        }
        return allBooking;
    }
    

}
