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
 * Description: The Users public class represents a class that will
 * contain the methods for login, logout, sign-up, validate the user email while login and get the role id based on user and admin
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
    /**
     *
     * Description: The doLogin method is used to do the login by validating the email, password and role id 
     * 
     * @return it returns a string which is mapped to the struts.xml
     */
    public String doLogin() throws Exception {
        String result = "FAILURE";
        
        System.out.println(this.password);
        this.setPassword(LoginService.getInstance().getMd5Hash(this.password));
        System.out.println(this.password);
        boolean success = LoginService.getInstance().doLogin(this);
        ArrayList makeList = VehicleDataService.getInstance().getAllMakers();
        sessionMap.put("MakeList", makeList);

        if (!success) {
            String errorMsg = "Either Email Address or Password is Wrong";
            sessionMap.put("ErrorMsg", errorMsg);
            System.out.println("returning Failure from doLogin method");
        }
        int RoleId = LoginService.getInstance().doGetRoleId(this.email);

        System.out.println(RoleId);

        if (RoleId == 1) {
            System.out.println(success);
            if (success) {
                System.out.println("returning Success from doLogin method");
                sessionMap.put("LoggedIn", this);

                Users user = LoginService.getInstance().getUser(this.email);

                sessionMap.put("User", user);

                ArrayList driverInfoList = DriverInfoService.getInstance().getAllDriverInfo();
                sessionMap.put("DriverInfoList", driverInfoList);

                ArrayList vehicleInfoList = VehicleInfoService.getInstance().getAllVehicleInfo();
                sessionMap.put("VehicleInfoList", vehicleInfoList);

                float averagePremium = QuotationService.getInstance().getAvgPremium();
                sessionMap.put("AvgPrem",averagePremium);
                
                float averageCoverage = QuotationService.getInstance().getAvgCoverage();
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
                Users user = LoginService.getInstance().getUser(this.email);
                sessionMap.put("User", user);
                sessionMap.put("UserLoggedIn", user);
                sessionMap.put("userEmail", user.getEmail());
                sessionMap.put("MakeList", makeList);

                ArrayList quotationList = QuotationService.getInstance().getQuotationList(this.email);
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
    /**
     *
     * Description: The doLogout method is used to do the logout by clearing the session for the user
     * 
     * @return it returns a string which is mapped to the struts.xml
     */
    public String doLogout() throws Exception {
        sessionMap.clear();
        return "SUCCESS";
    }
    /**
     *
     * Description: The doSignUp method is used to do the SignUp by a new user
     * 
     * @return it returns a string which is mapped to the struts.xml
     */
    public String doSignUp() throws Exception {
        sessionMap.clear();
        String result = "FAILURE";
        
        System.out.println(this.password);
        this.setPassword(LoginService.getInstance().getMd5Hash(this.password));
        System.out.println(this.password);
        boolean success = LoginService.getInstance().doSignUp(this);

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
     * Getter method of Password.
     *
     * @return it returns the Password of the user
     */
    public String getPassword() {
        return password;
    }
    /**
     * Setter method of Password.
     *
     * @param password it denotes the Password of the user
     */
    public void setPassword(String password) {
        this.password = password;
    }
    /**
     * Getter method of RoleId.
     *
     * @return it returns the RoleId of the user
     */
    public int getRoleId() {
        return roleId;
    }
    /**
     * Setter method of RoleId.
     *
     * @param roleId it denotes the RoleId of the user
     */
    public void setRoleId(int roleId) {
        this.roleId = roleId;
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
     * Setter method of FirstName.
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
    
}
