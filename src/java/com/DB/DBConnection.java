
package com.DB;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;


public class DBConnection {

    public static Connection getCon() {
        Connection con = null;
        try {

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineprojectmanagement", "root", "root");
            System.out.println("connected.....");

        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }

}
