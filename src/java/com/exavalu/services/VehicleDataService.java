/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.Make;
import com.exavalu.models.Model;
import com.exavalu.models.Vehicle;
import com.exavalu.utils.JDBCConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Description: The VehicleDataService public class represents a class that will
 * contain the methods to insert the vehicle data to the DB, and categorize the
 * weightage based on vehicle make and model, get all makers and models for the vehicle data
 *
 * @author Admin
 */
public class VehicleDataService {

    public static VehicleDataService vehicleDataService = null;

    /**
     *
     * Description: It is the Instance method for VehicleDataService class
     *
     * @return It returns the created object of VehicleDataService
     */
    public static VehicleDataService getInstance() {
        if (vehicleDataService == null) {
            return new VehicleDataService();
        } else {
            return vehicleDataService;
        }
    }
    /**
     *
     * Description: The doVehicleDataEntry method is used to Insert the client-side Vehicle Data into the DB
     * @param vehicle  vehicle data which is given by the user while filling the client-side form
     * @param email email address of the user
     * @return this method returns a boolean type which denotes the status of
     * inserting the client-side Vehicle Data into the DB( True if successfully inserted to the DB,
     * otherwise False )
     */
    public boolean doVehicleDataEntry(Vehicle vehicle, String email) {
        boolean result = false;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO vehicle(vin,enginePerformance,numberOfSeats,listPrice,annualMileage,licensePlateNumber,make,fuelType,dateOfManufacture,email,model)" + "VALUES(?, ? , ? , ? , ? , ? , ? , ? , ?, ?,? )";
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
    /**
     *
     * Description: The getVehicleWeightage method is used to get the
     * Vehicle Weightage using id , as well as set the weightage value for different make and model
     * @param vehicle  vehicle data which is given by the user while filling the client-side form
     * @return this method returns weightage of a vehicle using id
     */
    public int getVehicleWeightage(Vehicle vehicle) {
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
            System.out.println("Vehicle Weightage: " + weightageValue);

        } catch (SQLException ex) {
            ex.getMessage();
        }

        return weightageValue;
    }
    /**
     *
     * Description: The getAllmakers method is used to get all makers of cars
     *
     * @return list of all makers of cars
     */
    public ArrayList getAllmakers() {
        ArrayList makeList = new ArrayList();

        String sql = "Select * from makers";

        try {
            Connection con = JDBCConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Make make = new Make();
                make.setMakeCode(rs.getString("makeCode"));
                make.setMakeName(rs.getString("makeName"));
                makeList.add(make);
            }
            System.out.println("MakeList :" + makeList.size());

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return makeList;
    }
    /**
     *
     * Description: The getAllmodels method is used to get all models for a particular car maker
     *
     * @return list of all models of a particular car maker
     */
    public ArrayList getAllmodels(String makeCode) {
        ArrayList modelList = new ArrayList();

        String sql = "Select * from models where makeCode = ?";

        try {
            Connection con = JDBCConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, makeCode);

            ResultSet rs = ps.executeQuery();
            System.err.println(ps);

            while (rs.next()) {
                Model model = new Model();
                model.setMakeCode(rs.getString("makeCode"));
                model.setModelCode(rs.getString("modelCode"));
                model.setModelName(rs.getString("modelName"));
                modelList.add(model);
            }
            System.out.println("ModelList :" + modelList.size());

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return modelList;
    }
}
