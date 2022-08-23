/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.user;

/**
 *
 * @author IQBAL
 */
public class payment {
    
    private int id;
    private String firstname;
    private String lastname;
    private String filename;
    private String path;
    private String added_date;
  
    
    

    public String getfirstname() {
        return firstname;
    }

    public void setFirstName(String firstname) {
        this.firstname = firstname;
    }

    public String getlastname() {
        return lastname;
    }

    public void setlastname(String lastname) {
        this.lastname = lastname;
    }

    public int getid() {
        return id;
    }

    public void setid(int id) {
        this.id = id;
    }

    public String getfilename() {
        return filename;
    }

    public void setfilename(String filename) {
        this.filename = filename;
    }

    public String getpath() {
        return path;
    }

    public void setpath(String path) {
        this.path = path;
    }

    public String getadded_date() {
        return added_date;
    }

    public void setadded_date(String added_date) {
        this.added_date = added_date;
    }

    void setfirstname(String string) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
