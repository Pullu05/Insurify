/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.services;

import com.exavalu.models.Users;
import com.exavalu.utils.JDBCConnectionManager;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import org.apache.log4j.Logger;

/**
 * Description: The LoginService public class represents a class that will
 * contain the methods for login, sign-up, validate the user email while login
 * and get the role id based on user and admin
 *
 * @author RISHAV DUTTA
 */
public class LoginService {

    public static LoginService loginService = null;

    /**
     *
     * Description: It is the Instance method for LoginService class
     *
     * @return It returns the created object of LoginService
     */
    public static LoginService getInstance() {
        if (loginService == null) {
            return new LoginService();
        } else {
            return loginService;
        }
    }

    /**
     *
     * Description: The doLogin method is used to do the login by validating the
     * email and password
     *
     * @param user it is the user datatype/model which has properties like
     * email,password,role-id
     *
     * @return this method returns a boolean type which denotes the status of
     * login by the user( True if successfully logged in, otherwise False )
     */
    public boolean doLogin(Users user) {
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
//            ex.printStackTrace();
            Logger log = Logger.getLogger(LoginService.class.getName());
//            log.error(ex);
            log.error("Error code: " + ex.getErrorCode() + " | Error message: " + ex.getMessage() + " | Date: " + new Date());

        }

        return success;
    }

    /**
     *
     * Description: The getUser method is used to get the particular user using
     * the email
     *
     * @param emailAddress email address of the user
     * @return this method returns the corresponding user for the given email
     */
    public Users getUser(String emailAddress) {
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
//            ex.printStackTrace();
            Logger log = Logger.getLogger(LoginService.class.getName());
            log.error("Error code: " + ex.getErrorCode() + " | Error message: " + ex.getMessage() + " | Date: " + new Date());
        }

        return user;
    }

    /**
     *
     * Description: The doGetRoleId method is used to get the role id for a
     * given user email
     *
     * @param email email address of the user
     *
     * @return this method returns the role id for the given user email
     */
    public int doGetRoleId(String email) {
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
//            ex.printStackTrace();
            Logger log = Logger.getLogger(LoginService.class.getName());
            log.error("Error code: " + ex.getErrorCode() + " | Error message: " + ex.getMessage() + " | Date: " + new Date());
        }
        return roleId;
    }

    /**
     *
     * Description: The doSignUp method is used to do the sign-up of a user. The
     * sign-up functionality is only applicable for the user not for the admin
     *
     * @param user it is the user datatype/model which has properties like
     * email,password,role-id
     * @return this method returns a boolean type which denotes the status of
     * singing up by the new user( True if successfully signed up and inserted
     * the user details to the DB, otherwise False )
     */
    public boolean doSignUp(Users user) {
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
//            ex.printStackTrace();
            Logger log = Logger.getLogger(LoginService.class.getName());
            log.error("Error code: " + ex.getErrorCode() + " | Error message: " + ex.getMessage() + " | Date: " + new Date());
        }
        return result;
    }

    public String getMd5Hash(String password) {
        try {

            MessageDigest md = MessageDigest.getInstance("MD5");

            byte[] messageDigest = md.digest(password.getBytes());

            BigInteger no = new BigInteger(1, messageDigest);

            String hashtext = no.toString(16);
            while (hashtext.length() < 32) {
                hashtext = "0" + hashtext;
            }
            return hashtext;
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
}
