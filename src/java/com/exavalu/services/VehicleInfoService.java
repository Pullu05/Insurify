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

/**
 * Description: The VehicleInfoService public class represents a class that will
 * contain the methods to get all Vehicle information, to add Vehicle information
 * to the existing details, to edit/update Vehicle details
 * @author kumar
 */
public class VehicleInfoService {
    public static VehicleInfoService vehicleInfoService= null;
        /**
     *
     * Description: It is the Instance method for VehicleInfoService class
     *
     * @return It returns the created object of VehicleInfoService
     */
    public static VehicleInfoService getInstance()
    {
        if(vehicleInfoService==null)
        {
            return new VehicleInfoService();
        }
        else
        {
            return vehicleInfoService;
        }
    }
    /**
     *
     * Description: The getAllVehicleInfo method is used to get all the details
     * of Vehicle Information
     *
     * @return list of all Vehicle Information
     */
    public ArrayList getAllVehicleInfo() {
        ArrayList vehicleInfoList = new ArrayList();
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "SELECT * from vehicleinfo";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                VehicleInfo vehicleInfo = new VehicleInfo();

                vehicleInfo.setVehicleId(rs.getInt("vehicleId"));
                vehicleInfo.setVehicleMake(rs.getString("vehicleMake"));
                vehicleInfo.setVehicleModel(rs.getString("vechicleModel"));
                vehicleInfo.setDateOfManufacture(rs.getString("dateOfManufacture"));
                vehicleInfo.setWeightage(rs.getInt("weightage"));

                vehicleInfoList.add(vehicleInfo);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        System.out.println("Number of Vehicles = " + vehicleInfoList.size());
        return vehicleInfoList;
    }
    /**
     *
     * Description: The AddVehicleInfo method is used to add the
     * details/information of a new vehicle
     * @param vehicleInfo  Information about the vehicle
     * @return this method returns a boolean type which denotes the status of
     * adding the new vehicle details( True if successfully added to the DB,
     * otherwise False )
     */
    public boolean AddVehicleInfo(VehicleInfo vehicleInfo) {
        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO vehicleInfo(vehicleMake,vechicleModel,dateOfManufacture,weightage) "
                    + "VALUES(? ,? ,? ,?)";

            PreparedStatement preparedStatement = con.prepareStatement(sql);

            preparedStatement.setString(1, vehicleInfo.getVehicleMake());
            preparedStatement.setString(2, vehicleInfo.getVehicleModel());
            preparedStatement.setString(3, vehicleInfo.getDateOfManufacture());
            preparedStatement.setInt(4, vehicleInfo.getWeightage());

            int row = preparedStatement.executeUpdate();

            System.out.println("SQl=" + preparedStatement);
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
     * Description: The getVehicleInfo method is used to get the
     * details/information of a particular vehicle using it's id
     * @param vehicleId it is the id of VehicleInfo
     * @return this method returns the desired vehicle's information
     */
    public VehicleInfo getVehicleInfo(int vehicleId) {
        VehicleInfo vehicleInfo = new VehicleInfo();

        try {
            Connection con = JDBCConnectionManager.getConnection();

            String sql = "SELECT * from vehicleInfo where vehicleId =?";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setInt(1, vehicleId);

            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                vehicleInfo.setVehicleId(rs.getInt("vehicleId"));
                vehicleInfo.setVehicleMake(rs.getString("vehicleMake"));
                vehicleInfo.setVehicleModel(rs.getString("vechicleModel"));
                vehicleInfo.setDateOfManufacture(rs.getString("dateOfManufacture"));
                vehicleInfo.setWeightage(rs.getInt("weightage"));
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return vehicleInfo;
    }
    /**
     *
     * Description: The updateVehicleInfo method is used to update the existing
     * details/information of a particular vehicle using it's id
     * @param vehicleInfo  The VehicleInfo object 
     * @param vehicleId  The id of the VehicleInfo 
     * @return this method returns a boolean type which denotes the status of
     * updating the existing vehicle details( True if successfully updated to the
     * DB, otherwise False )
     *
     */
    public boolean updateVehicleInfo(VehicleInfo vehicleInfo, int vehicleId) {

        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "UPDATE vehicleInfo "
                    + "SET vehicleMake = ? , vechicleModel = ? , dateOfManufacture = ?, weightage = ? "
                    + "WHERE vehicleId = ?;";

            PreparedStatement preparedStatement = con.prepareStatement(sql);

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

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return result;
    }
}
