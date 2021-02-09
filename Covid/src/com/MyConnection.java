package com;

import java.sql.Connection;
import java.sql.DriverManager;
//import com.mysql.jdbc.Connection;

public class MyConnection {

    static Connection con = null;

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/virus", "root", "Meenakshi@26");
            if (con != null) {
                System.out.println("Connected to Virus");
            }
        } catch (Exception ex) {
            System.out.println("From My Connection Class" + ex);
        }
        return con;
    }
}
