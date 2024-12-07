package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Doctor;

public interface DoctorService {
    
    // Method for registering a new doctor
    public String registerDoctor(Doctor d);
    
    // Method for checking doctor login
    public Doctor checkDocLogin(String email, String pwd);
    
    // Method for updating doctor information
    public String updateDoctor(Doctor d);
    
    public Doctor getDoctorById(int doctorID);
}