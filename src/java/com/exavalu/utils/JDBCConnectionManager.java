package com.exavalu.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.time.LocalDateTime;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;

/**
 * Description: The JDBCConnectionManager public class represents the connection
 * between the MySQL database with the backend 1. import --->java.sql 2. load
 * and register the driver ---> com.jdbc. 3. create connection 4. create a
 * statement 5. execute the query 6. process the results 7. close
 *
 * @author kumar
 */
public final class JDBCConnectionManager {

    private JDBCConnectionManager() {
    }

    private static final Logger log = Logger.getLogger(JDBCConnectionManager.class.getName());
    public static JDBCConnectionManager connectionManager = null;
    public static Connection connection = null;

    public static synchronized Connection getConnection() {

        JDBCUtility jdbcUtility = JDBCUtility.getInstanceOfJDBCUtility();

        String user = jdbcUtility.getPropertyValue("user");
        String password = jdbcUtility.getPropertyValue("pass");
        String dbNname = jdbcUtility.getPropertyValue("dbName");
        String url = jdbcUtility.getPropertyValue("url");

        try {
            System.out.println("Connection -> " + connection);
            if (connection == null) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(url + dbNname, user, password);
            }

        } catch (ClassNotFoundException | SQLException e) {
            if (log.isEnabledFor(Level.ERROR)) {
                String errorMessage = LocalDateTime.now() + "-- Error in the getConnection Process !!!!!" + " Error Code: " + e.getMessage();
                log.error(errorMessage);
            }
        }

        return connection;
    }

}
