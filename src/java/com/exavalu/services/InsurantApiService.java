/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

/**
 *
 * @author Subhadip Sarkar
 */
public class InsurantApiService {

    public static int calculateWeightage(InsuranceAPIData insuranceData) {
        
        
        
        int weightage = 0;

        // Insurance status weightage
        if (InsuranceAPIData.getInsuranceStatus.equalsIgnoreCase("old")) {
            weightage += 5;
        } else if (InsuranceAPIData.getInsuranceStatus.equalsIgnoreCase("new")) {
            weightage -= 5;
        }

        // Insurance history weightage
        if (InsuranceAPIData.getInsuranceHistory.equalsIgnoreCase("good")) {
            weightage -= 5;
        } else if (InsuranceAPIData.getInsuranceHistory.equalsIgnoreCase("bad")) {
            weightage += 5;
        } else if (InsuranceAPIData.getInsuranceHistory.equalsIgnoreCase("average")) {
            weightage += 3;
        }

        // Driving experience weightage
        if (InsuranceAPIData.getDrivingExperience >= 0 && InsuranceAPIData.getDrivingExperience <= 10) {
            weightage += 5;
        } else if (InsuranceAPIData.getDrivingExperience > 10 && InsuranceAPIData.getDrivingExperience <= 20) {
            weightage += 4;
        } else if (InsuranceAPIData.getDrivingExperience > 10 && InsuranceAPIData.getDrivingExperience <= 20) {
            weightage += 3;
        } else if (InsuranceAPIData.getDrivingExperience > 20 && InsuranceAPIData.getDrivingExperience <= 30) {
            weightage += 2;
        }
        // Amount claimed weightage
        if (InsuranceAPIData.getAmountClaimed >= 50000) {
            weightage += 10;
        } else if (InsuranceAPIData.getAmountClaimed > 30000) {
            weightage += 7;
        } else if (InsuranceAPIData.getAmountClaimed > 10000) {
            weightage += 5;
        } else if (InsuranceAPIData.getAmountClaimed > 5000) {
            weightage += 3;
        }

        return weightage;
    }

}
