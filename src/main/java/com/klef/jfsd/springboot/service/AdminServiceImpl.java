package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.model.Patient;
import com.klef.jfsd.springboot.model.Pharmacist;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.DoctorRepository;
import com.klef.jfsd.springboot.repository.PatientRepository;
import com.klef.jfsd.springboot.repository.PharmacistRepository;

@Service
public class AdminServiceImpl implements AdminService {
  
  @Autowired
  private DoctorRepository doctorRepository;
  @Autowired
  private AdminRepository adminRepository;
  @Autowired
  private PatientRepository patientRepository;  
  @Autowired
  private PharmacistRepository pharmacistRepository;


  @Override
  public List<Doctor> ViewAllDoctors()
  {
    return doctorRepository.findAll();
  }

  @Override
  public Admin checkadminlogin(String uname, String pwd) {
    
    return adminRepository.checkadminlogin(uname, pwd);
  }

  

  

  @Override
  public String deleteddoc(int did) {

     doctorRepository.deleteById(did);
     return "Deleted Successfullly";
    
  }

  @Override
  public long doccount() {
    return  doctorRepository.count();
  }

@Override
public List<Patient> ViewAllPatients() {
    return patientRepository.findAll();
}

@Override
public List<Pharmacist> ViewAllPharmacist() {
    return pharmacistRepository.findAll();

}

@Override
public String deletepatient(int pid) {
	 patientRepository.deleteById(pid);
     return "Deleted Successfullly";
}

@Override
public String deletepharmacist(int phid) {
	 pharmacistRepository.deleteById(phid);
     return "Deleted Successfullly";
}

}