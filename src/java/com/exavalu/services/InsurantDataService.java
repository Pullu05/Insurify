/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.InsurantData;
import com.exavalu.utils.JDBCConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
            preparedStatement.setString(10, insurantData.getZipCode());
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
}
