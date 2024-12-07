package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Pharmacist;

import jakarta.transaction.Transactional;

@Repository
public interface PharmacistRepository extends JpaRepository<Pharmacist, Integer> {

	@Query("SELECT ph FROM Pharmacist ph WHERE ph.email = ?1 AND ph.password = ?2")
	Pharmacist checkPharmacistLogin(String email, String password);


    @Modifying
    @Transactional
    @Query("UPDATE Pharmacist ph SET ph.availabilityStatus = ?1 WHERE ph.pharmacistID = ?2")
    int updatePharmacistAvailabilityStatus(String availabilityStatus, Integer pharmacistId);

    @Modifying
    @Transactional
    @Query("DELETE FROM Pharmacist ph WHERE ph.pharmacistID = ?1")
    int deletePharmacistById(Integer pharmacistId);
}