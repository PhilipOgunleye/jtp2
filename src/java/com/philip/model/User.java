/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.philip.model;
import java.util.Date;

/**
 *
 * @author philip
 */
public class User {
    String username, password, email;
   Date registeredon;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getRegisteredon() {
        return registeredon;
    }

    public void setRegisteredon(Date registeredon) {
        this.registeredon = registeredon;
    }
   
   
    
}
