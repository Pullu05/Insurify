/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.models;

import com.exavalu.services.VehicleDataService;
import com.exavalu.services.VehicleInfoService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

/**
 * Description: The VehicleInfo public class represents a class that will
 * contain the private data members and the methods to add vehicle information
 * to the existing details, to edit/update vehicle details
 *
 * @author kumar
 */
public class VehicleInfo extends ActionSupport implements SessionAware, Serializable {

    private SessionMap<String, Object> sessionMap = (SessionMap) ActionContext.getContext().getSession();

    @Override
    public void setSession(Map<String, Object> session) {
        sessionMap = (SessionMap) session;
    }

    private int vehicleId;
    private String vehicleMake;
    private String vehicleModel;
    private String dateOfManufacture;
    private int weightage;

    /**
     * Description: The doAddVehicleInfo method is used to add the
     * details/information of a new vehicle and put the vehicleInfoList to the
     * session map
     *
     * @return it returns a string which is mapped to the struts.xml
     */
    public String doAddVehicleInfo() throws Exception {
        String result = "FAILURE";

        boolean success = VehicleInfoService.getInstance().addVehicleInfo(this);
        if (VehicleDataService.getInstance().checkMakeExistence(this.vehicleMake)) {
            VehicleDataService.getInstance().addModel(this.vehicleModel, this.vehicleMake);
        } else {
            VehicleDataService.getInstance().addMake(this.vehicleMake);
            VehicleDataService.getInstance().addModel(this.vehicleModel, this.vehicleMake);
        }

        if (success) {
            System.out.println("returning Success from doAddVehicleInfo method");
            List<VehicleInfo> vehicleInfoList = VehicleInfoService.getInstance().getAllVehicleInfo();
            sessionMap.put("VehicleInfoList", vehicleInfoList);
            result = "SUCCESS";
        } else {
            System.out.println("returning Failure from doAddVehicleInfo method");
        }

        return result;
    }

    /**
     * Description: The doEditVehicleInfo method is used to edit the
     * details/information of a existing vehicle and put the specific
     * vehicleInfo to the session map
     *
     * @return it returns a string which is mapped to the struts.xml
     */
    public String doEditVehicleInfo() throws Exception {
        VehicleInfo vehicleInfo = VehicleInfoService.getInstance().getVehicleInfo(this.vehicleId);

        sessionMap.put("SpecificVehicleInfo", vehicleInfo);

        return "SUCCESS";
    }

    /**
     * Description: The doUpdateVehicleInfo method is used to update the
     * existing details/information of a particular vehicle using it's id and
     * put the vehicleInfoList to the session map
     *
     * @return it returns a string which is mapped to the struts.xml
     */
    public String doUpdateVehicleInfo() throws Exception {
        VehicleInfoService.getInstance().updateVehicleInfo(this, this.vehicleId);
        List<VehicleInfo> vehicleInfoList = VehicleInfoService.getInstance().getAllVehicleInfo();
        sessionMap.put("VehicleInfoList", vehicleInfoList);
        return "SUCCESS";
    }

    /**
     * Getter method of VehicleId.
     *
     * @return it returns the id of the vehicleInfo
     */
    public int getVehicleId() {
        return vehicleId;
    }

    /**
     * Setter method of VehicleId.
     *
     * @param vehicleId it denotes the id of the vehicleInfo
     */
    public void setVehicleId(int vehicleId) {
        this.vehicleId = vehicleId;
    }

    /**
     * Getter method of VehicleMake.
     *
     * @return it returns the Make of the Vehicle
     */
    public String getVehicleMake() {
        return vehicleMake;
    }

    /**
     * Setter method of VehicleMake.
     *
     * @param vehicleMake it denotes the Make of the Vehicle
     */
    public void setVehicleMake(String vehicleMake) {
        this.vehicleMake = vehicleMake;
    }

    /**
     * Getter method of VehicleModel.
     *
     * @return it returns the Model of the Vehicle
     */
    public String getVehicleModel() {
        return vehicleModel;
    }

    /**
     * Setter method of VehicleModel.
     *
     * @param vehicleModel it denotes the Model of the Vehicle
     */
    public void setVehicleModel(String vehicleModel) {
        this.vehicleModel = vehicleModel;
    }

    /**
     * Getter method of DateOfManufacture.
     *
     * @return it returns the DateOfManufacture of the Vehicle
     */
    public String getDateOfManufacture() {
        return dateOfManufacture;
    }

    /**
     * Setter method of DateOfManufacture.
     *
     * @param dateOfManufacture it denotes the DateOfManufacture of the Vehicle
     */
    public void setDateOfManufacture(String dateOfManufacture) {
        this.dateOfManufacture = dateOfManufacture;
    }

    /**
     * Getter method of Weightage.
     *
     * @return it returns the Weightage of the Vehicle
     */
    public int getWeightage() {
        return weightage;
    }

    /**
     * Setter method of Weightage.
     *
     * @param weightage it denotes the Weightage of the Vehicle
     */
    public void setWeightage(int weightage) {
        this.weightage = weightage;
    }

}
