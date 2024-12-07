package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Pharmacist;
import com.klef.jfsd.springboot.repository.PharmacistRepository;

@Service
public class PharmacistServiceImpl implements PharmacistService {

    @Autowired
    private PharmacistRepository pharmacistRepository;

    @Override
    public String registerPharmacist(Pharmacist pharmacist) {
        pharmacistRepository.save(pharmacist);
        return "Pharmacist Registered Successfully";
    }

    @Override
    public Pharmacist checkPharmacistLogin(String email, String pwd) {
        return pharmacistRepository.checkPharmacistLogin(email, pwd); // Assuming this method is defined in your PharmacistRepository
    }

    @Override
    public String updatePharmacist(Pharmacist pharmacist) {
        Pharmacist existingPharmacist = pharmacistRepository.findById(pharmacist.getPharmacistID())
                .orElseThrow(() -> new RuntimeException("Pharmacist not found"));

        existingPharmacist.setName(pharmacist.getName());
        existingPharmacist.setContactNumber(pharmacist.getContactNumber());
        existingPharmacist.setEmail(pharmacist.getEmail());
        existingPharmacist.setAddress(pharmacist.getAddress());
        existingPharmacist.setYearsOfExperience(pharmacist.getYearsOfExperience());
        existingPharmacist.setShiftTiming(pharmacist.getShiftTiming());
    

        pharmacistRepository.save(existingPharmacist);
        return "Pharmacist updated Successfully";
    }
}