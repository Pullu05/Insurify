/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.models;

import com.exavalu.services.InsuranceApiService;
import com.exavalu.services.InsurantDataService;
import com.exavalu.services.PolicyService;
import com.exavalu.services.VehicleDataService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.Serializable;
import java.util.Map;
import org.apache.struts2.dispatcher.ApplicationMap;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author RISHAV DUTTA
 */
public class Policy extends ActionSupport implements ApplicationAware, SessionAware, Serializable {

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

    private String weightageRange;
    private int coverage;
    private int premium;

    public String getWeightageRange() {
        return weightageRange;
    }

    public void setWeightageRange(String weightageRange) {
        this.weightageRange = weightageRange;
    }

    public int getCoverage() {
        return coverage;
    }

    public void setCoverage(int coverage) {
        this.coverage = coverage;
    }

    public int getPremium() {
        return premium;
    }

    public void setPremium(int premium) {
        this.premium = premium;
    }

    public String doGetTotalWeightage() throws Exception {
        String result = "SUCCESS";
        int vehicleWeightage = VehicleDataService.getVehicleWeightage((Vehicle) sessionMap.get("VehicleData"));

        int insurantWeightage = InsurantDataService.getDriverWeightage((InsurantData) sessionMap.get("InsurantData"));

        InsurantData insurantData = (InsurantData) sessionMap.get("InsurantData");
        String aadhaarNo = insurantData.getAadhaarNo();
        int apiWeightage = InsuranceApiService.getInsuranceApiWeightage(aadhaarNo);

        int totalWeightage = vehicleWeightage + insurantWeightage + apiWeightage;
        
        System.out.println(vehicleWeightage+"  "+insurantWeightage+"  "+apiWeightage);
        
        Policy policy = PolicyService.getPolicyInfo(totalWeightage);
        System.out.println("Coverage  :" + policy.getCoverage());
        System.out.println("Premium  :" + policy.getPremium());
        
        return result;
    }
}
