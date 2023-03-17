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
import java.util.Date;
import java.util.List;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;

/**
 * Description: The QuotationService public class represents a class that will
 * contain the methods to add quotation data, get quotation list for a user, get
 * quotation for a particular user, update the status of the quotation (Accept /
 * Reject), get average premium and coverage for the chart.
 *
 * @author RISHAV DUTTA
 */
public final class QuotationService {

    private static final Logger log = Logger.getLogger(QuotationService.class.getName());
    public static QuotationService quotationService = null;

    private QuotationService() {
    }

    /**
     *
     * Description: It is the Instance method for QuotationService class
     *
     * @return It returns the created object of QuotationService
     */
    public static synchronized QuotationService getInstance() {
        if (quotationService == null) {
            quotationService = new QuotationService();
        }
        return quotationService;
    }

    /**
     *
     * Description: The addQuotationData method is used to add the quotation
     * Data into the DB
     *
     * @param quotation it consists of all the vehicle details and the premium
     * details along with the plan name and quotation date
     * @return this method returns a boolean type which denotes the status of
     * adding the quotation Data into the DB( True if successfully added to the
     * DB, otherwise False )
     */
    public boolean addQuotationData(Quotation quotation) {
        boolean result = false;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "INSERT INTO quotation(email,proposalNo,aadhaarNo,proposerName,quotationDate,idvValue,vin,cc,licensePlateNumber,make,model,planName,premium,liabPremium,totalPremium) "
                    + "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
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
            }
        } catch (SQLException ex) {
            if (log.isEnabledFor(Level.ERROR)) {
                String errorMessage = "Error code: " + ex.getErrorCode() + " | Error message: " + ex.getMessage() + " | Date: " + new Date();
                log.error(errorMessage);
            }
        }

        return result;
    }

    /**
     *
     * Description: The getQuotationList method is used to get all quotations
     * generated by a particular user
     *
     * @param email email address of the user
     * @return list of all Quotations
     */
    public List<Quotation> getQuotationList(String email) {
        List<Quotation> quotationList = new ArrayList<>();

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "select * from quotation where email=?";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                preparedStatement.setString(1, email);

                try (ResultSet rs = preparedStatement.executeQuery()) {
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
                }
            }
        } catch (SQLException ex) {
            if (log.isEnabledFor(Level.ERROR)) {
                String errorMessage = "Error code: " + ex.getErrorCode() + " | Error message: " + ex.getMessage() + " | Date: " + new Date();
                log.error(errorMessage);
            }

        }

        return quotationList;
    }

    /**
     *
     * Description: The getQuotation method is used to get a particular
     * quotation using quotation id
     *
     * @param quotaionId it is the id by which different quotations generated by
     * the user will be identified uniquely
     * @return this method returns the desired quotation details
     */
    public Quotation getQuotation(int quotaionId) {
        Quotation quotation = new Quotation();

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "select * from quotation where quotationId=?";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                preparedStatement.setInt(1, quotaionId);

                try (ResultSet rs = preparedStatement.executeQuery()) {
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
                }
            }
        } catch (SQLException ex) {
            if (log.isEnabledFor(Level.ERROR)) {
                String errorMessage = "Error code: " + ex.getErrorCode() + " | Error message: " + ex.getMessage() + " | Date: " + new Date();
                log.error(errorMessage);
            }
        }

        return quotation;
    }

    /**
     *
     * Description: The updateStatus method is used to update the status for a
     * particular quotation id
     *
     * @param quotaionId it is the id by which different quotations generated by
     * the user will be identified uniquely
     * @param value it is the status value of a particular quotation (either
     * accepted or rejected)
     * @return this method returns a boolean type which denotes the status of
     * updating the status for a particular quotation id( True if successfully
     * updated to the DB, otherwise False )
     */
    public boolean updateStatus(int quotaionId, String value) {
        boolean result = false;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "UPDATE quotation SET status = ? WHERE quotationId = ?";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                preparedStatement.setString(1, value);
                preparedStatement.setInt(2, quotaionId);

                System.out.println("SQl=" + preparedStatement);
                int row = preparedStatement.executeUpdate();

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

    /**
     *
     * Description: The getAvgPremium method is used to get the average premium
     *
     * @return this method returns a float type average premium value
     */
    public float getAvgPremium() {
        float avgPrem = 0;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "SELECT avg(totalPremium) from quotation;";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                try (ResultSet rs = preparedStatement.executeQuery()) {
                    if (rs.next()) {
                        avgPrem = rs.getInt(1);
                    }
                }
            }
        } catch (SQLException ex) {
            if (log.isEnabledFor(Level.ERROR)) {
                String errorMessage = "Error code: " + ex.getErrorCode() + " | Error message: " + ex.getMessage() + " | Date: " + new Date();
                log.error(errorMessage);
            }

        }
        return avgPrem;
    }

    /**
     *
     * Description: The getAvgCoverage method is used to get the average
     * coverage
     *
     * @return this method returns a float type average coverage value
     */
    public float getAvgCoverage() {
        float avgCvg = 0;

        try {
            Connection con = JDBCConnectionManager.getConnection();
            String sql = "SELECT avg(idvValue) from quotation;";

            try (PreparedStatement preparedStatement = con.prepareStatement(sql)) {
                try (ResultSet rs = preparedStatement.executeQuery()) {
                    if (rs.next()) {
                        avgCvg = rs.getInt(1);
                    }
                }
            }
        } catch (SQLException ex) {
            if (log.isEnabledFor(Level.ERROR)) {
                String errorMessage = "Error code: " + ex.getErrorCode() + " | Error message: " + ex.getMessage() + " | Date: " + new Date();
                log.error(errorMessage);
            }
        }
        return avgCvg;
    }
}
