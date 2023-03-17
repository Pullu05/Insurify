/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.InsuranceAPIData;
import com.exavalu.utils.JDBCConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;

/**
 * Description: The InsuranceApiService public class represents a class that
 * will contain the methods to insert the insurance record of a particular
 * driver, calculate the weightage based on the data fetched from the API call
 * and store it in the DB also, get the weightage of a driver using Aadhaar
 * number
 *
 * @author Subhadip Sarkar
 */
public final class InsuranceApiService {

    private static final Logger log = Logger.getLogger(InsuranceApiService.class.getName());
    public static InsuranceApiService insuranceApiService = null;

    private InsuranceApiService() {
    }

    /**
     *
     * Description: It is the Instance method for InsuranceApiService class
     *
     * @return It returns the created object of InsuranceApiService
     */
    public static synchronized InsuranceApiService getInstance() {
        if (insuranceApiService == null) {
            insuranceApiService = new InsuranceApiService();
        }
        return insuranceApiService;
    }

    /**
     *
     * Description: The calculateWeightage method is used to calculate the
     * Weightage of a driver on the basis of insurance history and driver
     * experience, Both of these are fetched from the API
     *
     * @param insuranceData insurance data fetched from API which is nused to
     * calculate the weightage
     *
     * @return this method returns the calculated Weightage
     */
    public int calculateWeightage(InsuranceAPIData insuranceData) {
        int weightage = 0;

        // Insurance status weightage
        if ("old".equalsIgnoreCase(insuranceData.getInsuranceStatus())) {
            weightage -= 5;
        } else if ("new".equalsIgnoreCase(insuranceData.getInsuranceStatus())) {
            weightage += 5;
        }

        // Insurance history weightage
        if ("good".equalsIgnoreCase(insuranceData.getInsuranceHistory())) {
            weightage -= 5;
        } else if ("bad".equalsIgnoreCase(insuranceData.getInsuranceHistory())) {
            weightage += 5;
        } else if ("average".equalsIgnoreCase(insuranceData.getInsuranceHistory())) {
            weightage += 3;
        }

        // Driving experience weightage
        if (insuranceData.getDrivingExperience() >= 0 && insuranceData.getDrivingExperience() <= 10) {
            weightage += 5;
        } else if (insuranceData.getDrivingExperience() > 10 && insuranceData.getDrivingExperience() <= 20) {
            weightage += 4;
        } else if (insuranceData.getDrivingExperience() > 10 && insuranceData.getDrivingExperience() <= 20) {
            weightage += 3;
        } else if (insuranceData.getDrivingExperience() > 20 && insuranceData.getDrivingExperience() <= 30) {
            weightage += 2;
        }
        // Amount claimed weightage
        if (insuranceData.getAmountClaimed() >= 50000) {
            weightage += 10;
        } else if (insuranceData.getAmountClaimed() > 30000) {
            weightage += 7;
        } else if (insuranceData.getAmountClaimed() > 10000) {
            weightage += 5;
        } else if (insuranceData.getAmountClaimed() > 5000) {
            weightage += 3;
        }

        return weightage;
    }

    /**
     *
     * Description: The storeIntoDB method is basically used for storing the
     * Insurance history Data along-with Aadhaar Number (Fetched from API) to
     * the DB
     *
     * @param insuranceData insurance data fetched from API
     *
     * @return this method returns a boolean type which denotes the status of
     * storing the Insurance history Data to the DB( True if successfully stored
     * to the DB, otherwise False )
     */
    public boolean storeIntoDB(InsuranceAPIData insuranceData) {
        boolean result = false;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO insuranceapi(aadhaarNo, insuranceStatus, insuranceHistory, amountClaimed, drivingExperience, weightage)" + "VALUES(?,?,?,?,?,?)";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                preparedStatement.setString(1, insuranceData.getAadhaarNo());
                preparedStatement.setString(2, insuranceData.getInsuranceStatus());
                preparedStatement.setString(3, insuranceData.getInsuranceHistory());
                preparedStatement.setInt(4, insuranceData.getAmountClaimed());
                preparedStatement.setInt(5, insuranceData.getDrivingExperience());
                preparedStatement.setInt(6, insuranceData.getWeightage());

                int row = preparedStatement.executeUpdate();

                System.out.println("SQl=" + preparedStatement);
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
     * Description: The getInsuranceApiWeightage method is used to get the
     * calculated weightage using Aadhaar number
     *
     * @param aadhaarNo Aadhaar Number is used to uniquely identify particular
     * weightage of a insurance type
     *
     * @return this method returns the fetched weightage from the DB
     */
    public int getInsuranceApiWeightage(String aadhaarNo) {
        int weightage = 0;
        InsuranceAPIData insuranceData = new InsuranceAPIData();

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "SELECT * FROM insuranceapi WHERE aadhaarNo=?";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                preparedStatement.setString(1, aadhaarNo);

                try (ResultSet rs = preparedStatement.executeQuery()) {
                    if (rs.next()) {
                        insuranceData.setInsuranceStatus(rs.getString("insuranceStatus"));
                        insuranceData.setInsuranceHistory(rs.getString("insuranceHistory"));
                        insuranceData.setAmountClaimed(rs.getInt("amountClaimed"));
                        insuranceData.setDrivingExperience(rs.getInt("drivingExperience"));
                        insuranceData.setWeightage(rs.getInt("weightage"));
                        insuranceData.setAadhaarNo(rs.getString("aadhaarNo"));
                    }
                }
            }

        } catch (SQLException ex) {
            if (log.isEnabledFor(Level.ERROR)) {
                String errorMessage = "Error code: " + ex.getErrorCode() + " | Error message: " + ex.getMessage() + " | Date: " + new Date();
                log.error(errorMessage);
            }
        }

        weightage = insuranceData.getWeightage();
        return weightage;

    }
}
