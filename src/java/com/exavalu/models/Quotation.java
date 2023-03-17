/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.models;

import com.exavalu.services.QuotationService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

/**
 * Description: The Quotation public class represents a class that will contain
 * the private data members and the methods to add data to the quotation, show
 * existing quotation details, to edit/update quotation details
 *
 * @author RISHAV DUTTA
 */
public class Quotation extends ActionSupport implements SessionAware, Serializable {

    private SessionMap<String, Object> sessionMap = (SessionMap) ActionContext.getContext().getSession();

    @Override
    public void setSession(Map<String, Object> session) {
        sessionMap = (SessionMap) session;
    }

    private int quotationId;
    private int idvValue;
    private int cc;
    private int premium;
    private int liabPremium;
    private int totalPremium;
    private String email;
    private String aadhaarNo;
    private String proposerName;
    private String quotationDate;
    private String vin;
    private String licensePlateNumber;
    private String make;
    private String model;
    private String planName;
    private String status;

    /**
     * Description: The AddQuotationData method is used to add the quotation
     * data and put the QuotationData,as well as previous quotation list to the
     * session map
     *
     * @return it returns a string which is mapped to the struts.xml
     */
    public String addQuotationData() throws Exception {
        String result = "FAILURE";

        boolean success = QuotationService.getInstance().addQuotationData(this);
        if (success) {
            System.out.println("Successfully Quotation Data Added");
            result = "SUCCESS";
            sessionMap.put("QuotationData", this);
            List<Quotation> quotationList = QuotationService.getInstance().getQuotationList(this.email);
            sessionMap.put("PrevQuotList", quotationList);
        } else {
            System.out.println("OOps your Quotation Data is not added");
        }
        return result;
    }

    /**
     * Description: The showQuotationData method is used to show a id specific
     * quotation data and put the QuotationData to the session map
     *
     * @return it returns a string which is mapped to the struts.xml
     */
    public String showQuotationData() throws Exception {
        String result = "SUCCESS";
        Quotation quotation = QuotationService.getInstance().getQuotation(this.quotationId);
        sessionMap.put("IdSpecificQuotataion", quotation);
        return result;
    }

    /**
     * Description: The updateStatus method is used to show a id specific
     * quotation data and put the QuotationData to the session map and the user
     * can Accept or Reject. after clicking the status is being updated to the
     * DB
     *
     * @return it returns a string which is mapped to the struts.xml
     */
    public String updateStatus() throws Exception {
        String result = "FAILURE";
        Quotation quot = (Quotation) sessionMap.get("IdSpecificQuotataion");
        int quotId = quot.getQuotationId();
        String quotEmail = quot.getEmail();
        if ("1".equals(this.status)) {
            boolean success = QuotationService.getInstance().updateStatus(quotId, "ACCEPTED");
            if (success) {
                result = "SUCCESS";
                List<Quotation> quotationList = QuotationService.getInstance().getQuotationList(this.email);
                sessionMap.put("PrevQuotList", quotationList);
            } else {
                System.out.println("OOps your update is failed");
            }
        }
        if ("0".equals(this.status)) {
            boolean success = QuotationService.getInstance().updateStatus(quotId, "REJECTED");
            if (success) {
                result = "SUCCESS";
                List<Quotation> quotationList = QuotationService.getInstance().getQuotationList(this.email);
                sessionMap.put("PrevQuotList", quotationList);
            } else {
                System.out.println("OOps your update is failed");
            }
        }

        List<Quotation> quotationList = QuotationService.getInstance().getQuotationList(quotEmail);
        sessionMap.put("PrevQuotList", quotationList);
        return result;
    }

    /**
     * Getter method of QuotationId.
     *
     * @return it returns the id of the Quotation
     */
    public int getQuotationId() {
        return quotationId;
    }

    /**
     * Setter method of QuotationId.
     *
     * @param quotationId it denotes the Id of the Quotation
     */
    public void setQuotationId(int quotationId) {
        this.quotationId = quotationId;
    }

    /**
     * Getter method of IdvValue.
     *
     * @return it returns the IdvValue of the Quotation
     */
    public int getIdvValue() {
        return idvValue;
    }

    /**
     * Setter method of IdvValue.
     *
     * @param idvValue it denotes the IdvValue of the Quotation
     */
    public void setIdvValue(int idvValue) {
        this.idvValue = idvValue;
    }

    /**
     * Getter method of Cc.
     *
     * @return it returns the Cc of the Vehicle
     */
    public int getCc() {
        return cc;
    }

    /**
     * Setter method of Cc.
     *
     * @param cc it denotes the Cc of the Vehicle
     */
    public void setCc(int cc) {
        this.cc = cc;
    }

    /**
     * Getter method of Premium.
     *
     * @return it returns the Premium of the Quotation
     */
    public int getPremium() {
        return premium;
    }

    /**
     * Setter method of Premium.
     *
     * @param premium it denotes the Premium of the Quotation
     */
    public void setPremium(int premium) {
        this.premium = premium;
    }

    /**
     * Getter method of LiabPremium.
     *
     * @return it returns the LiabPremium of the Quotation
     */
    public int getLiabPremium() {
        return liabPremium;
    }

    /**
     * Setter method of LiabPremium.
     *
     * @param liabPremium it denotes the LiabPremium of the Quotation
     */
    public void setLiabPremium(int liabPremium) {
        this.liabPremium = liabPremium;
    }

    /**
     * Getter method of TotalPremium.
     *
     * @return it returns the TotalPremium of the Quotation
     */
    public int getTotalPremium() {
        return totalPremium;
    }

    /**
     * Setter method of TotalPremium.
     *
     * @param totalPremium it denotes the TotalPremium of the Quotation
     */
    public void setTotalPremium(int totalPremium) {
        this.totalPremium = totalPremium;
    }

    /**
     * Getter method of Email.
     *
     * @return it returns the Email of the user
     */
    public String getEmail() {
        return email;
    }

    /**
     * Setter method of Email.
     *
     * @param email it denotes the Email of the user
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * Getter method of AadhaarNo.
     *
     * @return it returns the AadhaarNo of the user
     */
    public String getAadhaarNo() {
        return aadhaarNo;
    }

    /**
     * Setter method of AadhaarNo.
     *
     * @param aadhaarNo it denotes the AadhaarNo of the user
     */
    public void setAadhaarNo(String aadhaarNo) {
        this.aadhaarNo = aadhaarNo;
    }

    /**
     * Getter method of ProposerName.
     *
     * @return it returns the ProposerName of the Quotation
     */
    public String getProposerName() {
        return proposerName;
    }

    /**
     * Setter method of ProposerName.
     *
     * @param proposerName it denotes the ProposerName of the Quotation
     */
    public void setProposerName(String proposerName) {
        this.proposerName = proposerName;
    }

    /**
     * Getter method of QuotationDate.
     *
     * @return it returns the QuotationDate
     */
    public String getQuotationDate() {
        return quotationDate;
    }

    /**
     * Setter method of QuotationDate.
     *
     * @param quotationDate it denotes the Date of the Quotation
     */
    public void setQuotationDate(String quotationDate) {
        this.quotationDate = quotationDate;
    }

    /**
     * Getter method of Vin.
     *
     * @return it returns the Vin of the Car
     */
    public String getVin() {
        return vin;
    }

    /**
     * Setter method of Vin.
     *
     * @param vin it denotes the Vin of the car
     */
    public void setVin(String vin) {
        this.vin = vin;
    }

    /**
     * Getter method of LicensePlateNumber.
     *
     * @return it returns the LicensePlateNumber of the car
     */
    public String getLicensePlateNumber() {
        return licensePlateNumber;
    }

    /**
     * Setter method of LicensePlateNumber.
     *
     * @param licensePlateNumber it denotes the LicensePlateNumber of the car
     */
    public void setLicensePlateNumber(String licensePlateNumber) {
        this.licensePlateNumber = licensePlateNumber;
    }

    /**
     * Getter method of Make.
     *
     * @return it returns the Make of the car
     */
    public String getMake() {
        return make;
    }

    /**
     * Setter method of Make.
     *
     * @param make it denotes the Make of the car
     */
    public void setMake(String make) {
        this.make = make;
    }

    /**
     * Getter method of Model.
     *
     * @return it returns the Model of the car
     */
    public String getModel() {
        return model;
    }

    /**
     * Setter method of Model.
     *
     * @param model it denotes the Model of the car
     */
    public void setModel(String model) {
        this.model = model;
    }

    /**
     * Getter method of PlanName.
     *
     * @return it returns the PlanName of the Quotation
     */
    public String getPlanName() {
        return planName;
    }

    /**
     * Setter method of PlanName.
     *
     * @param planName it denotes the PlanName of the Quotation
     */
    public void setPlanName(String planName) {
        this.planName = planName;
    }

    /**
     * Getter method of Status.
     *
     * @return it returns the Status of the Quotation
     */
    public String getStatus() {
        return status;
    }

    /**
     * Setter method of Status.
     *
     * @param status it denotes the Status of the Quotation
     */
    public void setStatus(String status) {
        this.status = status;
    }

}
