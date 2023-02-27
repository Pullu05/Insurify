/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.Make;
import com.exavalu.models.Model;
import com.exavalu.models.Users;
import com.exavalu.utils.JDBCConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author RISHAV DUTTA
 */
public class LoginService {

    public static boolean doLogin(Users user) {
        boolean success = false;

        String sql = "Select * from user where email=? and password=?";

        try {
            Connection con = JDBCConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getEmail());
            ps.setString(2, user.getPassword());

            System.out.println("LoginService :: " + ps);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                success = true;
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return success;
    }

    public static Users getUser(String emailAddress) {
        Connection con = JDBCConnectionManager.getConnection();
        Users user = new Users();
        try {

            String sql = "Select * from user where email=?";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, emailAddress);

            System.out.println("sql: " + preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            System.out.println(rs);
            if (rs.next()) {
                user.setEmail(rs.getString("email"));
                user.setFirstName(rs.getString("firstName"));
                user.setLastName(rs.getString("lastName"));
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return user;
    }

    public static int doGetRoleId(String email) {
        int roleId = 0;
        String sql = "select roleId from user where email=?";
        try {
            Connection con = JDBCConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            System.out.println("GetRole :: " + ps);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                roleId = rs.getInt("roleId");
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return roleId;
    }

    public static ArrayList getAllmakers() {
        ArrayList makeList = new ArrayList();

        String sql = "Select * from makers";

        try {
            Connection con = JDBCConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Make make = new Make();
                make.setMakeCode(rs.getString("makeCode"));
                make.setMakeName(rs.getString("makeName"));
                makeList.add(make);
            }
            System.out.println("MakeList :" + makeList.size());

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return makeList;
    }

    public static ArrayList getAllmodels(String makeCode) {
        ArrayList modelList = new ArrayList();

        String sql = "Select * from models where makeCode = ?";

        try {
            Connection con = JDBCConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, makeCode);

            ResultSet rs = ps.executeQuery();
            System.err.println(ps);

            while (rs.next()) {
                Model model = new Model();
                model.setMakeCode(rs.getString("makeCode"));
                model.setModelCode(rs.getString("modelCode"));
                model.setModelName(rs.getString("modelName"));
                modelList.add(model);
            }
            System.out.println("ModelList :" + modelList.size());

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return modelList;
    }
}
