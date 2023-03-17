/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.models;

import com.exavalu.services.InsuranceApiService;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.Serializable;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

/**
 * Description: The InsuranceAPIData public class represents a class that will
 * contain the private data members and the method to get the insurance history
 * details from the API
 *
 * @author kumar
 */
public class InsuranceAPIData extends ActionSupport implements SessionAware, Serializable {

    private static SessionMap<String, Object> sessionMap = (SessionMap) ActionContext.getContext().getSession();

    @Override
    public void setSession(Map<String, Object> session) {
        sessionMap = (SessionMap) session;
    }

    private String insuranceStatus;
    private String insuranceHistory;
    private int amountClaimed;
    private int drivingExperience;
    private int weightage;
    private String aadhaarNo;

    /**
     * Description: The doGetInsuranceDetails method is used to get all the
     * insurance details from the API call
     *
     * @return it returns a string which is mapped to the struts.xml
     */
    public static String doGetInsuranceDetails() throws Exception {

        String result = "FAILURE";
        boolean success = false;
        HttpRequest postRequest = HttpRequest.newBuilder().uri(new URI("https://randomapi.com/api/7763e3d1c2c554b861a7aa429b67cbe7")).build();

        //creating client object to send request
        HttpClient httpClient = HttpClient.newHttpClient();

        HttpResponse<String> postResponse = httpClient.send(postRequest, HttpResponse.BodyHandlers.ofString());

        Gson gson = new Gson();

        JsonElement jsonElement = JsonParser.parseString(postResponse.body());
        JsonArray jsonArray = jsonElement.getAsJsonObject().getAsJsonArray("results");
        InsuranceAPIData insuranceInfo = gson.fromJson(jsonArray.get(0), InsuranceAPIData.class);

        // Getting aadhaar number from the Session Map
        InsurantData insurantData = (InsurantData) sessionMap.get("InsurantData");
        String aadhaarNo = insurantData.getAadhaarNo();

        insuranceInfo.setAadhaarNo(aadhaarNo);

        int existingWeightageData = InsuranceApiService.getInstance().getInsuranceApiWeightage(aadhaarNo);

        if (existingWeightageData == 0) {
            System.out.println("Null Insurance Data");

            existingWeightageData = InsuranceApiService.getInstance().calculateWeightage(insuranceInfo);
            insuranceInfo.setWeightage(existingWeightageData);

            System.out.println("----------------------------------");
            System.out.println("aadhaarNo : " + insuranceInfo.getAadhaarNo());
            System.out.println("insuranceStatus : " + insuranceInfo.getInsuranceStatus());
            System.out.println("insuranceHistory : " + insuranceInfo.getInsuranceHistory());
            System.out.println("amountClaimed : " + insuranceInfo.getAmountClaimed());
            System.out.println("drivingExperience : " + insuranceInfo.getDrivingExperience());
            System.out.println("weightage : " + insuranceInfo.getWeightage());

            success = InsuranceApiService.getInstance().storeIntoDB(insuranceInfo);
            if (success) {
                result = "SUCCESS";
            }
        } else {
            System.out.println("Weightage Data Already exists with value: " + existingWeightageData);
            result = "SUCCESS";
        }

        return result;
    }

    /**
     * Getter method of Insurance Status.
     *
     * @return it returns the insurance Status of the insurance data
     */
    public String getInsuranceStatus() {
        return insuranceStatus;
    }

    /**
     * Setter method of Insurance Status.
     *
     * @param insuranceStatus it denotes the Insurance Status of the insurance
     * data
     */
    public void setInsuranceStatus(String insuranceStatus) {
        this.insuranceStatus = insuranceStatus;
    }

    /**
     * Getter method of Insurance History.
     *
     * @return it returns the insurance History of the insurance data
     */
    public String getInsuranceHistory() {
        return insuranceHistory;
    }

    /**
     * Setter method of Insurance History.
     *
     * @param insuranceHistory it denotes the Insurance History of the insurance
     * data
     */
    public void setInsuranceHistory(String insuranceHistory) {
        this.insuranceHistory = insuranceHistory;
    }

    /**
     * Getter method of Claimed Amount.
     *
     * @return it returns the Claimed Amount of the insurance data
     */
    public int getAmountClaimed() {
        return amountClaimed;
    }

    /**
     * Setter method of Claimed Amount.
     *
     * @param amountClaimed it denotes the Claimed Amount of the insurance data
     */
    public void setAmountClaimed(int amountClaimed) {
        this.amountClaimed = amountClaimed;
    }

    /**
     * Getter method of Driving Experience.
     *
     * @return it returns the Driving Experience of the insurance data
     */
    public int getDrivingExperience() {
        return drivingExperience;
    }

    /**
     * Setter method of Driving Experience.
     *
     * @param drivingExperience it denotes the Driving Experience of the
     * insurance data
     */
    public void setDrivingExperience(int drivingExperience) {
        this.drivingExperience = drivingExperience;
    }

    /**
     * Getter method of Weightage.
     *
     * @return it returns the Weightage of the insurance data
     */
    public int getWeightage() {
        return weightage;
    }

    /**
     * Setter method of Weightage.
     *
     * @param weightage it denotes the Weightage of the insurance data
     */
    public void setWeightage(int weightage) {
        this.weightage = weightage;
    }

    /**
     * Getter method of AadhaarNo.
     *
     * @return it returns the AadhaarNo of the insurance data
     */
    public String getAadhaarNo() {
        return aadhaarNo;
    }

    /**
     * Setter method of AadhaarNo.
     *
     * @param aadhaarNo it denotes the Insurance Status of the insurance data
     */
    public void setAadhaarNo(String aadhaarNo) {
        this.aadhaarNo = aadhaarNo;
    }

}
