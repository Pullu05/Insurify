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

/**
 *
 * @author RISHAV DUTTA
 */
public class driverInfoService {

    public static ArrayList getAllDriverInfo() {
        ArrayList driverInfoList = new ArrayList();
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "SELECT licenseNo,driverName,medicalHistory,noOfChallans,driverAge,weightage from driverinfo";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                DriverInfo driverinfo = new DriverInfo();

                driverinfo.setLicenseNo(rs.getString("licenseNo"));
                driverinfo.setDriverName(rs.getString("driverName"));
                driverinfo.setMedicalHistory(rs.getString("medicalHistory"));
                driverinfo.setNoOfChallans(rs.getInt("noOfChallans"));
                driverinfo.setDriverAge(rs.getInt("driverAge"));
                driverinfo.setWeightage(rs.getInt("weightage"));

                driverInfoList.add(driverinfo);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        System.out.println("Number of Drivers = " + driverInfoList.size());
        return driverInfoList;
    }

    public static Boolean AddDriverInfo(DriverInfo driverInfo) {
        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO driverinfo(licenseNo,driverName,medicalHistory,noOfChallans,driverAge,weightage )"
                    + "VALUES(? ,? ,? ,? , ? , ?)";

            PreparedStatement preparedStatement = con.prepareStatement(sql);

            preparedStatement.setString(1, driverInfo.getLicenseNo());
            preparedStatement.setString(2, driverInfo.getDriverName());
            preparedStatement.setString(3, driverInfo.getMedicalHistory());
            preparedStatement.setInt(4, driverInfo.getNoOfChallans());
            preparedStatement.setInt(5, driverInfo.getDriverAge());
            preparedStatement.setInt(6, driverInfo.getWeightage());

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

    public static DriverInfo getDriverInfo(String licenseNo) {
        DriverInfo driverinfo = new DriverInfo();
        try {
            Connection con = JDBCConnectionManager.getConnection();

            String sql = "SELECT licenseNo,driverName,medicalHistory,noOfChallans,driverAge,weightage from driverinfo where licenseNo =?";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, licenseNo);

            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {

                driverinfo.setLicenseNo(rs.getString("licenseNo"));
                driverinfo.setDriverName(rs.getString("driverName"));
                driverinfo.setMedicalHistory(rs.getString("medicalHistory"));
                driverinfo.setNoOfChallans(rs.getInt("noOfChallans"));
                driverinfo.setDriverAge(rs.getInt("driverAge"));
                driverinfo.setWeightage(rs.getInt("weightage"));
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return driverinfo;
    }

    public static boolean updateDriverInfo(DriverInfo driverInfo, String licenseNo) {

        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "UPDATE driverinfo "
                    + "SET licenseNo = ? , driverName = ? , medicalHistory = ?,"
                    + "noOfChallans = ?, driverAge = ? , weightage = ?"
                    + "WHERE licenseNo = ?";

            PreparedStatement preparedStatement = con.prepareStatement(sql);

            preparedStatement.setString(1, driverInfo.getLicenseNo());
            preparedStatement.setString(2, driverInfo.getDriverName());
            preparedStatement.setString(3, driverInfo.getMedicalHistory());
            preparedStatement.setInt(4, driverInfo.getNoOfChallans());
            preparedStatement.setInt(5, driverInfo.getDriverAge());
            preparedStatement.setInt(6, driverInfo.getWeightage());

            preparedStatement.setString(7, licenseNo);

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
