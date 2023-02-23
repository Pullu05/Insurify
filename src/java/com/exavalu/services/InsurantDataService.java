/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

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

    public static InsurantDataService insurantDataService = null;
    private static final Logger logger = Logger.getLogger(InsurantDataService.class);

    private InsurantDataService() {
    }

    public static InsurantDataService getInstance() {
        if (insurantDataService == null) {
            return new InsurantDataService();
        } else {
            return insurantDataService;
        }
    }

    public static boolean doInsurantDataEntry(InsurantData insurantData) {
        boolean result = false;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO insurantdata (insuranceDataId,firstName,lastName,dateOfBirth,gender,streetAddress,country,zipCode,occupation,hobbies,website,picture) VALUES (? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ? , ?)";
            PreparedStatement preparedStatement = con.prepareStatement(sql);

            preparedStatement.setInt(1, insurantData.getInsuranceDataId());
            preparedStatement.setString(2, insurantData.getFirstName());
            preparedStatement.setString(3, insurantData.getLastName());
            preparedStatement.setString(4, insurantData.getDateOfBirth());
            preparedStatement.setString(5, insurantData.getGender());
            preparedStatement.setString(6, insurantData.getStreetAddress());
            preparedStatement.setString(7, insurantData.getCountry());
            preparedStatement.setString(8, insurantData.getZipCode());
            preparedStatement.setString(9, insurantData.getOccupation());
            preparedStatement.setString(10, insurantData.getHobbies());
            preparedStatement.setString(11, insurantData.getWebsite());
//                preparedStatement.setString(12, insurantData.getPicture());

            System.out.println("sql:" + preparedStatement);

            int row = preparedStatement.executeUpdate();
            if (row == 1) {
                result = true;
            }

        } catch (SQLException ex) {
            logger.error(ex.getMessage());
        }
        return result;

    }
}
