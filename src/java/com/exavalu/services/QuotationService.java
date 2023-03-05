/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.Quotation;
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
public class QuotationService {

    public static Boolean addQuotationData(Quotation quotation) {
        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO quotation(email,proposalNo,aadhaarNo,proposerName,quotationDate,idvValue,vin,cc,licensePlateNumber,make,model,planName,premium,liabPremium,totalPremium )"
                    + "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

            PreparedStatement preparedStatement = con.prepareStatement(sql);

            preparedStatement.setString(1, quotation.getEmail());
            preparedStatement.setString(2, "INS" + quotation.getVin());
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

    public static ArrayList getQuotationList(String email) {
        ArrayList quotationList = new ArrayList();
        try {
            Connection con = JDBCConnectionManager.getConnection();

            String sql = "select * from quotation where email=?";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, email);

            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                
                Quotation quotation = new Quotation();
                quotation.setQuotationId(rs.getInt("quotationId"));
                quotation.setEmail(rs.getString("email"));
                quotation.setProposerName(rs.getString("proposerName"));
                quotation.setQuotationDate(rs.getString("quotationDate"));
                quotation.setVin(rs.getString("vin"));
                quotation.setStatus(rs.getString("status"));
               
                quotationList.add(quotation);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
            //log.error(LocalDateTime.now() + "-- Error in the getEmployee Process !!!!!" + " Error Code: " + ex.getErrorCode());
        }

        return quotationList;
    }

    public static Quotation getQuotation(int quotaionId) {
        Quotation quotation = new Quotation();
        try {
            Connection con = JDBCConnectionManager.getConnection();

            String sql = "select * from quotation where quotationId=?";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setInt(1, quotaionId);

            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                quotation.setQuotationId(rs.getInt("quotationId"));
                quotation.setEmail(rs.getString("email"));
                quotation.setAadhaarNo(rs.getString("aadhaarNo"));
                quotation.setProposerName(rs.getString("proposerName"));
                quotation.setQuotationDate(rs.getString("quotationDate"));
                quotation.setIdvValue(rs.getInt("idvValue"));
                quotation.setCc(rs.getInt("cc"));
                quotation.setVin(rs.getString("vin"));
                quotation.setLicensePlateNumber(rs.getString("licensePlateNumber"));
                quotation.setMake(rs.getString("make"));
                quotation.setModel(rs.getString("model"));
                quotation.setPlanName(rs.getString("planName"));
                quotation.setPremium(rs.getInt("premium"));
                quotation.setLiabPremium(rs.getInt("liabPremium"));
                quotation.setTotalPremium(rs.getInt("totalPremium"));
                quotation.setStatus(rs.getString("status"));
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
            //log.error(LocalDateTime.now() + "-- Error in the getEmployee Process !!!!!" + " Error Code: " + ex.getErrorCode());
        }

        return quotation;
    }
    
    public static boolean updateStatus(int quotaionId,String value) {
        boolean result = false;
        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "UPDATE quotation SET status = ? WHERE quotationId = ?";

            PreparedStatement preparedStatement = con.prepareStatement(sql);

            preparedStatement.setString(1, value);
            preparedStatement.setInt(2, quotaionId);

            System.out.println("SQl=" + preparedStatement);
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
