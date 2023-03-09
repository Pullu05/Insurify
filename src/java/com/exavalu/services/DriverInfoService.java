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
    public static DriverInfoService driverInfoService = null;
    
    public static DriverInfoService getInstance()
    {
        if(driverInfoService==null)
        {
            return new DriverInfoService();
        }
        else
        {
            return driverInfoService;
        }
    }

    public ArrayList getAllDriverInfo() {
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
                driverinfo.setDriverAge(rs.getString("driverAge"));
                driverinfo.setWeightage(rs.getInt("weightage"));

                driverInfoList.add(driverinfo);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        System.out.println("Number of Drivers = " + driverInfoList.size());
        return driverInfoList;
    }

    public boolean AddDriverInfo(DriverInfo driverInfo) {
        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO driverinfo(medicalHistory,driverAge,weightage )"
                    + "VALUES(? ,? , ?)";

            PreparedStatement preparedStatement = con.prepareStatement(sql);

            preparedStatement.setString(1, driverInfo.getMedicalHistory());
            preparedStatement.setString(2, driverInfo.getDriverAge());
            preparedStatement.setInt(3, driverInfo.getWeightage());

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

    public DriverInfo getDriverInfo(int id) {
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
                driverinfo.setDriverAge(rs.getString("driverAge"));
                driverinfo.setWeightage(rs.getInt("weightage"));
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return driverinfo;
    }

    public boolean updateDriverInfo(DriverInfo driverInfo, int id) {

        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "UPDATE driverinfo SET medicalHistory = ? , driverAge = ? , weightage = ? WHERE id = ?;";

            PreparedStatement preparedStatement = con.prepareStatement(sql);

            preparedStatement.setString(1, driverInfo.getMedicalHistory());
            preparedStatement.setString(2, driverInfo.getDriverAge());
            preparedStatement.setInt(3, driverInfo.getWeightage());

            preparedStatement.setInt(4, id);

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
