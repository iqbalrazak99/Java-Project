/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.user;
import java.sql.*;

/**
 *
 * @author User
 */
public class AdminDAO {
    
    private final Connection connection;
    private int result;
    
    public AdminDAO(){
        connection = DBConnection.getConnection();
    }
    
    public Admin login(String Email, String Password) {
        Admin admin = new Admin();
        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from admin where email='"
                    + Email + "' AND password='" + Password + "'";
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                admin.setAdminId(myRs.getInt(1));
                admin.setAdminName(myRs.getString(2));
            }
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return admin;
    }
    
    public Admin retrieveById(int adminId) {
        Admin admin = new Admin();
        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from admin where admin_id="+adminId;
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                admin.setAdminId(myRs.getInt(1));
                admin.setAdminName(myRs.getString(2));
                admin.setPassword(myRs.getString(3));
                admin.setEmail(myRs.getString(4));
                admin.setPhoneNumber(myRs.getInt(5));
            }
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return admin;
    }
    
    public int UpdateAdmin(Admin admin) {
        try {
            String mySqlQuery = "update admin set password=?,"
                    + " email=?, phone_number=? where admin_id=?";
            PreparedStatement myPs = connection.prepareStatement(mySqlQuery);
            myPs.setString(1, admin.getPassword());
            myPs.setString(2, admin.getEmail());
            myPs.setInt(3, admin.getPhoneNumber());
            myPs.setInt(4, admin.getAdminId());
            result = myPs.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return result;
    }
    
    
}
