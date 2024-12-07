package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.BookAppointment;
import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.model.Patient;

public interface PatientService {
    
    // Method for registering a new patient
    public String registerPatient(Patient p);
    
    // Method for checking patient login
    public Patient checkPatientLogin(String email, String pwd);
    
    // Method for updating patient information
    public String updatePatient(Patient p);
    
    public List<Doctor> ViewAllDoctors();
    
    public List<BookAppointment> ViewMyAppointment();
    
    Patient getPatientById(Integer patientId);


}