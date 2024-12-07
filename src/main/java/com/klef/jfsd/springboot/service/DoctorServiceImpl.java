package com.klef.jfsd.springboot.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.repository.DoctorRepository; // Ensure you import the correct repository
import com.klef.jfsd.springboot.service.DoctorService;

@Service
public class DoctorServiceImpl implements DoctorService {
    
    @Autowired
    private DoctorRepository doctorRepository; // Inject the Doctor repository

    @Override
    public String registerDoctor(Doctor doctor) {
        doctorRepository.save(doctor); // Save the doctor entity to the database
        return "Doctor Registered Successfully";
    }

    @Override
    public Doctor checkDocLogin(String email, String pwd) {
        return doctorRepository.checkDoctorLogin(email, pwd); // Assuming this method is defined in your DoctorRepository
    }

    @Override
    public String updateDoctor(Doctor doctor) {
        // Fetch the existing doctor from the database
        Doctor existingDoctor = doctorRepository.findById(doctor.getDoctorID()).orElseThrow(() -> new RuntimeException("Doctor not found"));
        
        // Update the existing doctor's information
        existingDoctor.setName(doctor.getName());
        existingDoctor.setSpecialization(doctor.getSpecialization());
        existingDoctor.setContactNumber(doctor.getContactNumber());
        existingDoctor.setEmail(doctor.getEmail());
        existingDoctor.setAddress(doctor.getAddress());
        existingDoctor.setYearsOfExperience(doctor.getYearsOfExperience());
        existingDoctor.setAvailabilityStatus(doctor.getAvailabilityStatus());
        existingDoctor.setShiftTiming(doctor.getShiftTiming());
        existingDoctor.setConsultationFee(doctor.getConsultationFee());
        existingDoctor.setDepartment(doctor.getDepartment());
        existingDoctor.setQualifications(doctor.getQualifications());

        // Save the updated doctor entity
        doctorRepository.save(existingDoctor);
        return "Doctor updated Successfully";
    }

    @Override
    public Doctor getDoctorById(int doctorID) {
        return doctorRepository.findById(doctorID)
                .orElseThrow(() -> new RuntimeException("Doctor not found with ID: " + doctorID));
    }


}