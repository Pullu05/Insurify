/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.utils;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Date;
import java.util.Properties;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;

/**
 *
 * @author Avijit Chattopadhyay
 */
public final class JDBCUtility {

    private static final Logger log = Logger.getLogger(JDBCUtility.class.getName());
    public static JDBCUtility jdbcUtility = null;

    private JDBCUtility() {
    }

    /**
     *
     * Description: It is the Instance method for JDBCUtility class
     *
     * @return It returns the created object of JDBCUtility
     */
    public static synchronized JDBCUtility getInstanceOfJDBCUtility() {
        if (jdbcUtility == null) {
            jdbcUtility = new JDBCUtility();
        }
        return jdbcUtility;
    }

    // in this class we will have static methods to get the connection params
    public String getPropertyValue(String param) {

        String value = null;

        //input = getClass().getResourceAsStream("settings.properties"); // Property file path in classpath
        try {

            String path = JDBCUtility.class.getClassLoader().getResource("settings.properties").getPath();

            try (BufferedReader input = new BufferedReader(new FileReader(path))) {

                Properties prop = new Properties();

                prop.load(input);

                value = prop.getProperty(param);
            }

        } catch (IOException ex) {
            if (log.isEnabledFor(Level.ERROR)) {
                String errorMessage = "Error message: " + ex.getMessage() + " | Date: " + new Date();
                log.error(errorMessage);
            }
        }

        return value;
    }

}
