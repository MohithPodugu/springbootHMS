package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Pharmacist;

public interface PharmacistService {
    
    // Method for registering a new pharmacist
    public String registerPharmacist(Pharmacist p);
    
    // Method for checking pharmacist login
    public Pharmacist checkPharmacistLogin(String email, String pwd);
    
    // Method for updating pharmacist information
    public String updatePharmacist(Pharmacist p);
}