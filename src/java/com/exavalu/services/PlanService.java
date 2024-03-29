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
import java.util.Date;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;

/**
 * Description: The PlanService public class represents a class that will
 * contain the methods to add the plan name to the DB
 *
 * @author RISHAV DUTTA
 */
public final class PlanService {

    private static final Logger log = Logger.getLogger(PlanService.class.getName());
    public static PlanService planService = null;

    private PlanService() {
    }

    /**
     *
     * Description: It is the Instance method for PlanService class
     *
     * @return It returns the created object of PlanService
     */
    public static synchronized PlanService getInstance() {
        if (planService == null) {
            planService = new PlanService();
        }
        return planService;
    }

    /**
     *
     * Description: The addPlanName method is used to add the plan name to the
     * DB
     *
     * @param plan it consists of plan name and plan id
     * @return this method returns a boolean type which denotes the status of
     * adding the plan name( True if successfully added to the DB, otherwise
     * False )
     */
    public boolean addPlanName(Plan plan) {
        boolean result = false;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO plan(planName) VALUES( ?)";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                preparedStatement.setString(1, plan.getPlanName());

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
