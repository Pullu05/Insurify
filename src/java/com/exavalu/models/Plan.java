/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.models;

import com.exavalu.services.PlanService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.Serializable;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

/**
 * Description: The Plan public class represents a class that will contain the
 * private data members and the method to add plan Name to the DB
 *
 * @author RISHAV DUTTA
 */
public class Plan extends ActionSupport implements SessionAware, Serializable {

    private SessionMap<String, Object> sessionMap = (SessionMap) ActionContext.getContext().getSession();

    @Override
    public void setSession(Map<String, Object> session) {
        sessionMap = (SessionMap) session;
    }

    private int id;
    private String planName;

    /**
     * Description: The doAddPlanName method is used to add the plan name and
     * put the Plan Name to the session map
     *
     * @return it returns a string which is mapped to the struts.xml
     */
    public String doAddPlanName() throws Exception {
        String result = "FAILURE";
        boolean planSuccess = PlanService.getInstance().addPlanName(this);
        if (planSuccess) {
            System.out.println("Successfully Added Plan Name");
            sessionMap.put("Plan", this);
            InsuranceAPIData.doGetInsuranceDetails();
            result = "SUCCESS";
        } else {
            System.out.println("Oops! Your Plan Name is not added");
        }
        return result;
    }

    /**
     * Getter method of id.
     *
     * @return it returns the id of the plan
     */
    public int getId() {
        return id;
    }

    /**
     * Setter method of id.
     *
     * @param id it denotes the id of the plan
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * Getter method of Plan Name.
     *
     * @return it returns the Plan Name of the plan
     */
    public String getPlanName() {
        return planName;
    }

    /**
     * Setter method of Plan Name.
     *
     * @param planName it denotes the Plan Name of the plan
     */
    public void setPlanName(String planName) {
        this.planName = planName;
    }

}
