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
 * Description: The ProductDataService public class represents a class that will
 * contain the methods to insert the product data into the DB from the client
 * side form
 *
 * @author Nairwita Chakraborty
 */
public class ProductDataService {

    public static ProductDataService productDataService = null;

    /**
     *
     * Description: It is the Instance method for ProductDataService class
     *
     * @return It returns the created object of ProductDataService
     */
    public static ProductDataService getInstance() {
        if (productDataService == null) {
            return new ProductDataService();
        } else {
            return productDataService;
        }
    }

    private static final Logger logger = Logger.getLogger(ProductDataService.class);

    /**
     *
     * Description: The addProductData method is used to Insert the
     * client-side Product Data into the DB
     * @param product The product details which are given by the user while filling the client-side form
     * @param email email address of the user
     * 
     * @return this method returns a boolean type which denotes the status of
     * inserting the client-side Product Data into the DB( True if successfully
     * inserted to the DB, otherwise False )
     */
    public boolean addProductData(ProductData product, String email) {
        boolean result = false;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO productdata(startDate,insuranceSum,meritRating,damageInsurance,courtesyCar,email)" + "VALUES(? , ? , ? , ? , ? , ? )";
            PreparedStatement preparedStatement = con.prepareStatement(sql);

            preparedStatement.setString(1, product.getStartDate());
            preparedStatement.setString(2, product.getInsuranceSum());
            preparedStatement.setString(3, product.getMeritRating());
            preparedStatement.setString(4, product.getDamageInsurance());
            preparedStatement.setString(5, product.getCourtesyCar());
            preparedStatement.setString(6, email);

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
