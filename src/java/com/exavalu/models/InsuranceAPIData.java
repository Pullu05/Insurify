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
import org.apache.struts2.dispatcher.ApplicationMap;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author kumar
 */
public class InsuranceAPIData extends ActionSupport implements ApplicationAware, SessionAware, Serializable {

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

    public static InsuranceAPIData insuranceAPIData = null;

    public static InsuranceAPIData getInstance() {
        if (insuranceAPIData == null) {
            return new InsuranceAPIData();
        } else {
            return insuranceAPIData;
        }
    }

    public String doGetInsuranceDetails() throws Exception {

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

        int existingWeightageData = InsuranceApiService.getInsuranceApiWeightage(aadhaarNo);

        if (existingWeightageData == 0) {
            System.out.println("Null Insurance Data");

            existingWeightageData = InsuranceApiService.calculateWeightage(insuranceInfo);
            insuranceInfo.setWeightage(existingWeightageData);

            System.out.println("----------------------------------");
            System.out.println("aadhaarNo : " + insuranceInfo.getAadhaarNo());
            System.out.println("insuranceStatus : " + insuranceInfo.getInsuranceStatus());
            System.out.println("insuranceHistory : " + insuranceInfo.getInsuranceHistory());
            System.out.println("amountClaimed : " + insuranceInfo.getAmountClaimed());
            System.out.println("drivingExperience : " + insuranceInfo.getDrivingExperience());
            System.out.println("weightage : " + insuranceInfo.getWeightage());

            success = InsuranceApiService.storeIntoDB(insuranceInfo);
            if (success) {
                result = "SUCCESS";
            }
        } else {
            System.out.println("Weightage Data Already exists with value: " + existingWeightageData);
            result = "SUCCESS";
        }

        return result;
    }

    private String insuranceStatus;
    private String insuranceHistory;
    private int amountClaimed;
    private int drivingExperience;
    private int weightage;
    private String aadhaarNo;

    public String getInsuranceStatus() {
        return insuranceStatus;
    }

    public void setInsuranceStatus(String insuranceStatus) {
        this.insuranceStatus = insuranceStatus;
    }

    public String getInsuranceHistory() {
        return insuranceHistory;
    }

    public void setInsuranceHistory(String insuranceHistory) {
        this.insuranceHistory = insuranceHistory;
    }

    public int getAmountClaimed() {
        return amountClaimed;
    }

    public void setAmountClaimed(int amountClaimed) {
        this.amountClaimed = amountClaimed;
    }

    public int getDrivingExperience() {
        return drivingExperience;
    }

    public void setDrivingExperience(int drivingExperience) {
        this.drivingExperience = drivingExperience;
    }

    public int getWeightage() {
        return weightage;
    }

    public void setWeightage(int weightage) {
        this.weightage = weightage;
    }

    public String getAadhaarNo() {
        return aadhaarNo;
    }

    public void setAadhaarNo(String aadhaarNo) {
        this.aadhaarNo = aadhaarNo;
    }

}
