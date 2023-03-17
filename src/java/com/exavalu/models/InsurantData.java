/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.models;

import com.exavalu.services.InsurantDataService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.Serializable;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

/**
 * Description: The InsurantData public class represents a class that will
 * contain the private data members and the method to add insurant data
 *
 * @author sinha
 */
public class InsurantData extends ActionSupport implements SessionAware, Serializable {

    private SessionMap<String, Object> sessionMap = (SessionMap) ActionContext.getContext().getSession();

    @Override
    public void setSession(Map<String, Object> session) {
        sessionMap = (SessionMap) session;
    }

    private int insuranceDataId;
    private String firstName;
    private String lastName;
    private String email;
    private String aadhaarNo;
    private int age;
    private String medicalRecord;
    private String gender;
    private String streetAddress;
    private String country;
    private int zipCode;
    private String occupation;
    private String hobbies;
    private String website;
    private String picture;

    /**
     * Description: The addInsurantData method is used to add the insurant data
     * and put the InsurantData to the session map
     *
     * @return it returns a string which is mapped to the struts.xml
     */
    public String addInsurantData() throws Exception {
        String result = "FAILURE";

        boolean success = InsurantDataService.getInstance().doInsurantDataEntry(this);

        if (success) {
            System.out.println("Successfully Added Insurant Data");
            result = "SUCCESS";
            sessionMap.put("InsurantData", this);
        } else {
            System.out.println("OOps your Insurant Data is not added");
        }

        return result;
    }

    /**
     * Getter method of InsuranceDataId.
     *
     * @return it returns the id of the InsuranceData
     */
    public int getInsuranceDataId() {
        return insuranceDataId;
    }

    /**
     * Setter method of InsuranceDataId.
     *
     * @param insuranceDataId it denotes the id of the InsuranceData
     */
    public void setInsuranceDataId(int insuranceDataId) {
        this.insuranceDataId = insuranceDataId;
    }

    /**
     * Getter method of FirstName.
     *
     * @return it returns the FirstName of the user
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * Setter method of InsuranceDataId.
     *
     * @param firstName it denotes the FirstName of the user
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     * Getter method of LastName.
     *
     * @return it returns the LastName of the user
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * Setter method of LastName.
     *
     * @param lastName it denotes the LastName of the user
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
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
     * Getter method of AadhaarNo.
     *
     * @return it returns the AadhaarNo of the user
     */
    public String getAadhaarNo() {
        return aadhaarNo;
    }

    /**
     * Setter method of AadhaarNo.
     *
     * @param aadhaarNo it denotes the AadhaarNo of the user
     */
    public void setAadhaarNo(String aadhaarNo) {
        this.aadhaarNo = aadhaarNo;
    }

    /**
     * Getter method of Age.
     *
     * @return it returns the Age of the user
     */
    public int getAge() {
        return age;
    }

    /**
     * Setter method of Age.
     *
     * @param age it denotes the Age of the user
     */
    public void setAge(int age) {
        this.age = age;
    }

    /**
     * Getter method of MedicalRecord.
     *
     * @return it returns the MedicalRecord of the user
     */
    public String getMedicalRecord() {
        return medicalRecord;
    }

    /**
     * Setter method of MedicalRecord.
     *
     * @param medicalRecord it denotes the MedicalRecord of the user
     */
    public void setMedicalRecord(String medicalRecord) {
        this.medicalRecord = medicalRecord;
    }

    /**
     * Getter method of Gender.
     *
     * @return it returns the Gender of the user
     */
    public String getGender() {
        return gender;
    }

    /**
     * Setter method of Gender.
     *
     * @param gender it denotes the Gender of the user
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * Getter method of StreetAddress.
     *
     * @return it returns the StreetAddress of the user
     */
    public String getStreetAddress() {
        return streetAddress;
    }

    /**
     * Setter method of StreetAddress.
     *
     * @param streetAddress it denotes the StreetAddress of the user
     */
    public void setStreetAddress(String streetAddress) {
        this.streetAddress = streetAddress;
    }

    /**
     * Getter method of Country.
     *
     * @return it returns the Country of the user
     */
    public String getCountry() {
        return country;
    }

    /**
     * Setter method of Country.
     *
     * @param country it denotes the Country of the user
     */
    public void setCountry(String country) {
        this.country = country;
    }

    /**
     * Getter method of ZipCode.
     *
     * @return it returns the ZipCode of the user
     */
    public int getZipCode() {
        return zipCode;
    }

    /**
     * Setter method of ZipCode.
     *
     * @param zipCode it denotes the ZipCode of the user
     */
    public void setZipCode(int zipCode) {
        this.zipCode = zipCode;
    }

    /**
     * Getter method of Occupation.
     *
     * @return it returns the Occupation of the user
     */
    public String getOccupation() {
        return occupation;
    }

    /**
     * Setter method of Occupation.
     *
     * @param occupation it denotes the Occupation of the user
     */
    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    /**
     * Getter method of Hobbies.
     *
     * @return it returns the Hobbies of the user
     */
    public String getHobbies() {
        return hobbies;
    }

    /**
     * Setter method of Hobbies.
     *
     * @param hobbies it denotes the Hobbies of the user
     */
    public void setHobbies(String hobbies) {
        this.hobbies = hobbies;
    }

    /**
     * Getter method of Website.
     *
     * @return it returns the Website of the user
     */
    public String getWebsite() {
        return website;
    }

    /**
     * Setter method of Website.
     *
     * @param website it denotes the Website of the user
     */
    public void setWebsite(String website) {
        this.website = website;
    }

    /**
     * Getter method of Picture.
     *
     * @return it returns the Picture of the user
     */
    public String getPicture() {
        return picture;
    }

    /**
     * Setter method of Picture.
     *
     * @param picture it denotes the Picture of the user
     */
    public void setPicture(String picture) {
        this.picture = picture;
    }

}
