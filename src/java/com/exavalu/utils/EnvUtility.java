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
public final class EnvUtility {

    private static final Logger log = Logger.getLogger(EnvUtility.class.getName());
    public static EnvUtility envUtility = null;

    private EnvUtility() {
    }

    public static synchronized EnvUtility getInstanceOfEnvUtility() {
        if (envUtility == null) {
            envUtility = new EnvUtility();
        }
        return envUtility;
    }

    public String getPropertyValue(String param) {

        String value = null;

        try {
            String path = EnvUtility.class.getClassLoader().getResource(".env").getPath();

            try (BufferedReader input = new BufferedReader(new FileReader(path));) {

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
