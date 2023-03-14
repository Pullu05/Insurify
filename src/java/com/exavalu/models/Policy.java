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
 * Description: The Plan public class represents a class that will contain the
 * private data members and the method to calculate the total weightage using the vehicle weightage and insurant weightage
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
    /**
     * Getter method of WeightageRange.
     *
     * @return it returns the WeightageRange
     */
    public String getWeightageRange() {
        return weightageRange;
    }
    /**
     * Setter method of WeightageRange.
     *
     * @param weightageRange it denotes the WeightageRange
     */
    public void setWeightageRange(String weightageRange) {
        this.weightageRange = weightageRange;
    }
    /**
     * Getter method of Coverage.
     *
     * @return it returns the Coverage of the selected plan
     */
    public int getCoverage() {
        return coverage;
    }
    /**
     * Setter method of Coverage.
     *
     * @param coverage it denotes the Coverage of the selected plan
     */
    public void setCoverage(int coverage) {
        this.coverage = coverage;
    }
    /**
     * Getter method of Premium.
     *
     * @return it returns the Premium of the selected plan
     */
    public int getPremium() {
        return premium;
    }
    /**
     * Setter method of Premium.
     *
     * @param premium it denotes the Premium of the selected plan
     */
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
    /**
     * Description: The doGetTotalWeightage method is used to calculate total weightage 
     * using the vehicle weightage and insurant weightage , also based on the total weightage and the plan name 
     * the premium and the coverage is calculated and put the
     * coverage, premium, plan name to the session map
     * @return it returns a string which is mapped to the struts.xml
     */
    public String doGetTotalWeightage() throws Exception {
        String result = "SUCCESS";
        
        int vehicleWeightage = VehicleDataService.getInstance().getVehicleWeightage((Vehicle) sessionMap.get("VehicleData"));

        int insurantWeightage = InsurantDataService.getInstance().getDriverWeightage((InsurantData) sessionMap.get("InsurantData"));

        InsurantData insurantData = (InsurantData) sessionMap.get("InsurantData");
        String aadhaarNo = insurantData.getAadhaarNo();
        int apiWeightage = InsuranceApiService.getInstance().getInsuranceApiWeightage(aadhaarNo);

        int totalWeightage = vehicleWeightage + insurantWeightage + apiWeightage;

        System.out.println(vehicleWeightage + "  " + insurantWeightage + "  " + apiWeightage);

        Policy policy = PolicyService.getInstance().getPolicyInfo(totalWeightage);
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


        
        return result;
    }

    
}
