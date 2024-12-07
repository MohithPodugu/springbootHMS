package com.klef.jfsd.springboot.service;

import java.util.List;
import java.time.LocalDate;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.BookAppointment;
import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.model.Patient;
import com.klef.jfsd.springboot.repository.AppointmentRepository;
import com.klef.jfsd.springboot.repository.DoctorRepository;
import com.klef.jfsd.springboot.repository.PatientRepository;

@Service
public class PatientServiceImpl implements PatientService {

    @Autowired
    private PatientRepository patientRepository;
    @Autowired
    private DoctorRepository doctorRepository;
    @Autowired
    private AppointmentRepository appointmentRepository;

    @Override
    public String registerPatient(Patient p) {
        p.setAdmissionDate(LocalDate.now()); // Set admission date
        patientRepository.save(p);
        return "Patient Registered Successfully";
    }

    @Override
    public Patient checkPatientLogin(String email, String pwd) {
        return patientRepository.checkPatientLogin(email, pwd);
    }

    @Override
    public String updatePatient(Patient p) {
        patientRepository.save(p); 
        return "Patient Information Updated Successfully";
    }

    public List<Patient> viewAllPatients() {
        return patientRepository.findAll();
    }

    public String deletePatient(int patientID) {
        patientRepository.deleteById(patientID);
        return "Patient Deleted Successfully";
    }

    public long patientCount() {
        return patientRepository.count();
    }

    @Override
    public List<Doctor> ViewAllDoctors()
    {
      return doctorRepository.findAll();
    }
    
    @Override
	public List<BookAppointment> ViewMyAppointment() {
	    return appointmentRepository.findAll();

	}

	@Override
	public Patient getPatientById(Integer patientId) {
		// TODO Auto-generated method stub
		return null;
	}
}