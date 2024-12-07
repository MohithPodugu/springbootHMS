package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.BookAppointment;
import com.klef.jfsd.springboot.model.Patient;

public interface AppointmentService {
    String bookAppointment(BookAppointment appointment);
    List<BookAppointment> getAppointmentsByDoctor(int doctorID);
    List<BookAppointment> getAppointmentsByPatient(int patientID);
}