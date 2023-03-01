/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.Vehicle;
import com.exavalu.models.VehicleInfo;
import com.exavalu.utils.JDBCConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
            String sql = "INSERT INTO vehicle(vin,enginePerformance,numberOfSeats,listPrice,annualMileage,licensePlateNumber,make,fuelType,dateOfManufacture,email,model)" +"VALUES(?, ? , ? , ? , ? , ? , ? , ? , ?, ?,? )";
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
             preparedStatement.setString(11, vehicle.getModel());
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
    
    public static int getVehicleWeightage(Vehicle vehicle) {
        int weightageValue = 0;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "SELECT weightage from vehicleinfo where vehicleMake=? and vechicleModel=?";
            PreparedStatement preparedStatement = con.prepareStatement(sql);

            preparedStatement.setString(1, vehicle.getMake());
            preparedStatement.setString(2, vehicle.getModel());
           
            System.out.println("SQL: " + preparedStatement);

            ResultSet rs = preparedStatement.executeQuery();
            
            if (rs.next()) {
                weightageValue = rs.getInt(1);             
            }
            System.out.println("Vehicle Weightage: "+weightageValue);

        } catch (SQLException ex) {
            ex.getMessage();
        }

        return weightageValue;
    }
    
}
