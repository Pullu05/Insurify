/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.InsurantData;
import com.exavalu.utils.JDBCConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;

/**
 * Description: The InsurantDataService public class represents a class that
 * will contain the methods to insert the insurant data to the DB, and
 * categorize the weightage based on medical report
 *
 * @author Admin
 */
public final class InsurantDataService {

    private static final Logger log = Logger.getLogger(InsurantDataService.class.getName());
    public static InsurantDataService insurantDataService = null;

    private InsurantDataService() {
    }

    /**
     *
     * Description: It is the Instance method for DriverInfoService class
     *
     * @return It returns the created object of DriverInfoService
     */
    public static synchronized InsurantDataService getInstance() {
        if (insurantDataService == null) {
            insurantDataService = new InsurantDataService();
        }
        return insurantDataService;
    }

    /**
     *
     * Description: The doInsurantDataEntry method is used to Insert the
     * client-side Insurant Data into the DB
     *
     * @param insurantData Data insurance data which is given by the user while
     * filling the client-side form
     *
     * @return this method returns a boolean type which denotes the status of
     * inserting the client-side Insurant Data into the DB( True if successfully
     * inserted to the DB, otherwise False )
     */
    public boolean doInsurantDataEntry(InsurantData insurantData) {
        boolean result = false;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO insurantdata (email,firstName,lastName,aadhaarNo,age,medicalRecord,gender,streetAddress,country,zipCode,occupation,hobbies,website) VALUES (?, ?, ? , ? , ? , ? , ? , ? , ? , ? , ? , ?, ?)";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                preparedStatement.setString(1, insurantData.getEmail());
                preparedStatement.setString(2, insurantData.getFirstName());
                preparedStatement.setString(3, insurantData.getLastName());
                preparedStatement.setString(4, insurantData.getAadhaarNo());
                preparedStatement.setInt(5, insurantData.getAge());
                preparedStatement.setString(6, insurantData.getMedicalRecord());
                preparedStatement.setString(7, insurantData.getGender());
                preparedStatement.setString(8, insurantData.getStreetAddress());
                preparedStatement.setString(9, insurantData.getCountry());
                preparedStatement.setInt(10, insurantData.getZipCode());
                preparedStatement.setString(11, insurantData.getOccupation());
                preparedStatement.setString(12, insurantData.getHobbies());
                preparedStatement.setString(13, insurantData.getWebsite());

                System.out.println("sql:" + preparedStatement);

                int row = preparedStatement.executeUpdate();
                if (row == 1) {
                    result = true;
                }
            }

        } catch (SQLException ex) {
            if (log.isEnabledFor(Level.ERROR)) {
                String errorMessage = "Error code: " + ex.getErrorCode() + " | Error message: " + ex.getMessage() + " | Date: " + new Date();
                log.error(errorMessage);
            }
        }
        return result;

    }

    /**
     *
     * Description: The getDriverWeightage method is used to get the Driver
     * Weightage using id , as well as set the weightage value for different
     * medical record category
     *
     * @param insurantData insurance data which is given by the user while
     * filling the client-side form
     *
     * @return this method returns weightage of a driver using id
     */
    public int getDriverWeightage(InsurantData insurantData) {
        //DriverInfo driverInfo = new DriverInfo();

        int weightageId = 0;
        int weightageValue = 0;

        switch (insurantData.getMedicalRecord()) {
            case "Bad":
                if (insurantData.getAge() >= 18 && insurantData.getAge() < 30) {
                    weightageId = 1;
                } else if (insurantData.getAge() >= 30 && insurantData.getAge() < 50) {
                    weightageId = 2;
                } else if (insurantData.getAge() >= 50 && insurantData.getAge() <= 75) {
                    weightageId = 3;
                }
                break;

            case "Average":
                if (insurantData.getAge() >= 18 && insurantData.getAge() < 30) {
                    weightageId = 4;
                } else if (insurantData.getAge() >= 30 && insurantData.getAge() < 50) {
                    weightageId = 5;
                } else if (insurantData.getAge() >= 50 && insurantData.getAge() <= 75) {
                    weightageId = 6;
                }
                break;

            case "Good":
                if (insurantData.getAge() >= 18 && insurantData.getAge() < 30) {
                    weightageId = 7;
                } else if (insurantData.getAge() >= 30 && insurantData.getAge() < 50) {
                    weightageId = 8;
                } else if (insurantData.getAge() >= 50 && insurantData.getAge() <= 75) {
                    weightageId = 9;
                }
                break;

            default:
                System.out.println("Something went wrong!");
                break;
        }

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "SELECT weightage from driverinfo where id=?";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                preparedStatement.setInt(1, weightageId);

                System.out.println("SQL: " + preparedStatement);

                try (ResultSet rs = preparedStatement.executeQuery()) {
                    if (rs.next()) {
                        weightageValue = rs.getInt(1);
                    }
                    System.out.println("DriverInfo Weightage: " + weightageValue);
                }

            }

        } catch (SQLException ex) {
            if (log.isEnabledFor(Level.ERROR)) {
                String errorMessage = "Error code: " + ex.getErrorCode() + " | Error message: " + ex.getMessage() + " | Date: " + new Date();
                log.error(errorMessage);
            }
        }

        return weightageValue;
    }
}
