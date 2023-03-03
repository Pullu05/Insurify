/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.models;

import com.exavalu.services.LoginService;
import com.exavalu.services.VehicleDataService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.logging.Logger;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Map;
import org.apache.struts2.dispatcher.ApplicationMap;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author Subhadip Sarkar
 */
public class Vehicle extends ActionSupport implements ApplicationAware, SessionAware, Serializable {

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

    private String vin;
    private String make;
    private String model;
    private int enginePerformance;
    private String dateOfManufacture;
    private int numberOfSeats;
    private String fuelType;
    private int listPrice;
    private String licensePlateNumber;
    private int annualMileage;
    private String email;

    public String doPreAddVehicleData() throws Exception {
        String result = "FAILURE";

        if (this.getMake() != null) {
            ArrayList modList = LoginService.getAllmodels(this.make);
            System.out.println("Successfully Fetch Models");
            sessionMap.put("ModelList", modList);
            result = "MODELLIST";
        }

        if (this.vin != null && this.make != null && this.model != null && this.enginePerformance != 0 && this.dateOfManufacture != null && this.numberOfSeats != 0 && this.fuelType != null && this.listPrice != 0 && this.licensePlateNumber != null && this.annualMileage != 0) {
            result = this.addVehicleData();
        }

        return result;
    }

    public String addVehicleData() throws Exception {
        String result = "FAILURE";
        String user_email = (String) sessionMap.get("userEmail");
        System.out.println(user_email);
        boolean success = VehicleDataService.doVehicleDataEntry(this, user_email);
//        ArrayList modList = LoginService.getAllmodels(this.make);
        if (success) {
            System.out.println("Successfully Added Vehicle Data");
            result = "SUCCESS";
            sessionMap.put("VehicleData", this);
        } else {
            System.out.println("OOps your vehicle Data is not added");
        }

        return result;
    }

    public String getVin() {
        return vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
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

    public int getEnginePerformance() {
        return enginePerformance;
    }

    public void setEnginePerformance(int enginePerformance) {
        this.enginePerformance = enginePerformance;
    }

    public String getDateOfManufacture() {
        return dateOfManufacture;
    }

    public void setDateOfManufacture(String dateOfManufacture) {
        this.dateOfManufacture = dateOfManufacture;
    }

    public int getNumberOfSeats() {
        return numberOfSeats;
    }

    public void setNumberOfSeats(int numberOfSeats) {
        this.numberOfSeats = numberOfSeats;
    }

    public String getFuelType() {
        return fuelType;
    }

    public void setFuelType(String fuelType) {
        this.fuelType = fuelType;
    }

    public int getListPrice() {
        return listPrice;
    }

    public void setListPrice(int listPrice) {
        this.listPrice = listPrice;
    }

    public String getLicensePlateNumber() {
        return licensePlateNumber;
    }

    public void setLicensePlateNumber(String licensePlateNumber) {
        this.licensePlateNumber = licensePlateNumber;
    }

    public int getAnnualMileage() {
        return annualMileage;
    }

    public void setAnnualMileage(int annualMileage) {
        this.annualMileage = annualMileage;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
