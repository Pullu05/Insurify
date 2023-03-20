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
import java.util.Date;
import java.util.List;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;

/**
 * Description: The VehicleDataService public class represents a class that will
 * contain the methods to insert the vehicle data to the DB, and categorize the
 * weightage based on vehicle make and model, get all makers and models for the
 * vehicle data
 *
 * @author Admin
 */
public final class VehicleDataService {

    private static final Logger log = Logger.getLogger(VehicleDataService.class.getName());
    public static VehicleDataService vehicleDataService = null;

    private VehicleDataService() {
    }

    /**
     *
     * Description: It is the Instance method for VehicleDataService class
     *
     * @return It returns the created object of VehicleDataService
     */
    public static synchronized VehicleDataService getInstance() {
        if (vehicleDataService == null) {
            vehicleDataService = new VehicleDataService();
        }
        return vehicleDataService;
    }

    /**
     *
     * Description: The doVehicleDataEntry method is used to Insert the
     * client-side Vehicle Data into the DB
     *
     * @param vehicle vehicle data which is given by the user while filling the
     * client-side form
     * @param email email address of the user
     * @return this method returns a boolean type which denotes the status of
     * inserting the client-side Vehicle Data into the DB( True if successfully
     * inserted to the DB, otherwise False )
     */
    public boolean doVehicleDataEntry(Vehicle vehicle, String email) {
        boolean result = false;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO vehicle(vin,enginePerformance,numberOfSeats,listPrice,annualMileage,licensePlateNumber,make,fuelType,dateOfManufacture,email,model)" + "VALUES(?, ? , ? , ? , ? , ? , ? , ? , ?, ?,? )";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
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
            }
        } catch (SQLException ex) {
            if (log.isEnabledFor(Level.ERROR)) {
                String errorMessage = "Error code: " + ex.getErrorCode() + " | Error message: " + ex.getMessage() + " | Date: " + new Date();
                log.error(errorMessage);
            }
        }
        return result;

    }

    public boolean checkVehicleExistence(String vin) {
        boolean result = false;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "SELECT * from vehicle WHERE vin=?";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                preparedStatement.setString(1, vin);

                try (ResultSet rs = preparedStatement.executeQuery()) {
                    if (rs.next()) {
                        result = true;
                    }
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

    public boolean updateVehicleData(Vehicle vehicle, String email) {
        boolean result = false;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "UPDATE vehicle SET enginePerformance=?,numberOfSeats=?,listPrice=?,annualMileage=?,licensePlateNumber=?,make=?,fuelType=?,dateOfManufacture=?,email=?,model=? WHERE vin=?";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                preparedStatement.setInt(1, vehicle.getEnginePerformance());
                preparedStatement.setInt(2, vehicle.getNumberOfSeats());
                preparedStatement.setInt(3, vehicle.getListPrice());
                preparedStatement.setInt(4, vehicle.getAnnualMileage());
                preparedStatement.setString(5, vehicle.getLicensePlateNumber());
                preparedStatement.setString(6, vehicle.getMake());
                preparedStatement.setString(7, vehicle.getFuelType());
                preparedStatement.setString(8, vehicle.getDateOfManufacture());
                preparedStatement.setString(9, email);
                preparedStatement.setString(10, vehicle.getModel());
                preparedStatement.setString(11, vehicle.getVin());
                System.out.println("SQL: " + preparedStatement);

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
     * Description: The getVehicleWeightage method is used to get the Vehicle
     * Weightage using id , as well as set the weightage value for different
     * make and model
     *
     * @param vehicle vehicle data which is given by the user while filling the
     * client-side form
     * @return this method returns weightage of a vehicle using id
     */
    public int getVehicleWeightage(Vehicle vehicle) {
        int weightageValue = 0;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "SELECT weightage from vehicleinfo where vehicleMake=? and vechicleModel=?";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                preparedStatement.setString(1, vehicle.getMake());
                preparedStatement.setString(2, vehicle.getModel());

                System.out.println("SQL: " + preparedStatement);

                try (ResultSet rs = preparedStatement.executeQuery()) {
                    if (rs.next()) {
                        weightageValue = rs.getInt(1);
                    }
                    System.out.println("Vehicle Weightage: " + weightageValue);
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

    /**
     *
     * Description: The getAllMakers method is used to get all makers of cars
     *
     * @return list of all makers of cars
     */
    public List<Make> getAllMakers() {
        List<Make> makeList = new ArrayList<>();

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "Select * from makers order by makeName";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                try (ResultSet rs = preparedStatement.executeQuery()) {
                    while (rs.next()) {
                        Make make = new Make();
                        make.setMakeId(rs.getInt("makeId"));
                        make.setMakeName(rs.getString("makeName"));
                        makeList.add(make);
                    }
                    System.out.println("MakeList :" + makeList.size());
                }
            }
        } catch (SQLException ex) {
            if (log.isEnabledFor(Level.ERROR)) {
                String errorMessage = "Error code: " + ex.getErrorCode() + " | Error message: " + ex.getMessage() + " | Date: " + new Date();
                log.error(errorMessage);
            }
        }
        return makeList;
    }

    /**
     * Description: The getAllModels method is used to get all models for a
     * particular car maker
     *
     * @param makeName
     *
     * @return list of all models of a particular car maker
     */
    public List<Model> getAllModels(String makeName) {
        List<Model> modelList = new ArrayList<>();

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "Select * from models where makeName = ? order by modelName";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                preparedStatement.setString(1, makeName);

                try (ResultSet rs = preparedStatement.executeQuery()) {
                    while (rs.next()) {
                        Model model = new Model();
                        model.setMakeName(rs.getString("makeName"));
                        model.setModelId(rs.getInt("modelId"));
                        model.setModelName(rs.getString("modelName"));
                        modelList.add(model);
                    }
                }
            }
        } catch (SQLException ex) {
            if (log.isEnabledFor(Level.ERROR)) {
                String errorMessage = "Error code: " + ex.getErrorCode() + " | Error message: " + ex.getMessage() + " | Date: " + new Date();
                log.error(errorMessage);
            }
        }
        return modelList;
    }

    public boolean checkMakeExistence(String makeName) {
        boolean result = false;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "select * from makers where makeName=?";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                preparedStatement.setString(1, makeName);

                try (ResultSet rs = preparedStatement.executeQuery()) {
                    System.out.println("SQl=" + preparedStatement);
                    if (rs.next()) {
                        if (rs.getString("makeName") != null) {
                            result = true;
                        }
                    }
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

    public boolean addMake(String makeName) {
        boolean result = false;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO makers(makeName) " + "VALUES(?)";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                preparedStatement.setString(1, makeName);

                System.out.println("Add Make :: " + preparedStatement);

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

    public boolean addModel(String modelName, String makeName) {
        boolean result = false;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO models(modelName,makeName) " + "VALUES(? ,?)";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                preparedStatement.setString(1, modelName);
                preparedStatement.setString(2, makeName);

                System.out.println("Add Model :: " + preparedStatement);

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
}
