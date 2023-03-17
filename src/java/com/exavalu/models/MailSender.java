/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.models;

import com.exavalu.utils.EnvUtility;
import com.opensymphony.xwork2.ActionSupport;
import java.io.Serializable;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 * Description: The MailSender public class represents a class that will contain
 * the private data members and the method to send a mail to the user
 *
 * @author sinha
 */
public class MailSender extends ActionSupport implements Serializable {

    private String email;
    private String htmlContent;

    /**
     * Description: The sendEmailToUser method is used to send an email to the
     * user with the all quotation details
     *
     * @return it returns a string which is mapped to the struts.xml
     */
    public String sendEmailToUser() throws Exception {
        String result = "SUCCESS";
        try {
            EnvUtility envUtility = EnvUtility.getInstanceOfEnvUtility();

            String fromEmail = envUtility.getPropertyValue("fromEmail");
            final String password = envUtility.getPropertyValue("password");
            final String userName = envUtility.getPropertyValue("userName");

            System.out.println(fromEmail
                    + " : " + password + " : " + userName);

            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.socketFactory.port", "465");
            props.put("mail.smtp.socketFactory.class",
                    "javax.net.ssl.SSLSocketFactory");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.port", "25");

            Session session = Session.getDefaultInstance(props,
                    new javax.mail.Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(userName, password);
                }
            });

            Message mailMessage = new MimeMessage(session);

            //setting up all the messages
            mailMessage.setFrom(new InternetAddress(fromEmail));
            mailMessage.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(this.getEmail()));
            mailMessage.setSubject("Successfully created Quote");
            mailMessage.setContent(this.getHtmlContent(), "text/html");
            Transport.send(mailMessage);

        } catch (AddressException ex) {
            ex.printStackTrace();
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
     * Getter method of HtmlContent.
     *
     * @return it returns the HtmlContent of the quotation.jsp
     */
    public String getHtmlContent() {
        return htmlContent;
    }

    /**
     * Setter method of HtmlContent.
     *
     * @param htmlContent it denotes the HtmlContent of the quotation.jsp
     */
    public void setHtmlContent(String htmlContent) {
        this.htmlContent = htmlContent;
    }

}
