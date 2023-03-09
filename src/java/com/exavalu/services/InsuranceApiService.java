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

/**
 *
 * @author Subhadip Sarkar
 */
public class InsuranceApiService {
     public static InsuranceApiService insuranceApiService = null;
    
    public  static InsuranceApiService getInstance()
    {
        if(insuranceApiService==null)
        {
            return new InsuranceApiService();
        }
        else
        {
            return insuranceApiService;
        }
    }

    public  int calculateWeightage(InsuranceAPIData insuranceData) {

        int weightage = 0;

        // Insurance status weightage
        if (insuranceData.getInsuranceStatus().equalsIgnoreCase("old")) {
            weightage -= 5;
        } else if (insuranceData.getInsuranceStatus().equalsIgnoreCase("new")) {
            weightage += 5;
        }

        // Insurance history weightage
        if (insuranceData.getInsuranceHistory().equalsIgnoreCase("good")) {
            weightage -= 5;
        } else if (insuranceData.getInsuranceHistory().equalsIgnoreCase("bad")) {
            weightage += 5;
        } else if (insuranceData.getInsuranceHistory().equalsIgnoreCase("average")) {
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

    public  boolean storeIntoDB(InsuranceAPIData insuranceData) {
        boolean result = false;
        try {

            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO insuranceapi(aadhaarNo, insuranceStatus, insuranceHistory, amountClaimed, drivingExperience, weightage)" + "VALUES(?,?,?,?,?,?)";

            PreparedStatement preparedStatement = con.prepareStatement(sql);

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

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return result;

    }

    public  int getInsuranceApiWeightage(String aadhaarNo) {
        int weightage = 0;
        InsuranceAPIData insuranceData = new InsuranceAPIData();

        try {

            Connection con = JDBCConnectionManager.getConnection();
            String sql = "SELECT * FROM insuranceapi WHERE aadhaarNo=?";

            PreparedStatement preparedStatement = con.prepareStatement(sql);

            preparedStatement.setString(1, aadhaarNo);
            System.out.println("SQL -> " + preparedStatement);

            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                insuranceData.setInsuranceStatus(rs.getString("insuranceStatus"));
                insuranceData.setInsuranceHistory(rs.getString("insuranceHistory"));
                insuranceData.setAmountClaimed(rs.getInt("amountClaimed"));
                insuranceData.setDrivingExperience(rs.getInt("drivingExperience"));
                insuranceData.setWeightage(rs.getInt("weightage"));
                insuranceData.setAadhaarNo(rs.getString("aadhaarNo"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        weightage = insuranceData.getWeightage();
        return weightage;

    }
}
