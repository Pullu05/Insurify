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

    private int modelId;
    private String modelName;
    private String makeName;

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
     * @return it returns the ModelId of the Vehicle
     */
    public int getModelId() {
        return modelId;
    }

    /**
     * Setter method of ModelCode.
     *
     * @param modelId it denotes the ModelId of the Vehicle
     */
    public void setModelId(int modelId) {
        this.modelId = modelId;
    }

    /**
     * Getter method of MakeCode.
     *
     * @return it returns the MakeName of the Vehicle
     */
    public String getMakeName() {
        return makeName;
    }

    /**
     * Setter method of MakeCode.
     *
     * @param makeName it denotes the MakeName of the Vehicle
     */
    public void setMakeName(String makeName) {
        this.makeName = makeName;
    }

}
