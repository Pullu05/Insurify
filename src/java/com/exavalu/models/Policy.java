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
    private String email;

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
    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    public String doGetTotalWeightage() throws Exception {
        String result = "SUCCESS";
        
        int vehicleWeightage = VehicleDataService.getVehicleWeightage((Vehicle) sessionMap.get("VehicleData"));

        int insurantWeightage = InsurantDataService.getDriverWeightage((InsurantData) sessionMap.get("InsurantData"));

        InsurantData insurantData = (InsurantData) sessionMap.get("InsurantData");
        String aadhaarNo = insurantData.getAadhaarNo();
        int apiWeightage = InsuranceApiService.getInsuranceApiWeightage(aadhaarNo);

        int totalWeightage = vehicleWeightage + insurantWeightage + apiWeightage;

        System.out.println(vehicleWeightage + "  " + insurantWeightage + "  " + apiWeightage);

        Policy policy = PolicyService.getPolicyInfo(totalWeightage);
        int coverage = policy.getCoverage();
        int premium = policy.getPremium();
        

        System.out.println("Coverage  :" + coverage);
        System.out.println("Premium  :" + premium);

        Plan plan = (Plan) sessionMap.get("Plan");

        String planName = plan.getPlanName();
        System.out.println(planName);

        if (plan.getPlanName().equalsIgnoreCase("Silver")) {
            System.out.println("Plan Name :" + planName);
            System.out.println("Coverage  :" + coverage);
            System.out.println("Premium  :" + premium);

        }
        if (planName.equalsIgnoreCase("Gold")) {
            System.out.println("Plan Name :" + planName);
            coverage = 2 * coverage + 2700;
            premium = 2 * premium + 300;
            System.out.println("Coverage  :" + coverage);
            System.out.println("Premium  :" + premium);

        }
        if (planName.equalsIgnoreCase("Platinum")) {
            System.out.println("Plan Name :" + planName);
            coverage = 3 * coverage + 7000;
            premium = 3 * premium + 750;
            System.out.println("Coverage  :" + coverage);
            System.out.println("Premium  :" + premium);

        }
        if (planName.equalsIgnoreCase("Ultimate")) {
            System.out.println("Plan Name :" + planName);
            coverage = 4 * coverage + 12000;
            premium = 4 * premium + 1500;
            System.out.println("Coverage  :" + coverage);
            System.out.println("Premium  :" + premium);

        }
        sessionMap.put("CVRG", coverage);
        sessionMap.put("PRM", premium);
        sessionMap.put("PlanName", planName);
//        System.out.println(sessionMap.get("Coverage"));
        //System.out.println(this.getEmail());
          //System.out.println(this.email);
//       MailSender.sendEmailToUser(this.getEmail());
        

        return result;
    }

    
}
