/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.ProductData;
import com.exavalu.utils.JDBCConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import org.apache.log4j.Logger;

/**
 *
 * @author Nairwita Chakraborty
 */
public class ProductDataService {
    
    private static final Logger logger = Logger.getLogger(ProductDataService.class);
    
    public static boolean addProductData(ProductData product,String email) {
        boolean result = false;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO productdata(startDate,insuranceSum,meritRating,damageInsurance,optionalProducts,courtesyCar,email)" +"VALUES(? , ? , ? , ? , ? , ?, ? )";
            PreparedStatement preparedStatement = con.prepareStatement(sql);

            preparedStatement.setString(1, product.getStartDate());
            preparedStatement.setString(2, product.getInsuranceSum());
            preparedStatement.setString(3, product.getMeritRating());
            preparedStatement.setString(4, product.getDamageInsurance());
            preparedStatement.setString(5, product.getOptionalProducts());
            preparedStatement.setString(6, product.getCourtesyCar());
            preparedStatement.setString(7, email);
            
            System.out.println("SQL: " + preparedStatement);

            int row = preparedStatement.executeUpdate();
            if (row == 1) {
                result = true;
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return result;

    }
    
}
