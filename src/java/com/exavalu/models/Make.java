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

    private int makeId;
    private String makeName;

    /**
     * Getter method of MakeCode.
     *
     * @return it returns the MakeId of the Vehicle
     */
    public int getMakeId() {
        return makeId;
    }

    /**
     * Setter method of MakeCode.
     *
     * @param makeId it denotes the MakeId of the Vehicle
     */
    public void setMakeId(int makeId) {
        this.makeId = makeId;
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
