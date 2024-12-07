package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Patient;

import jakarta.transaction.Transactional;

@Repository
public interface PatientRepository extends JpaRepository<Patient, Integer> {
    
    // Method for checking patient login based on email and password
    @Query("SELECT p FROM Patient p WHERE p.email = ?1 AND p.password = ?2")
    Patient checkPatientLogin(String email, String password);

    // Method for updating patient availability status
    @Modifying
    @Transactional
    @Query("UPDATE Patient p SET p.availabilityStatus = ?1 WHERE p.patientID = ?2")
    int updatePatientAvailabilityStatus(String availabilityStatus, Integer patientId);

    // Method for deleting a patient by ID
    @Modifying
    @Transactional
    @Query("DELETE FROM Patient p WHERE p.patientID = ?1")
    int deletePatientById(Integer patientId);
}