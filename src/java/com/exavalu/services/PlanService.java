/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.Plan;
import com.exavalu.utils.JDBCConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author RISHAV DUTTA
 */
public class PlanService {
    
    public static Boolean addPlanName(Plan plan) {
        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO plan(planName) VALUES( ?)";

            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, plan.getPlanName());

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
