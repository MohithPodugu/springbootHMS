package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Doctor;

import jakarta.transaction.Transactional;

@Repository
public interface DoctorRepository extends JpaRepository<Doctor, Integer> {
	@Query("SELECT d FROM Doctor d WHERE d.email = ?1 AND d.password = ?2")
	Doctor checkDoctorLogin(String email, String password);
	@Modifying
	@Transactional
	@Query("UPDATE Doctor d SET d.availabilityStatus = ?1 WHERE d.doctorID = ?2")
	int updateDoctorAvailabilityStatus(String availabilityStatus, Integer doctorId);


	@Modifying
	@Transactional
	@Query("DELETE FROM Doctor d WHERE d.doctorID = ?1")
	int deleteDoctorById(Integer doctorId);

}
