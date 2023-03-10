/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.models;

/**
 * Description: The Model public class represents a class that will contain the
 * private data members
 *
 * @author Admin
 */
public class Model {

    private String modelCode;
    private String modelName;
    private String makeCode;

    /**
     * Getter method of ModelName.
     *
     * @return it returns the ModelName of the Vehicle
     */
    public String getModelName() {
        return modelName;
    }

    /**
     * Setter method of ModelName.
     *
     * @param modelName it denotes the ModelName of the Vehicle
     */
    public void setModelName(String modelName) {
        this.modelName = modelName;
    }
    /**
     * Getter method of ModelCode.
     *
     * @return it returns the ModelCode of the Vehicle
     */
    public String getModelCode() {
        return modelCode;
    }
    /**
     * Setter method of ModelCode.
     *
     * @param modelCode it denotes the ModelCode of the Vehicle
     */
    public void setModelCode(String modelCode) {
        this.modelCode = modelCode;
    }
    /**
     * Getter method of MakeCode.
     *
     * @return it returns the MakeCode of the Vehicle
     */
    public String getMakeCode() {
        return makeCode;
    }
    /**
     * Setter method of MakeCode.
     *
     * @param makeCode it denotes the MakeCode of the Vehicle
     */
    public void setMakeCode(String makeCode) {
        this.makeCode = makeCode;
    }

}
