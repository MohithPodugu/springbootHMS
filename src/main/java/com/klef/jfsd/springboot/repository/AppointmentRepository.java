package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.springboot.model.BookAppointment;
import com.klef.jfsd.springboot.model.Patient;

@Repository
public interface AppointmentRepository extends JpaRepository<BookAppointment, Integer> {
    // Additional custom queries can be added if required
    List<BookAppointment> findByDoctor_DoctorID(int doctorID);
    List<BookAppointment> findByPatientID(int patientID);


}