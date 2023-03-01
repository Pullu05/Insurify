/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.models;

/**
 *
 * @author Nairwita Chakraborty
 */
public class Policy {
    
    private String weightageRange;
    private int coverage;
    private int premium;

    /**
     * @return the weightageRange
     */
    public String getWeightageRange() {
        return weightageRange;
    }

    /**
     * @param weightageRange the weightageRange to set
     */
    public void setWeightageRange(String weightageRange) {
        this.weightageRange = weightageRange;
    }

    /**
     * @return the coverage
     */
    public int getCoverage() {
        return coverage;
    }

    /**
     * @param coverage the coverage to set
     */
    public void setCoverage(int coverage) {
        this.coverage = coverage;
    }

    /**
     * @return the premium
     */
    public int getPremium() {
        return premium;
    }

    /**
     * @param premium the premium to set
     */
    public void setPremium(int premium) {
        this.premium = premium;
    }
    
    
    
}
