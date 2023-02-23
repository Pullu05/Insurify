/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.Vehicle;
import com.exavalu.utils.JDBCConnectionManager;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import org.apache.log4j.Logger;

/**
 *
 * @author Admin
 */
public class VehicleDataService {

    public static boolean doVehicleDataEntry(Vehicle vehicle) {
        boolean result = false;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO vehicle (enginePerformance,numberOfSeats,listPrice,annualMileage,licensePlateNumber,make,fuelType,dateOfManufacture) VALUES (? , ? , ? , ? , ? , ? , ? , ? )";
            PreparedStatement preparedStatement = con.prepareStatement(sql);

            preparedStatement.setInt(1, vehicle.getEnginePerformance());
            preparedStatement.setInt(2, vehicle.getNumberOfSeats());
            preparedStatement.setInt(3, vehicle.getListPrice());
            preparedStatement.setInt(4, vehicle.getAnnualMileage());

            preparedStatement.setString(5, vehicle.getLicensePlateNumber());

            preparedStatement.setString(6, vehicle.getMake());
            preparedStatement.setString(7, vehicle.getFuelType());
            preparedStatement.setDate(8, (Date) vehicle.getDateOfManufacture());


            int row = preparedStatement.executeUpdate();
            if (row == 1) {
                result = true;
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return result;

    }
}
