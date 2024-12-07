package com.klef.jfsd.springboot.model;

import jakarta.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "patient_table")
public class Patient {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "patient_id")
    private int patientID;

    @Column(name = "patient_name", nullable = false, length = 50)
    private String name;

    @Column(name = "date_of_birth", nullable = false)
    private String dateOfBirth;

    @Column(name = "age")
    private int age;

    @Column(name = "gender", nullable = false, length = 10)
    private String gender;

    @Column(name = "contact_number", nullable = false, length = 20)
    private String contactNumber;

    @Column(name = "email", nullable = false, unique = true, length = 50)
    private String email;

    @Column(name = "address", nullable = false, length = 100)
    private String address;

    @Column(name = "blood_type", nullable = false, length = 10)
    private String bloodType;

    @Column(name = "emergency_contact", nullable = false, length = 20)
    private String emergencyContact;

    @Column(name = "assigned_doctor_id", nullable = false)
    private int assignedDoctorID;

    @Column(name = "insurance_details", length = 255)
    private String insuranceDetails;

    @Column(name = "password", nullable = false, length = 255)
    private String password;

    @Column(name = "availability_status")
    private String availabilityStatus;

    @Column(name = "admission_date", nullable = false)
    private LocalDate admissionDate;

    // Getters and Setters for all fields

    public int getPatientID() {
        return patientID;
    }

    public void setPatientID(int patientID) {
        this.patientID = patientID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
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

    public String getBloodType() {
        return bloodType;
    }

    public void setBloodType(String bloodType) {
        this.bloodType = bloodType;
    }

    public String getEmergencyContact() {
        return emergencyContact;
    }

    public void setEmergencyContact(String emergencyContact) {
        this.emergencyContact = emergencyContact;
    }

    public int getAssignedDoctorID() {
        return assignedDoctorID;
    }

    public void setAssignedDoctorID(int assignedDoctorID) {
        this.assignedDoctorID = assignedDoctorID;
    }

    public String getInsuranceDetails() {
        return insuranceDetails;
    }

    public void setInsuranceDetails(String insuranceDetails) {
        this.insuranceDetails = insuranceDetails;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAvailabilityStatus() {
        return availabilityStatus;
    }

    public void setAvailabilityStatus(String availabilityStatus) {
        this.availabilityStatus = availabilityStatus;
    }

    public LocalDate getAdmissionDate() {
        return admissionDate;
    }

    public void setAdmissionDate(LocalDate admissionDate) {
        this.admissionDate = admissionDate;
    }
}
