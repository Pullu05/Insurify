/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.DriverInfo;
import com.exavalu.models.Quotation;
import com.exavalu.utils.JDBCConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author RISHAV DUTTA
 */
public class QuotationService {
    public static Boolean addQuotationData(Quotation quotation) {
        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO quotation(eamil,proposalNo,aadhaarNo,proposerName,quotationDate,idvValue,vin,cc,licensePlateNumber,make,model,planName,premium,liabPremium,totalPremium )"
                    + "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

            PreparedStatement preparedStatement = con.prepareStatement(sql);

            preparedStatement.setString(1, quotation.getEmail());
            preparedStatement.setString(2, quotation.getProposerName());
            preparedStatement.setString(3, quotation.getAadhaarNo());
            preparedStatement.setString(4, quotation.getProposerName());
            preparedStatement.setString(5, quotation.getQuotationDate());
            preparedStatement.setInt(6, quotation.getIdvValue());
            preparedStatement.setString(7, quotation.getVin());
            preparedStatement.setInt(8, quotation.getCc());
            preparedStatement.setString(9, quotation.getLicensePlateNumber());
            preparedStatement.setString(10, quotation.getMake());
            preparedStatement.setString(11, quotation.getModel());
            preparedStatement.setString(12, quotation.getPlanName());
            preparedStatement.setInt(13, quotation.getPremium());
            preparedStatement.setInt(14, quotation.getLiabPremium());
            preparedStatement.setInt(15, quotation.getTotalPremium());


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
