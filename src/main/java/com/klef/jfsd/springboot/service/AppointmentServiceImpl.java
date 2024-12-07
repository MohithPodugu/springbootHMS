package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.jfsd.springboot.model.BookAppointment;
import com.klef.jfsd.springboot.model.Patient;
import com.klef.jfsd.springboot.repository.AppointmentRepository;
import com.klef.jfsd.springboot.repository.PatientRepository;

@Service
public class AppointmentServiceImpl implements AppointmentService {

    @Autowired
    private AppointmentRepository appointmentRepository;
    @Autowired
    private PatientService patientService;
    @Autowired
    private PatientRepository patientRepository;
    
    @Override
    public String bookAppointment(BookAppointment appointment) {
        appointmentRepository.save(appointment);
        return "Appointment booked successfully!";
    }

    @Override
    public List<BookAppointment> getAppointmentsByDoctor(int doctorID) {
        // Fetch appointments using the repository's custom query
        return appointmentRepository.findByDoctor_DoctorID(doctorID);
    }

	@Override
	  public List<BookAppointment> getAppointmentsByPatient(int patientID) {
        return appointmentRepository.findByPatientID(patientID);
    }

	
}