package com.klef.jfsd.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.util.List;

@Entity
@Table(name = "pharmacist_table") // You can name this according to your schema
public class Pharmacist {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Auto-incrementing ID
    @Column(name = "pharmacist_id")
    private int pharmacistID;

    @Column(name = "pharmacist_name", nullable = false, length = 50)
    private String name;

    @Column(name = "contact_number", nullable = false, length = 20)
    private String contactNumber;

    @Column(name = "email", nullable = false, unique = true, length = 50)
    private String email;

    @Column(name = "address", nullable = false, length = 100)
    private String address;

    @Column(name = "shift_timing", nullable = false, length = 20)
    private String shiftTiming;

    @Column(name = "years_of_experience", nullable = false)
    private int yearsOfExperience;

    @Column(name = "license_number", nullable = false, unique = true, length = 30)
    private String licenseNumber;

    @Column(name = "pharmacy_location", nullable = false, length = 100)
    private String pharmacyLocation;

    @Column(name = "managed_medicines", length = 255)
    private String managedMedicines; // Consider using a more complex type or a separate table if this needs to be more structured

    @Column(name = "availability_status", nullable = false, length = 20)
    private String availabilityStatus; // e.g., On-duty, Off-duty
    @Column(name = "password", nullable = false, length = 100) // Added password field
    private String password;

    // Getters and Setters
    public int getPharmacistID() {
        return pharmacistID;
    }

    public void setPharmacistID(int pharmacistID) {
        this.pharmacistID = pharmacistID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getShiftTiming() {
        return shiftTiming;
    }

    public void setShiftTiming(String shiftTiming) {
        this.shiftTiming = shiftTiming;
    }

    public int getYearsOfExperience() {
        return yearsOfExperience;
    }

    public void setYearsOfExperience(int yearsOfExperience) {
        this.yearsOfExperience = yearsOfExperience;
    }

    public String getLicenseNumber() {
        return licenseNumber;
    }

    public void setLicenseNumber(String licenseNumber) {
        this.licenseNumber = licenseNumber;
    }

    public String getPharmacyLocation() {
        return pharmacyLocation;
    }

    public void setPharmacyLocation(String pharmacyLocation) {
        this.pharmacyLocation = pharmacyLocation;
    }

    public String getManagedMedicines() {
        return managedMedicines;
    }

    public void setManagedMedicines(String managedMedicines) {
        this.managedMedicines = managedMedicines;
    }

    public String getAvailabilityStatus() {
        return availabilityStatus;
    }

    public void setAvailabilityStatus(String availabilityStatus) {
        this.availabilityStatus = availabilityStatus;
    }
    public String getPassword() {
        return password; // Getter for password
    }

    public void setPassword(String password) {
        this.password = password; // Setter for password
    }
}