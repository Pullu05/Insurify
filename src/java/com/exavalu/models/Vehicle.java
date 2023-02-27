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
import static org.apache.commons.collections.CollectionUtils.isEmpty;
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
    private String make;
    private String model;

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }
    private int enginePerformance;
    private String dateOfManufacture;
    private int numberOfSeats;
    private String fuelType;
    private int listPrice;
    private String licensePlateNumber;
    private int annualMileage;

    public String addVehicleData() throws Exception {
        String result = "FAILURE";
        boolean success = VehicleDataService.doVehicleDataEntry(this);
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

    public String doPreAddVehicleData() throws Exception {
        String result = "FAILURE";
//        boolean success = VehicleDataService.doVehicleDataEntry(this);
//        ArrayList makeList = LoginService.getAllmakers();
//        sessionMap.put("MakeList", makeList);
//        sessionMap.put("User", user);
        if (this.getMake() != null) {
            ArrayList modList = LoginService.getAllmodels(this.make);
            System.out.println("Successfully Fetch Models");
            sessionMap.put("ModelList", modList);
            result = "MODELLIST";
        }
        if (this.getModel() != null) {
            boolean success = VehicleDataService.doVehicleDataEntry(this);
            if (success) {
                System.out.println("Successfully Added Vehicle Data");
                result = "SUCCESS";
                sessionMap.put("VehicleData", this);
            }
        } else {
            System.out.println("OOps your vehicle Data is not added");
        }

        return result;
    }

    public int getEnginePerformance() {
        return enginePerformance;
    }

    public void setEnginePerformance(int enginePerformance) {
        this.enginePerformance = enginePerformance;
    }

    public int getNumberOfSeats() {
        return numberOfSeats;
    }

    public void setNumberOfSeats(int numberOfSeats) {
        this.numberOfSeats = numberOfSeats;
    }

    public int getListPrice() {
        return listPrice;
    }

    public void setListPrice(int listPrice) {
        this.listPrice = listPrice;
    }

    public int getAnnualMileage() {
        return annualMileage;
    }

    public void setAnnualMileage(int annualMileage) {
        this.annualMileage = annualMileage;
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

    public String getFuelType() {
        return fuelType;
    }

    public void setFuelType(String fuelType) {
        this.fuelType = fuelType;
    }

    public String getDateOfManufacture() {
        return dateOfManufacture;
    }

    public void setDateOfManufacture(String dateOfManufacture) {
        this.dateOfManufacture = dateOfManufacture;
    }

    public SessionMap<String, Object> getSessionMap() {
        return sessionMap;
    }

    public void setSessionMap(SessionMap<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

    public ApplicationMap getMap() {
        return map;
    }

    public void setMap(ApplicationMap map) {
        this.map = map;
    }

    public static Logger getLOG() {
        return LOG;
    }

    public static void setLOG(Logger LOG) {
        ActionSupport.LOG = LOG;
    }

}
