/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.models;

import com.exavalu.services.ProductDataService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.Serializable;
import java.util.Map;
import org.apache.struts2.dispatcher.ApplicationMap;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 * Description: The ProductData public class represents a class that will
 * contain the private data members and the method to add Product data
 *
 * @author Nairwita Chakraborty
 */
public class ProductData extends ActionSupport implements ApplicationAware, SessionAware, Serializable {

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

    private int productId;
    private String startDate;
    private String insuranceSum;
    private String meritRating;
    private String damageInsurance;
    private String courtesyCar;
    private String email;

    /**
     * Description: The doAddProductData method is used to add the Product data
     * and put the ProductData to the session map
     *
     * @return it returns a string which is mapped to the struts.xml
     */
    public String doAddProductData() throws Exception {

        String result = "FAILURE";
        String user_email = (String) sessionMap.get("userEmail");
        System.out.println(user_email);
        boolean success = ProductDataService.getInstance().addProductData(this, user_email);

        if (success) {
            System.out.println("Successfully added product data");
            result = "SUCCESS";
            sessionMap.put("ProductData", this);
        } else {
            System.out.println("Product data not added!!");
        }
        return result;
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
     * @return the productId
     */
    public int getProductId() {
        return productId;
    }

    /**
     * @param productId the productId to set
     */
    public void setProductId(int productId) {
        this.productId = productId;
    }

    /**
     * @return the startDate
     */
    public String getStartDate() {
        return startDate;
    }

    /**
     * @param startDate the startDate to set
     */
    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    /**
     * @return the insuranceSum
     */
    public String getInsuranceSum() {
        return insuranceSum;
    }

    /**
     * @param insuranceSum the insuranceSum to set
     */
    public void setInsuranceSum(String insuranceSum) {
        this.insuranceSum = insuranceSum;
    }

    /**
     * @return the meritRating
     */
    public String getMeritRating() {
        return meritRating;
    }

    /**
     * @param meritRating the meritRating to set
     */
    public void setMeritRating(String meritRating) {
        this.meritRating = meritRating;
    }

    /**
     * @return the damageInsurance
     */
    public String getDamageInsurance() {
        return damageInsurance;
    }

    /**
     * @param damageInsurance the damageInsurance to set
     */
    public void setDamageInsurance(String damageInsurance) {
        this.damageInsurance = damageInsurance;
    }

    /**
     * @return the courtesyCar
     */
    public String getCourtesyCar() {
        return courtesyCar;
    }

    /**
     * @param courtesyCar the courtesyCar to set
     */
    public void setCourtesyCar(String courtesyCar) {
        this.courtesyCar = courtesyCar;
    }

}
