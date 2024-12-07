package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.model.Patient;
import com.klef.jfsd.springboot.model.Pharmacist;

public interface AdminService {
 
  public List<Doctor> ViewAllDoctors();
  public List<Patient> ViewAllPatients();
  public List<Pharmacist> ViewAllPharmacist();
  public Admin checkadminlogin(String uname,String pwd);
  public String deletepatient(int pid);
  public String deletepharmacist(int phid);
  public String deleteddoc(int did);
  public long doccount();
}