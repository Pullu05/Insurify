/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.models;

import com.exavalu.services.VehicleDataService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

/**
 * Description: The ProductData public class represents a class that will
 * contain the private data members and the method to add Vehicle data
 *
 * @author Subhadip Sarkar
 */
public class Vehicle extends ActionSupport implements SessionAware, Serializable {

    private SessionMap<String, Object> sessionMap = (SessionMap) ActionContext.getContext().getSession();

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

    /**
     * Description: The doPreAddVehicleData method is used to fetch all models
     * of a particular car maker and put the models list to the session map
     *
     * @return it returns a string which is mapped to the struts.xml
     */
    public String doPreAddVehicleData() throws Exception {
        String result = "FAILURE";

        if (this.getMake() != null) {
            List<Model> modelList = VehicleDataService.getInstance().getAllModels(this.make);
            System.out.println("Successfully Fetched Models");
            sessionMap.put("ModelList", modelList);
            result = "MODELLIST";
        }

        if (this.vin != null && this.make != null && this.model != null && this.enginePerformance != 0 && this.dateOfManufacture != null && this.numberOfSeats != 0 && this.fuelType != null && this.listPrice != 0 && this.licensePlateNumber != null && this.annualMileage != 0) {
            result = this.addVehicleData();
        }

        return result;
    }

    /**
     * Description: The addVehicleData method is used to add the Vehicle data
     * and put the VehicleData to the session map
     *
     * @return it returns a string which is mapped to the struts.xml
     */
    public String addVehicleData() throws Exception {
        String result = "FAILURE";
        String userEmail = (String) sessionMap.get("userEmail");
        boolean success = false;

        boolean vehicleExists = VehicleDataService.getInstance().checkVehicleExistence(this.vin);
        if (vehicleExists == true) {
            System.out.println("VIN already exists!");
            success = VehicleDataService.getInstance().updateVehicleData(this, userEmail);
        } else {
            System.out.println("New VIN found!");
            success = VehicleDataService.getInstance().doVehicleDataEntry(this, userEmail);
        }

        if (success == true) {
            System.out.println("Successfully Added Vehicle Data");
            result = "SUCCESS";
            sessionMap.put("VehicleData", this);
        } else {
            System.out.println("Oops your vehicle Data is not added");
        }

        return result;
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
     * Getter method of Make.
     *
     * @return it returns the Make of the Car
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
     * @return it returns the Model of the Car
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
     * Getter method of EnginePerformance.
     *
     * @return it returns the EnginePerformance of the Car
     */
    public int getEnginePerformance() {
        return enginePerformance;
    }

    /**
     * Setter method of EnginePerformance.
     *
     * @param enginePerformance it denotes the EnginePerformance of the car
     */
    public void setEnginePerformance(int enginePerformance) {
        this.enginePerformance = enginePerformance;
    }

    /**
     * Getter method of DateOfManufacture.
     *
     * @return it returns the DateOfManufacture of the Car
     */
    public String getDateOfManufacture() {
        return dateOfManufacture;
    }

    /**
     * Setter method of DateOfManufacture.
     *
     * @param dateOfManufacture it denotes the DateOfManufacture of the car
     */
    public void setDateOfManufacture(String dateOfManufacture) {
        this.dateOfManufacture = dateOfManufacture;
    }

    /**
     * Getter method of NumberOfSeats.
     *
     * @return it returns the NumberOfSeats of the Car
     */
    public int getNumberOfSeats() {
        return numberOfSeats;
    }

    /**
     * Setter method of NumberOfSeats.
     *
     * @param numberOfSeats it denotes the NumberOfSeats of the car
     */
    public void setNumberOfSeats(int numberOfSeats) {
        this.numberOfSeats = numberOfSeats;
    }

    /**
     * Getter method of FuelType.
     *
     * @return it returns the FuelType of the Car
     */
    public String getFuelType() {
        return fuelType;
    }

    /**
     * Setter method of FuelType.
     *
     * @param fuelType it denotes the FuelType of the car
     */
    public void setFuelType(String fuelType) {
        this.fuelType = fuelType;
    }

    /**
     * Getter method of ListPrice.
     *
     * @return it returns the ListPrice of the Car
     */
    public int getListPrice() {
        return listPrice;
    }

    /**
     * Setter method of ListPrice.
     *
     * @param listPrice it denotes the ListPrice of the car
     */
    public void setListPrice(int listPrice) {
        this.listPrice = listPrice;
    }

    /**
     * Getter method of LicensePlateNumber.
     *
     * @return it returns the LicensePlateNumber of the Car
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
     * Getter method of AnnualMileage.
     *
     * @return it returns the AnnualMileage of the Car
     */
    public int getAnnualMileage() {
        return annualMileage;
    }

    /**
     * Setter method of AnnualMileage.
     *
     * @param annualMileage it denotes the AnnualMileage of the car
     */
    public void setAnnualMileage(int annualMileage) {
        this.annualMileage = annualMileage;
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

}
