/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.Vehicle;
import com.exavalu.utils.JDBCConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class VehicleDataService {

    public static boolean doVehicleDataEntry(Vehicle vehicle,String email) {
        boolean result = false;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO vehicle(vin,enginePerformance,numberOfSeats,listPrice,annualMileage,licensePlateNumber,make,fuelType,dateOfManufacture,email)" +"VALUES(?, ? , ? , ? , ? , ? , ? , ? , ?, ? )";
            PreparedStatement preparedStatement = con.prepareStatement(sql);

            preparedStatement.setString(1, vehicle.getVin());
            preparedStatement.setInt(2, vehicle.getEnginePerformance());
            preparedStatement.setInt(3, vehicle.getNumberOfSeats());
            preparedStatement.setInt(4, vehicle.getListPrice());
            preparedStatement.setInt(5, vehicle.getAnnualMileage());
            preparedStatement.setString(6, vehicle.getLicensePlateNumber());
            preparedStatement.setString(7, vehicle.getMake());
            preparedStatement.setString(8, vehicle.getFuelType());
            preparedStatement.setString(9, vehicle.getDateOfManufacture());
            preparedStatement.setString(10, email);
            System.out.println("SQL: " + preparedStatement);

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
