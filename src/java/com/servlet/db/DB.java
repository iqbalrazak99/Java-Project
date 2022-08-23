package com.servlet.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB implements java.io.Serializable {

    public static Connection connection;

    public static Connection getConnection() {
        try {
            //Step 1:Load the JDBC Driver
            Class.forName("com.mysql.jdbc.Driver");
            //Step 2: Establish a conection to mysql database
            String myUrl = "jdbc:mysql://localhost:3306/tuitionmanagementsystem";
            connection = DriverManager.getConnection(myUrl, "root", "");
        } catch (ClassNotFoundException | SQLException e) {
            e.getMessage();
        }
        return connection;
    }

    public void closeConnection() {

        try {
            connection.close();
        } catch (SQLException e) {
            e.getMessage();
        }
    }
}
