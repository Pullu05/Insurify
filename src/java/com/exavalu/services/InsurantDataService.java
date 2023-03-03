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
import org.apache.log4j.Logger;

/**
 *
 * @author Admin
 */
public class InsurantDataService {

    private static final Logger logger = Logger.getLogger(InsurantDataService.class);

    public static boolean doInsurantDataEntry(InsurantData insurantData) {
        boolean result = false;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO insurantdata (email,firstName,lastName,aadhaarNo,age,medicalRecord,gender,streetAddress,country,zipCode,occupation,hobbies,website) VALUES (?, ?, ? , ? , ? , ? , ? , ? , ? , ? , ? , ?, ?)";
            PreparedStatement preparedStatement = con.prepareStatement(sql);

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
//                preparedStatement.setString(12, insurantData.getPicture());

            System.out.println("sql:" + preparedStatement);

            int row = preparedStatement.executeUpdate();
            if (row == 1) {
                result = true;
            }

        } catch (SQLException ex) {
//            logger.error(ex.getMessage());
            ex.printStackTrace();
        }
        return result;

    }

    public static int getDriverWeightage(InsurantData insurantData) {
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
        }

        try {

            Connection con = JDBCConnectionManager.getConnection();

            String sql = "SELECT weightage from driverinfo where id=?";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setInt(1, weightageId);

            System.out.println("SQL: " + preparedStatement);

            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                weightageValue = rs.getInt(1);
            }
            System.out.println("DriverInfo Weightage: " + weightageValue);

        } catch (SQLException ex) {
            ex.getMessage();
        }

        return weightageValue;
    }
}
