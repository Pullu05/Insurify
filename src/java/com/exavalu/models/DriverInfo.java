/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.models;

import com.exavalu.services.DriverInfoService;
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
public class DriverInfo extends ActionSupport implements ApplicationAware, SessionAware, Serializable {

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

    private String licenseNo;
    private String driverName;
    private String medicalHistory;
    private int noOfChallans;
    private int driverAge;
    private int weightage;

    public String doAddDriverInfo() throws Exception {
        String result = "FAILURE";

        boolean success = DriverInfoService.AddDriverInfo(this);

        if (success) {
            System.out.println("returning Success from doAddDriverInfo method");
            ArrayList driverInfoList = DriverInfoService.getAllDriverInfo();
            sessionMap.put("DriverInfoList", driverInfoList);
            result = "SUCCESS";
        } else {
            System.out.println("returning Failure from doAddDriverInfo method");
        }

        return result;
    }
    
     public String doEditDriverInfo() throws Exception {
        DriverInfo driverInfo = DriverInfoService.getDriverInfo(this.licenseNo);
       
        sessionMap.put("specificDriverInfo", driverInfo);
        
        return "SUCCESS";
    }

    public String getLicenseNo() {
        return licenseNo;
    }

    public void setLicenseNo(String licenseNo) {
        this.licenseNo = licenseNo;
    }

    public String getDriverName() {
        return driverName;
    }

    public void setDriverName(String driverName) {
        this.driverName = driverName;
    }

    public String getMedicalHistory() {
        return medicalHistory;
    }

    public void setMedicalHistory(String medicalHistory) {
        this.medicalHistory = medicalHistory;
    }

    public int getNoOfChallans() {
        return noOfChallans;
    }

    public void setNoOfChallans(int noOfChallans) {
        this.noOfChallans = noOfChallans;
    }

    public int getDriverAge() {
        return driverAge;
    }

    public void setDriverAge(int driverAge) {
        this.driverAge = driverAge;
    }

    public int getWeightage() {
        return weightage;
    }

    public void setWeightage(int weightage) {
        this.weightage = weightage;
    }

}
