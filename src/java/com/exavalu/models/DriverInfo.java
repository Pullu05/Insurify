/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.models;

import com.exavalu.services.DriverInfoService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Map;
import org.apache.struts2.dispatcher.ApplicationMap;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 * Description: The DriverInfo public class represents a class that will contain
 * the private data members and the methods to add driver information to the
 * existing details, to edit/update driver details
 *
 * @author RISHAV DUTTA
 */
public class DriverInfo extends ActionSupport implements ApplicationAware, SessionAware, Serializable {

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

    private int id;
    private String medicalHistory;
    private String driverAge;
    private int weightage;

    /**
     * Description: The doAddDriverInfo method is used to add the
     * details/information of a new driver and put the driverInfoList to the
     * session map
     *
     * @return it returns a string which is mapped to the struts.xml
     */
    public String doAddDriverInfo() throws Exception {
        String result = "FAILURE";

        boolean success = DriverInfoService.getInstance().addDriverInfo(this);

        if (success) {
            System.out.println("returning Success from doAddDriverInfo method");
            ArrayList driverInfoList = DriverInfoService.getInstance().getAllDriverInfo();
            sessionMap.put("DriverInfoList", driverInfoList);
            result = "SUCCESS";
        } else {
            System.out.println("returning Failure from doAddDriverInfo method");
        }

        return result;
    }

    /**
     * Description: The doEditDriverInfo method is used to edit the
     * details/information of a existing driver and put the specific driverInfo
     * to the session map
     *
     * @return it returns a string which is mapped to the struts.xml
     */
    public String doEditDriverInfo() throws Exception {
        DriverInfo driverInfo = DriverInfoService.getInstance().getDriverInfo(this.id);

        sessionMap.put("SpecificDriverInfo", driverInfo);

        return "SUCCESS";
    }

    /**
     * Description: The doUpdateDriverInfo method is used to update the existing
     * details/information of a particular driver using it's id and put the
     * driverInfoList to the session map
     *
     * @return it returns a string which is mapped to the struts.xml
     */
    public String doUpdateDriverInfo() throws Exception {
        boolean result = false;
        result = DriverInfoService.getInstance().updateDriverInfo(this, this.id);
        ArrayList driverInfoList = DriverInfoService.getInstance().getAllDriverInfo();
        sessionMap.put("DriverInfoList", driverInfoList);
        return "SUCCESS";
    }

    /**
     * Getter method of id.
     *
     * @return it returns the id of the driverInfo
     */
    public int getId() {
        return id;
    }

    /**
     * Setter method of id.
     *
     * @param id it denotes the id of the driverInfo
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * Getter method of medical history.
     *
     * @return it returns the medical history of the driver
     */
    public String getMedicalHistory() {
        return medicalHistory;
    }

    /**
     * Setter method of medical history.
     *
     * @param medicalHistory it denotes medical history of the driver
     */
    public void setMedicalHistory(String medicalHistory) {
        this.medicalHistory = medicalHistory;
    }

    /**
     * Getter method of Driver Age.
     *
     * @return it returns the Age of the driver
     */
    public String getDriverAge() {
        return driverAge;
    }

    /**
     * Setter method of Driver Age.
     *
     * @param driverAge it denotes the Age of the driver
     */
    public void setDriverAge(String driverAge) {
        this.driverAge = driverAge;
    }

    /**
     * Getter method of weightage.
     *
     * @return it returns the weightage of the driver
     */
    public int getWeightage() {
        return weightage;
    }

    /**
     * Setter method of weightage.
     *
     * @param weightage it denotes the weightage of the driver
     */
    public void setWeightage(int weightage) {
        this.weightage = weightage;
    }

}
