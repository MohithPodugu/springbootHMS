package com.klef.jfsd.springboot.model;

import jakarta.persistence.*;
import java.time.LocalDate;
import java.time.LocalTime;

@Entity
@Table(name = "appointment_table") // Specify your table name
public class BookAppointment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "appointment_id")
    private int appointmentID;

    @Column(name = "patient_id", nullable = false)
    private int patientID;

    @ManyToOne
    @JoinColumn(name = "doctor_id", nullable = false)
    private Doctor doctor;

    @Column(name = "appointment_date", nullable = false)
    private LocalDate appointmentDate;

    @Column(name = "appointment_time", nullable = false)
    private LocalTime appointmentTime;

    @Column(name = "problem_description", nullable = false, length = 255)
    private String problemDescription;

    @Column(name = "patient_age", nullable = false)
    private int patientAge;

    @Column(name = "response", length = 500)
    private String response; // New attribute

    // Getters and Setters
    public int getAppointmentID() {
        return appointmentID;
    }

    public void setAppointmentID(int appointmentID) {
        this.appointmentID = appointmentID;
    }

    public int getPatientID() {
        return patientID;
    }

    public void setPatientID(int patientID) {
        this.patientID = patientID;
    }

    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    public LocalDate getAppointmentDate() {
        return appointmentDate;
    }

    public void setAppointmentDate(LocalDate appointmentDate) {
        this.appointmentDate = appointmentDate;
    }

    public LocalTime getAppointmentTime() {
        return appointmentTime;
    }

    public void setAppointmentTime(LocalTime appointmentTime) {
        this.appointmentTime = appointmentTime;
    }

    public String getProblemDescription() {
        return problemDescription;
    }

    public void setProblemDescription(String problemDescription) {
        this.problemDescription = problemDescription;
    }

    public int getPatientAge() {
        return patientAge;
    }

    public void setPatientAge(int patientAge) {
        this.patientAge = patientAge;
    }

    public String getResponse() {
        return response;
    }

    public void setResponse(String response) {
        this.response = response;
    }

    // Additional getter methods for JSP display (if needed)
    public String getDoctorName() {
        return doctor != null ? doctor.getName() : "";
    }

    public String getDoctorSpecialization() {
        return doctor != null ? doctor.getSpecialization() : "";
    }

    public String getDate() {
        return appointmentDate != null ? appointmentDate.toString() : "";
    }

    public String getTime() {
        return appointmentTime != null ? appointmentTime.toString() : "";
    }

    public String getProblem() {
        return problemDescription;
    }

    public int getAge() {
        return patientAge;
    }
}
