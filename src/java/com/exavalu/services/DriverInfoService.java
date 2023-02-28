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
public class DriverInfoService {

    public static ArrayList getAllDriverInfo() {
        ArrayList driverInfoList = new ArrayList();
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "SELECT * from driverinfo";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                DriverInfo driverinfo = new DriverInfo();
                
                driverinfo.setId(rs.getInt("id"));
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
            String sql = "INSERT INTO driverinfo(medicalHistory,noOfChallans,driverAge,weightage )"
                    + "VALUES(? ,? , ? , ?)";

            PreparedStatement preparedStatement = con.prepareStatement(sql);

            preparedStatement.setString(1, driverInfo.getMedicalHistory());
            preparedStatement.setInt(2, driverInfo.getNoOfChallans());
            preparedStatement.setInt(3, driverInfo.getDriverAge());
            preparedStatement.setInt(4, driverInfo.getWeightage());

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

    public static DriverInfo getDriverInfo(int id) {
        DriverInfo driverinfo = new DriverInfo();
        try {
            Connection con = JDBCConnectionManager.getConnection();

            String sql = "SELECT * from driverinfo where id =?";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setInt(1, id);

            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                driverinfo.setId(rs.getInt("id"));
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

    public static boolean updateDriverInfo(DriverInfo driverInfo, int id) {

        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "UPDATE driverinfo SET medicalHistory = ? , noOfChallans = ?, driverAge = ? , weightage = ? WHERE id = ?;";

            PreparedStatement preparedStatement = con.prepareStatement(sql);

            preparedStatement.setString(1, driverInfo.getMedicalHistory());
            preparedStatement.setInt(2, driverInfo.getNoOfChallans());
            preparedStatement.setInt(3, driverInfo.getDriverAge());
            preparedStatement.setInt(4, driverInfo.getWeightage());

            preparedStatement.setInt(5, id);

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
