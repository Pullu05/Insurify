package com.exavalu.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.time.LocalDateTime;
import org.apache.log4j.Logger;

/**
 *
 * @author Avijit Chattopadhyay
 */
public class JDBCConnectionManager {

    public static JDBCConnectionManager connectionManager = null;
    public static Connection connection = null;

    public static Connection getConnection() {

        JDBCUtility jdbcUtility = JDBCUtility.getInstanceOfJDBCUtility();

        String user = jdbcUtility.getPropertyValue("user");
        String password = jdbcUtility.getPropertyValue("pass");
        String dbNname = jdbcUtility.getPropertyValue("dbName");
        String url = jdbcUtility.getPropertyValue("url");
        
        System.out.println("URL ="+url);

        try {

            if (connection == null) {

                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(
                        url + dbNname, user, password);

            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            Logger log = Logger.getLogger(JDBCConnectionManager.class.getName());
            log.error(LocalDateTime.now() + "-- Error in the getConnection Process !!!!!" + " Error Code: " + e.getMessage());
        }

        return connection;
    }

}
