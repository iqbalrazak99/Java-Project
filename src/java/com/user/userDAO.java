/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.user;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author User
 */
public class userDAO {

    private final Connection connection;
    private int result;

    public userDAO() {
        connection = DBConnection.getConnection();
    }

    public int addUser(user user) {
        try {
            String mySqlQuery = "insert into user(first_name, last_name, email, phone_number, password, user_type)"
                    + " values(?,?,?,?,?,?)";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setString(1, user.getFirstName());
            myPs.setString(2, user.getLastName());
            myPs.setString(3, user.getEmail());
            myPs.setInt(4, user.getPhoneNumber());
            myPs.setString(5, user.getPassword());
            myPs.setString(6, user.getUserType());
            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return result;
    }

    public user login(String Email, String Password) {
        user user = new user();
        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from user where email='"
                    + Email + "' AND password='" + Password + "'";
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                user.setUserId(myRs.getInt(1));
                user.setFirstName(myRs.getString(2));
                user.setLastName(myRs.getString(3));
                user.setEmail(myRs.getString(4));
                user.setPhoneNumber(myRs.getInt(5));
                user.setPassword(myRs.getString(6));
                user.setUserType(myRs.getString(7));
            }
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return user;
    }
    
    public user retrieveById(int userId) {
        user user = new user();
        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from user where user_id="+userId;
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                user.setUserId(myRs.getInt(1));
                user.setFirstName(myRs.getString(2));
                user.setLastName(myRs.getString(3));
                user.setEmail(myRs.getString(4));
                user.setPhoneNumber(myRs.getInt(5));
                user.setPassword(myRs.getString(6));
                user.setUserType(myRs.getString(7));
            }
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return user;
    }
    
    public int updateUser(user user) {
        try {
            String mySqlQuery = "update user set email=?,"
                    + " password=?, phone_number=? where user_id=?";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setString(1, user.getEmail());
            myPs.setString(2, user.getPassword());
            myPs.setInt(3, user.getPhoneNumber());
            myPs.setInt(4, user.getUserId());
            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return result;
    }
}
