/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.models;

import com.exavalu.services.QuotationService;
import com.exavalu.services.VehicleDataService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Map;
import org.apache.struts2.dispatcher.ApplicationMap;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author RISHAV DUTTA
 */
public class Quotation extends ActionSupport implements ApplicationAware, SessionAware, Serializable {

    private SessionMap<String, Object> sessionMap = (SessionMap) ActionContext.getContext().getSession();
    private ApplicationMap map = (ApplicationMap) ActionContext.getContext().getApplication();

    @Override
    public void setApplication(Map<String, Object> application) {
        map = (ApplicationMap) application;
    }

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

    public String AddQuotationData() throws Exception {
        String result = "FAILURE";

        boolean success = QuotationService.getInstance().addQuotationData(this);
        if (success) {
            System.out.println("Successfully Quotation Data Added");
            result = "SUCCESS";
            sessionMap.put("QuotationData", this);
            ArrayList quotationList = QuotationService.getInstance().getQuotationList(this.email);
            sessionMap.put("PrevQuotList", quotationList);
        } else {
            System.out.println("OOps your Quotation Data is not added");
        }
        return result;
    }

    public String showQuotationData() throws Exception {
        String result = "SUCCESS";
        Quotation quotation = QuotationService.getInstance().getQuotation(this.quotationId);
        sessionMap.put("IdSpecificQuotataion", quotation);
        return result;
    }

    public String updateStatus() throws Exception {
        String result = "FAILURE";
        Quotation quot = (Quotation) sessionMap.get("IdSpecificQuotataion");
        int quotId = quot.getQuotationId();
        String quotEmail = quot.getEmail();
        if (this.status.equals("1")) {
            boolean success = QuotationService.getInstance().updateStatus(quotId, "ACCEPTED");
            if (success) {
                result = "SUCCESS";
                ArrayList quotationList = QuotationService.getInstance().getQuotationList(this.email);
                sessionMap.put("PrevQuotList", quotationList);
            } else {
                System.out.println("OOps your update is failed");
            }
        }
        if (this.status.equals("0")) {
            boolean success = QuotationService.getInstance().updateStatus(quotId, "REJECTED");
            if (success) {
                result = "SUCCESS";
                ArrayList quotationList = QuotationService.getInstance().getQuotationList(this.email);
                sessionMap.put("PrevQuotList", quotationList);
            } else {
                System.out.println("OOps your update is failed");
            }
        }

        ArrayList quotationList = QuotationService.getInstance().getQuotationList(quotEmail);
        sessionMap.put("PrevQuotList", quotationList);
        return result;
    }

    public int getQuotationId() {
        return quotationId;
    }

    public void setQuotationId(int quotationId) {
        this.quotationId = quotationId;
    }

    public int getIdvValue() {
        return idvValue;
    }

    public void setIdvValue(int idvValue) {
        this.idvValue = idvValue;
    }

    public int getCc() {
        return cc;
    }

    public void setCc(int cc) {
        this.cc = cc;
    }

    public int getPremium() {
        return premium;
    }

    public void setPremium(int premium) {
        this.premium = premium;
    }

    public int getLiabPremium() {
        return liabPremium;
    }

    public void setLiabPremium(int liabPremium) {
        this.liabPremium = liabPremium;
    }

    public int getTotalPremium() {
        return totalPremium;
    }

    public void setTotalPremium(int totalPremium) {
        this.totalPremium = totalPremium;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAadhaarNo() {
        return aadhaarNo;
    }

    public void setAadhaarNo(String aadhaarNo) {
        this.aadhaarNo = aadhaarNo;
    }

    public String getProposerName() {
        return proposerName;
    }

    public void setProposerName(String proposerName) {
        this.proposerName = proposerName;
    }

    public String getQuotationDate() {
        return quotationDate;
    }

    public void setQuotationDate(String quotationDate) {
        this.quotationDate = quotationDate;
    }

    public String getVin() {
        return vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public String getLicensePlateNumber() {
        return licensePlateNumber;
    }

    public void setLicensePlateNumber(String licensePlateNumber) {
        this.licensePlateNumber = licensePlateNumber;
    }

    public String getMake() {
        return make;
    }

    public void setMake(String make) {
        this.make = make;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getPlanName() {
        return planName;
    }

    public void setPlanName(String planName) {
        this.planName = planName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

}
