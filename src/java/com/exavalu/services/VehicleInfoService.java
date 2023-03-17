/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.VehicleInfo;
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
 * Description: The VehicleInfoService public class represents a class that will
 * contain the methods to get all Vehicle information, to add Vehicle
 * information to the existing details, to edit/update Vehicle details
 *
 * @author kumar
 */
public final class VehicleInfoService {

    private static final Logger log = Logger.getLogger(VehicleInfoService.class.getName());
    public static VehicleInfoService vehicleInfoService = null;

    private VehicleInfoService() {
    }

    /**
     *
     * Description: It is the Instance method for VehicleInfoService class
     *
     * @return It returns the created object of VehicleInfoService
     */
    public static synchronized VehicleInfoService getInstance() {
        if (vehicleInfoService == null) {
            vehicleInfoService = new VehicleInfoService();
        }
        return vehicleInfoService;
    }

    /**
     *
     * Description: The getAllVehicleInfo method is used to get all the details
     * of Vehicle Information
     *
     * @return list of all Vehicle Information
     */
    public List<VehicleInfo> getAllVehicleInfo() {
        List<VehicleInfo> vehicleInfoList = new ArrayList<>();

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "SELECT * from vehicleinfo";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                try (ResultSet rs = preparedStatement.executeQuery()) {
                    while (rs.next()) {
                        VehicleInfo vehicleInfo = new VehicleInfo();

                        vehicleInfo.setVehicleId(rs.getInt("vehicleId"));
                        vehicleInfo.setVehicleMake(rs.getString("vehicleMake"));
                        vehicleInfo.setVehicleModel(rs.getString("vechicleModel"));
                        vehicleInfo.setDateOfManufacture(rs.getString("dateOfManufacture"));
                        vehicleInfo.setWeightage(rs.getInt("weightage"));

                        vehicleInfoList.add(vehicleInfo);
                    }
                }
            }
        } catch (SQLException ex) {
            if (log.isEnabledFor(Level.ERROR)) {
                String errorMessage = "Error code: " + ex.getErrorCode() + " | Error message: " + ex.getMessage() + " | Date: " + new Date();
                log.error(errorMessage);
            }
        }

        System.out.println("Number of Vehicles = " + vehicleInfoList.size());
        return vehicleInfoList;
    }

    /**
     *
     * Description: The addVehicleInfo method is used to add the
     * details/information of a new vehicle
     *
     * @param vehicleInfo Information about the vehicle
     * @return this method returns a boolean type which denotes the status of
     * adding the new vehicle details( True if successfully added to the DB,
     * otherwise False )
     */
    public boolean addVehicleInfo(VehicleInfo vehicleInfo) {
        boolean result = false;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO vehicleInfo(vehicleMake,vechicleModel,dateOfManufacture,weightage) "
                    + "VALUES(? ,? ,? ,?)";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                preparedStatement.setString(1, vehicleInfo.getVehicleMake());
                preparedStatement.setString(2, vehicleInfo.getVehicleModel());
                preparedStatement.setString(3, vehicleInfo.getDateOfManufacture());
                preparedStatement.setInt(4, vehicleInfo.getWeightage());

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
     * Description: The getVehicleInfo method is used to get the
     * details/information of a particular vehicle using it's id
     *
     * @param vehicleId it is the id of VehicleInfo
     * @return this method returns the desired vehicle's information
     */
    public VehicleInfo getVehicleInfo(int vehicleId) {
        VehicleInfo vehicleInfo = new VehicleInfo();

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "SELECT * from vehicleInfo where vehicleId =?";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                preparedStatement.setInt(1, vehicleId);

                try (ResultSet rs = preparedStatement.executeQuery()) {
                    while (rs.next()) {
                        vehicleInfo.setVehicleId(rs.getInt("vehicleId"));
                        vehicleInfo.setVehicleMake(rs.getString("vehicleMake"));
                        vehicleInfo.setVehicleModel(rs.getString("vechicleModel"));
                        vehicleInfo.setDateOfManufacture(rs.getString("dateOfManufacture"));
                        vehicleInfo.setWeightage(rs.getInt("weightage"));
                    }
                }
            }
        } catch (SQLException ex) {
            if (log.isEnabledFor(Level.ERROR)) {
                String errorMessage = "Error code: " + ex.getErrorCode() + " | Error message: " + ex.getMessage() + " | Date: " + new Date();
                log.error(errorMessage);
            }
        }

        return vehicleInfo;
    }

    /**
     *
     * Description: The updateVehicleInfo method is used to update the existing
     * details/information of a particular vehicle using it's id
     *
     * @param vehicleInfo The VehicleInfo object
     * @param vehicleId The id of the VehicleInfo
     * @return this method returns a boolean type which denotes the status of
     * updating the existing vehicle details( True if successfully updated to
     * the DB, otherwise False )
     *
     */
    public boolean updateVehicleInfo(VehicleInfo vehicleInfo, int vehicleId) {
        boolean result = false;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "UPDATE vehicleInfo "
                    + "SET vehicleMake = ? , vechicleModel = ? , dateOfManufacture = ?, weightage = ? "
                    + "WHERE vehicleId = ?;";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                preparedStatement.setString(1, vehicleInfo.getVehicleMake());
                preparedStatement.setString(2, vehicleInfo.getVehicleModel());
                preparedStatement.setString(3, vehicleInfo.getDateOfManufacture());
                preparedStatement.setInt(4, vehicleInfo.getWeightage());

                preparedStatement.setInt(5, vehicleId);

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
}
