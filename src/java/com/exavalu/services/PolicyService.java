/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.utils.JDBCConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Subhadip
 */
public class PolicyService {

    public static Policy getPolicyInfo(int weightage) {
        Policy policy = new Policy();

        int weightageId;

        if (weightage < 11) {
            weightageId = 1;
        } else if (weightage < 21) {
            weightageId = 2;
        } else if (weightage < 31) {
            weightageId = 3;
        } else if (weightage < 41) {
            weightageId = 4;
        } else if (weightage < 51) {
            weightageId = 5;
        } else if (weightage < 61) {
            weightageId = 6;
        } else if (weightage < 71) {
            weightageId = 7;
        } else if (weightage < 81) {
            weightageId = 8;
        } else if (weightage < 91) {
            weightageId = 9;
        } else {
            weightageId = 10;
        }

        try {
            Connection con = JDBCConnectionManager.getConnection();

            String sql = "SELECT coverage, premium from policy where weightageId =?";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setInt(1, weightageId);

            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                policy.setCoverage(rs.getInt("coverage"));
                policy.setPremium(rs.getInt("premium"));
                
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return policy;
    }

}
