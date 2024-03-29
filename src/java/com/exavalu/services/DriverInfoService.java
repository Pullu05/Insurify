/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.DriverInfo;
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
 * Description: The DriverInfoService public class represents a class that will
 * contain the methods to get all driver information, to add driver information
 * to the existing details, to edit/update driver details
 *
 * @author RISHAV DUTTA
 * @version 1.0
 *
 */
public final class DriverInfoService {

    private static final Logger log = Logger.getLogger(DriverInfoService.class.getName());

    public static DriverInfoService driverInfoService = null;

    private DriverInfoService() {
    }

    /**
     *
     * Description: It is the Instance method for DriverInfoService class
     *
     * @return It returns the created object of DriverInfoService
     */
    public static synchronized DriverInfoService getInstance() {
        if (driverInfoService == null) {
            driverInfoService = new DriverInfoService();
        }
        return driverInfoService;
    }

    /**
     *
     * Description: The getAllDriverInfo method is used to get all the details
     * of Driver Information
     *
     * @return list of all Driver Information
     */
    public List<DriverInfo> getAllDriverInfo() {
        List<DriverInfo> driverInfoList = new ArrayList<>();

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "SELECT * from driverinfo";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                try (ResultSet rs = preparedStatement.executeQuery()) {
                    while (rs.next()) {
                        DriverInfo driverinfo = new DriverInfo();

                        driverinfo.setId(rs.getInt("id"));
                        driverinfo.setMedicalHistory(rs.getString("medicalHistory"));
                        driverinfo.setDriverAge(rs.getString("driverAge"));
                        driverinfo.setWeightage(rs.getInt("weightage"));

                        driverInfoList.add(driverinfo);
                    }
                }
            }
        } catch (SQLException ex) {
            if (log.isEnabledFor(Level.ERROR)) {
                String errorMessage = "Error code: " + ex.getErrorCode() + " | Error message: " + ex.getMessage() + " | Date: " + new Date();
                log.error(errorMessage);
            }

        }
        System.out.println("Number of Drivers = " + driverInfoList.size());
        return driverInfoList;
    }

    /**
     *
     * Description: The addDriverInfo method is used to add the
     * details/information of a new driver
     *
     * @param driverInfo Information about the Driver
     *
     * @return this method returns a boolean type which denotes the status of
     * adding the new driver details( True if successfully added to the DB,
     * otherwise False )
     */
    public boolean addDriverInfo(DriverInfo driverInfo) {
        boolean result = false;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO driverinfo(medicalHistory,driverAge,weightage )"
                    + "VALUES(? ,? , ?)";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                preparedStatement.setString(1, driverInfo.getMedicalHistory());
                preparedStatement.setString(2, driverInfo.getDriverAge());
                preparedStatement.setInt(3, driverInfo.getWeightage());

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
     * Description: The getDriverInfo method is used to get the
     * details/information of a particular driver using it's id
     *
     * @param id it is the id of DriverInfo
     *
     * @return this method returns the desired driver's information
     */
    public DriverInfo getDriverInfo(int id) {
        DriverInfo driverinfo = new DriverInfo();

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "SELECT * from driverinfo where id =?";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                preparedStatement.setInt(1, id);

                try (ResultSet rs = preparedStatement.executeQuery()) {
                    while (rs.next()) {
                        driverinfo.setId(rs.getInt("id"));
                        driverinfo.setMedicalHistory(rs.getString("medicalHistory"));
                        driverinfo.setDriverAge(rs.getString("driverAge"));
                        driverinfo.setWeightage(rs.getInt("weightage"));
                    }
                }

            }

        } catch (SQLException ex) {
            if (log.isEnabledFor(Level.ERROR)) {
                String errorMessage = "Error code: " + ex.getErrorCode() + " | Error message: " + ex.getMessage() + " | Date: " + new Date();
                log.error(errorMessage);
            }
        }

        return driverinfo;
    }

    /**
     *
     * Description: The updateDriverInfo method is used to update the existing
     * details/information of a particular driver using it's id
     *
     * @param driverInfo The DriverInfo object
     * @param id The id of the DriverInfo
     *
     * @return this method returns a boolean type which denotes the status of
     * updating the existing driver details( True if successfully updated to the
     * DB, otherwise False )
     *
     */
    public boolean updateDriverInfo(DriverInfo driverInfo, int id) {
        boolean result = false;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "UPDATE driverinfo SET medicalHistory = ? , driverAge = ? , weightage = ? WHERE id = ?;";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                preparedStatement.setString(1, driverInfo.getMedicalHistory());
                preparedStatement.setString(2, driverInfo.getDriverAge());
                preparedStatement.setInt(3, driverInfo.getWeightage());

                preparedStatement.setInt(4, id);

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
