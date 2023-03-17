/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.models;

/**
 * Description: The Make public class represents a class that will contain the
 * private data members
 *
 * @author Admin
 */
public class Make {

    private String makeCode;
    private String makeName;

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

    /**
     * Getter method of MakeName.
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
