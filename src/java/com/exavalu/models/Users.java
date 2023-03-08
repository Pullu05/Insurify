/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.models;

import com.exavalu.services.DriverInfoService;
import com.exavalu.services.LoginService;
import com.exavalu.services.QuotationService;
import com.exavalu.services.VehicleDataService;
import com.exavalu.services.VehicleInfoService;
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
 *
 * @author RISHAV DUTTA
 */
public class Users extends ActionSupport implements ApplicationAware, SessionAware, Serializable {

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

    private String email;
    private String password;
    private int roleId;
    private String firstName;
    private String lastName;

    public String doLogin() throws Exception {
        String result = "FAILURE";

        boolean success = LoginService.doLogin(this);
        ArrayList makeList = VehicleDataService.getAllmakers();
        sessionMap.put("MakeList", makeList);

        if (!success) {
            String errorMsg = "Either Email Address or Password is Wrong";
            sessionMap.put("ErrorMsg", errorMsg);
            System.out.println("returning Failure from doLogin method");
        }
        int RoleId = LoginService.doGetRoleId(this.email);

        System.out.println(RoleId);

        if (RoleId == 1) {
            System.out.println(success);
            if (success) {
                System.out.println("returning Success from doLogin method");
                sessionMap.put("LoggedIn", this);

                Users user = LoginService.getUser(this.email);

                sessionMap.put("User", user);

                ArrayList driverInfoList = DriverInfoService.getAllDriverInfo();
                sessionMap.put("DriverInfoList", driverInfoList);

                ArrayList vehicleInfoList = VehicleInfoService.getAllVehicleInfo();
                sessionMap.put("VehicleInfoList", vehicleInfoList);

                float averagePremium = QuotationService.getAvgPremium();
                sessionMap.put("AvgPrem",averagePremium);
                
                float averageCoverage = QuotationService.getAvgCoverage();
                sessionMap.put("AvgCvg",averageCoverage);
                result = "ADMIN";
            } else {
                String errorMsg = "Either Email Address or Password is Wrong";
                sessionMap.put("ErrorMsg", errorMsg);
                System.out.println("returning Failure from doLogin method");

            }
        }
        if (RoleId == 2) {
            System.out.println(success);
            if (success) {
                sessionMap.put("LoggedIn", this);
                Users user = LoginService.getUser(this.email);
                sessionMap.put("User", user);
                sessionMap.put("UserLoggedIn", user);
                sessionMap.put("userEmail", user.getEmail());
                sessionMap.put("MakeList", makeList);

                ArrayList quotationList = QuotationService.getQuotationList(this.email);
                sessionMap.put("PrevQuotList", quotationList);
                    result = "USER";
            } else {
                String errorMsg = "Either Email Address or Password is Wrong";
                sessionMap.put("ErrorMsg", errorMsg);
                System.out.println("returning Failure from doLogin method");

            }
        }
        
        return result;
    }

    public String doLogout() throws Exception {
        sessionMap.clear();
        return "SUCCESS";
    }

    public String doSignUp() throws Exception {
        sessionMap.clear();
        String result = "FAILURE";

        boolean success = LoginService.doSignUp(this);

        if (success) {
            System.out.println("returning Success from doSignUp method");
            String successMsg = "Now Login with your Email Id and PassWord";
            sessionMap.put("SuccessMsg", successMsg);

            result = "SUCCESS";
        } else {
            String errorMsg = "Email Id Already Register Please Log-In";
            sessionMap.put("ErrorMsg1", errorMsg);
            System.out.println("returning Failure from doSignUp method");
        }

        return result;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRoleId() {
        return roleId;
    }

    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    
}
