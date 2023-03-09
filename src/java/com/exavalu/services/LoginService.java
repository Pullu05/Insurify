/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.Users;
import com.exavalu.utils.JDBCConnectionManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import org.apache.log4j.Logger;

/**
 *
 * @author RISHAV DUTTA
 */
public class LoginService {
    public static LoginService loginService= null;
    
    public static LoginService getInstance()
    {
        if(loginService==null)
        {
            return new LoginService();
        }
        else
        {
            return loginService;
        }
    }

    public  boolean doLogin(Users user) {
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

    public  Users getUser(String emailAddress) {
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

    public  int doGetRoleId(String email) {
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

    public  boolean doSignUp(Users user) {
        boolean result = false;
        Connection con = JDBCConnectionManager.getConnection();
        String sql = "INSERT INTO user(email,password,firstName,lastName,roleId)" + "VALUES(? ,? ,? ,?, ?)";

        try {
            PreparedStatement preparedStatement = con.prepareStatement(sql);

            preparedStatement.setString(1, user.getEmail());
            preparedStatement.setString(2, user.getPassword());
            preparedStatement.setString(3, user.getFirstName());
            preparedStatement.setString(4, user.getLastName());
            preparedStatement.setInt(5, 2);

            System.out.println("LoginService :: " + preparedStatement);

            int rs = preparedStatement.executeUpdate();

            if (rs == 1) {
                result = true;
            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return result;
    }
}
