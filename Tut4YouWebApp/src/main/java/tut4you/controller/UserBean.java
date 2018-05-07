/*
 * Licensed under the Academic Free License (AFL 3.0).
 *     http://opensource.org/licenses/AFL-3.0
 * 
 *  This code has been developed by a group of CSULB students working on their 
 *  Computer Science senior project called Tutors4You.
 *  
 *  Tutors4You is a web application that students can utilize to findUser a tutor and
 *  ask them to meet at any location of their choosing. Students that struggle to understand 
 *  the courses they are taking would benefit from this peer to peer tutoring service.
 
 *  2017 Amanda Pan <daikiraidemodaisuki@gmail.com>
 *  2017 Andrew Kaichi <ahkaichi@gmail.com>
 *  2017 Keith Tran <keithtran25@gmail.com>
 *  2017 Syed Haider <shayder426@gmail.com>
 */
package tut4you.controller;

import java.io.Serializable;
import java.text.ParseException;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.ZoneId;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.ejb.EJB;
import javax.enterprise.context.SessionScoped;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.inject.Named;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import tut4you.model.*;

/**
 * UserBean checks if a user is authenticated.
 *
 * @author Alvaro Monge <alvaro.monge@csulb.edu>
 * Modified by Amanda Pan <daikiraidemodaisuki@gmail.com>
 * Modified by Andrew Kaichi <ahkaichi@gmail.com>
 */
@Named
@SessionScoped
public class UserBean implements Serializable {

    private static final long serialVersionUID = 1L;

    private static final Logger LOGGER = Logger.getLogger("UserBean");

    @EJB
    private Tut4YouApp tut4youapp;

    private User user;
    private String oldPassword;
    private String newPassword;
    boolean doNotDisturb;
    int tabIndex;
    boolean condition;
    //boolean isTutor;
    private String currentZip;
    private String hourlyRate;

    private ZipCode zipCode;

    private String defaultZip;
    private int maxRadius;
    private Date joinedDateAsTutor;
    /**
     * Creates a new instance of UserIdentity
     */
    @PostConstruct
    public void createUserBean() {
        user = null;
        condition = true;
        zipCode = new ZipCode();
        //isTutor = false;
    }

    /**
     * Destroys a new instance of UserIdentity
     */
    @PreDestroy
    public void destroyUserBean() {
    }
    public ZipCode getZipCode() {
        return zipCode;
    }

    public void setZipCode(ZipCode zipCode) {
        this.zipCode = zipCode;
    }
    public String getHourlyRate() {
        return hourlyRate;
    }

    public void setHourlyRate(String hourlyRate) {
        this.hourlyRate = hourlyRate;
    }

    public String getDefaultZip() {
        return defaultZip;
    }

    public void setDefaultZip(String defaultZip) {
        this.defaultZip = defaultZip;
    }

    public int getMaxRadius() {
        return maxRadius;
    }

    public void setMaxRadius(int maxRadius) {
        this.maxRadius = maxRadius;
    }

    public Date getJoinedDateAsTutor() {
        return joinedDateAsTutor;
    }

    public void setJoinedDateAsTutor(Date joinedDateAsTutor) {
        this.joinedDateAsTutor = joinedDateAsTutor;
    }

    /**
     * get current zip
     *
     * @return currentZip
     */
    public String getCurrentZip() {
        return currentZip;
    }
    /**
     * set current zip
     *
     * @param currentZip
     */
    public void setCurrentZip(String currentZip) {
        this.currentZip = currentZip;
    }

    /**
     * get boolean condition
     *
     * @return condition
     */
    public boolean isCondition() {
        return condition;
    }

    /**
     * set boolean condition
     *
     * @param condition
     */
    public void setCondition(boolean condition) {
        this.condition = condition;
    }

    /**
     * Gets the Tutor object
     *
     * @return
     */
    public User getUser() {
        return user;
    }

    /**
     * Sets the User object
     *
     * @param user
     */
    public void setUser(User user) {
        this.user = user;
    }
        /**
     * Gets the field of the oldPassword
     * @return the field of the old Password
     */
    public String getOldPassword() {
        return oldPassword;
    }

    /**
     * Sets the value in the old password to check if password match
     * @param oldPassword the password matching the typed password
     */
    public void setOldPassword(String oldPassword) {
        this.oldPassword = oldPassword;
    }
    
    /**
     * Gets the field of the new Password
     * @return the field of the new Password
     */
    public String getNewPassword() {
        return newPassword;
    }

    /**
     * Sets the value of the new passcode
     * @param newPassword 
     */
    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }
    
    /**
     * Gets the state of doNotDisturb is on or off
     *
     * @return true/false
     */
    public boolean isDoNotDisturb() {
        return doNotDisturb;
    }

    /**
     * Sets the state of doNotDisturb
     *
     * @param doNotDisturb
     */
    public void setDoNotDisturb(boolean doNotDisturb) {
        this.doNotDisturb = doNotDisturb;
    }

    /**
     * Gets the index of the tab
     *
     * @return tabIndex
     */
    public int getTabIndex() {
        return tabIndex;
    }

    /**
     * Sets the index of the tab
     *
     * @param tabIndex
     */
    public void setTabIndex(int tabIndex) {
        this.tabIndex = tabIndex;
    }

    /**
     * Called the EJG to update the state of doNotDisturb
     *
     * @param d
     */
    public void switchDoNotDisturb(Boolean d) {
        tut4youapp.switchDoNotDisturb(doNotDisturb);
    }

    /**
     * Determine if the user is authenticated and if so, make sure the session
     * scope includes the User object for the authenticated user
     *
     * @return true if the user making a request is authenticated, false
     * otherwise.
     */
    public boolean isIsUserAuthenticated() {
        boolean isAuthenticated = true;
        if (null == this.user) {
            FacesContext context = FacesContext.getCurrentInstance();
            HttpServletRequest request = (HttpServletRequest) context.getExternalContext().getRequest();
            String userName = request.getRemoteUser();
            if (userName == null) {
                isAuthenticated = false;
            } else {
                this.user = tut4youapp.findUser(userName);
                isAuthenticated = (this.user != null);
            }
        }
        return isAuthenticated;
    }

    /**
     * Determine if current authenticated user has the role of tutor
     *
     * @return true if user has role of tutor, false otherwise.
     */
    public boolean isIsTutor() {
        boolean isTutor = false;
        if (this.isIsUserAuthenticated()) {
            FacesContext context = FacesContext.getCurrentInstance();
            HttpServletRequest request = (HttpServletRequest) context.getExternalContext().getRequest();
            isTutor = request.isUserInRole("tut4youapp.tutor");
        }
        System.out.println("ISTUTOR: " + isTutor);
        return isTutor;
    }

    /**
     * Logout the student and invalidate the session
     *
     * @return success if student is logged out and session invalidated, failure
     * otherwise.
     */
    public String logout() {
        String result = "failure";

        FacesContext context = FacesContext.getCurrentInstance();
        HttpServletRequest request = (HttpServletRequest) context.getExternalContext().getRequest();
        try {
            if (isIsTutor()) {
                currentZip = null;
                tut4youapp.updateCurrentZip(currentZip);
            }
            request.logout();
            user = null;
            result = "success";
        } catch (ServletException ex) {
            LOGGER.log(Level.SEVERE, null, ex);
        } finally {
            HttpSession session = request.getSession(false);
            if (session != null) {
                session.invalidate();
            }
        }
        return result;
    }

    /**
     * Gets a logged in username by getting the username from the session.
     *
     * @return username Source:
     * https://dzone.com/articles/liferay-jsf-how-get-current-lo Had further
     * help by Subject2Change group.
     */
    public String getEmailFromSession() {
        FacesContext context = FacesContext.getCurrentInstance();
        HttpServletRequest request = (HttpServletRequest) context.getExternalContext().getRequest();
        String email = request.getRemoteUser();
        return email;
    }

    /**
     * updates current zip
     */
    public void updateCurrentZip() {
        Tutor tutor = tut4youapp.updateCurrentZip(currentZip);
        if (tutor.getZipCode().getCurrentZipCode()!= null) {
            condition = false;
        }
    }

    /**
     * Updates a User's information
     * @param user User or Tutor object
     * @return result
     */
    public String updateUser(User user) {
        tut4youapp.updateUser(user);
        return "success";
    }
    
    /**
     * https://stackoverflow.com/questions/33098603/convert-localtime-java-8-to-date
     * gets the current date which is used for date joined attribute in tutor
     * @return date joined
     * @throws ParseException 
     */
    public Date getCurrentDate() throws ParseException {
        LocalTime d = LocalTime.now();
        Instant instant = d.atDate(LocalDate.now()).atZone(ZoneId.systemDefault()).toInstant();
        Date time = Date.from(instant);
        return time;
    }

    
    /**
     * confirms if the user entered the correct password and if so allows them to change their password
     * @param user
     * @param oldPassword
     * @param newPassword
     * @return 
     */
    public String changePassword(String oldPassword, String newPassword) {
        FacesContext context = FacesContext.getCurrentInstance();
        String confirmPassword = tut4you.controller.HashPassword.getSHA512Digest(oldPassword);
        String result;
        
        String currentPassword = user.getPassword();
        
        if(confirmPassword.equalsIgnoreCase(currentPassword)) {
            tut4youapp.changePassword(tut4you.controller.HashPassword.getSHA512Digest(newPassword));
            context.addMessage(null, new FacesMessage("Successful",  "Password successfully changed") );
            result = "successful";
        }
        else {
            context.addMessage(null, new FacesMessage("Failed",  "Password entered does not match your current password") );
            result = "failed";
        }
    return result;
    }


}
