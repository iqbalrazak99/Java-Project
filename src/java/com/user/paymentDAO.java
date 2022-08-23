/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.user;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author IQBAL
 */
public class paymentDAO {
        private final Connection connection;
        
         public paymentDAO() {
        connection = DBConnection.getConnection();
    }
     public payment retrieveByfirstname(String firstname) {
        payment payment = new Payment();
        try {
            Statement myStatement = connection.createStatement();
            String myQuery = "select * from employee where firstname="+firstname;
            ResultSet myRs = myStatement.executeQuery(myQuery);
            while (myRs.next()) {
                payment.setid(myRs.getInt(1));
                payment.setfirstname(myRs.getString(2));
                payment.setlastname(myRs.getString(3));
                payment.setfilename(myRs.getString(4));
               payment.setpath(myRs.getString(5));
                payment.setadded_date(myRs.getString(6));
            }
        } catch (Exception e) {
            System.out.println("Exception is :" + e);
        }
        return payment;
    }

    private static class Payment extends payment {

        public Payment() {
        }
    }

    private static class connection {

        private static Statement createStatement() {
            throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }

        public connection() {
        }
    }
}
