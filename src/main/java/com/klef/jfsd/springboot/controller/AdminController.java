package com.klef.jfsd.springboot.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.model.Patient;
import com.klef.jfsd.springboot.model.Pharmacist;
import com.klef.jfsd.springboot.service.DoctorService;
import com.klef.jfsd.springboot.service.PatientService;
import com.klef.jfsd.springboot.service.PharmacistService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {
@Autowired
private AdminService adminService;
@Autowired
private DoctorService doctorService;
@Autowired
private PatientService patientService;
@Autowired
private PharmacistService pharmacistService;

@GetMapping("adminhome")
public ModelAndView adminhome() {
  ModelAndView mv= new ModelAndView();
  mv.setViewName("adminhome");
  
  
  long count =adminService.doccount();
  mv.addObject("count",count);
  return mv;
}

@GetMapping("viewalldocs")
public ModelAndView viewalldocs() 
{
  ModelAndView mv = new ModelAndView();
  List<Doctor> doctorlist = adminService.ViewAllDoctors();
  
  mv.setViewName("viewalldocs");
  mv.addObject("doctorlist", doctorlist); // Match variable name exactly as used in JSP
  return mv;
}

@GetMapping("viewallpatient")
public ModelAndView viewallpatient() 
{
  ModelAndView mv = new ModelAndView();
  List<Patient> patientlist = adminService.ViewAllPatients();
  
  mv.setViewName("viewallpatient");
  mv.addObject("patientlist",patientlist); // Match variable name exactly as used in JSP
  return mv;
}

@GetMapping("viewallpharmacists")
public ModelAndView viewallpharmacists() 
{
  ModelAndView mv = new ModelAndView();
  List<Pharmacist> pharmacistlist = adminService.ViewAllPharmacist();
  
  mv.setViewName("viewallpharmacists");
  mv.addObject("pharmacistlist",pharmacistlist); // Match variable name exactly as used in JSP
  return mv;
}

@GetMapping("deletedoctor")
public ModelAndView deletedoctor() 
{
  ModelAndView mv = new ModelAndView();
  List<Doctor> doctorlist = adminService.ViewAllDoctors(); // Ensure ViewAllDoctors fetches the data correctly
  mv.setViewName("deletedoctor");
  mv.addObject("doctorlist", doctorlist); // Match variable name exactly as used in JSP
  return mv;
}

@GetMapping("deletepatient")
public ModelAndView deletepatient() 
{
  ModelAndView mv = new ModelAndView();
  List<Patient> patientlist = adminService.ViewAllPatients(); // Ensure ViewAllDoctors fetches the data correctly
  mv.setViewName("deletepatient");
  mv.addObject("patientlist", patientlist); // Match variable name exactly as used in JSP
  return mv;
}

@GetMapping("deletepharmacist")
public ModelAndView deletepharmacist() 
{
  ModelAndView mv = new ModelAndView();
  List<Pharmacist> pharmacistlist = adminService.ViewAllPharmacist();
  mv.setViewName("deletepharmacist");
  mv.addObject("pharmacistlist", pharmacistlist); // Match variable name exactly as used in JSP
  return mv;
}


@PostMapping("checkadminlogin")
public ModelAndView checkadminlogin(HttpServletRequest request)  {
  
  ModelAndView mv= new ModelAndView();
  
  String auname=request.getParameter("auname");
  String apwd=request.getParameter("apwd");
   Admin admin=adminService.checkadminlogin(auname, apwd);
   
   if(admin!=null) {

     HttpSession session=request.getSession();
     session.setAttribute("admin", admin);

    Long count =adminService.doccount();
    mv.addObject("count",count);
     mv.setViewName("adminhome");
   }
   else {
     mv.setViewName("adminloginfail");
     mv.addObject("message","Login Failed");
  
     
   }
   return mv;
   
}

@PostMapping("submitDoctorForm")
public ModelAndView submitDoctorForm(HttpServletRequest request) {
    String name = request.getParameter("dname");
    String specialization = request.getParameter("specialization");
    String contactNumber = request.getParameter("dcontact");
    String email = request.getParameter("demail");
    String address = request.getParameter("daddress");
    int yearsOfExperience = Integer.parseInt(request.getParameter("dexperience"));
    String availabilityStatus = request.getParameter("davailability");
    String shiftTiming = request.getParameter("dshift");
    double consultationFee = Double.parseDouble(request.getParameter("dfee"));
    String department = request.getParameter("department");
    String qualifications = request.getParameter("qualifications");
    String password = request.getParameter("dpwd");

    Doctor doc = new Doctor();
    doc.setName(name);
    doc.setSpecialization(specialization);
    doc.setContactNumber(contactNumber);
    doc.setEmail(email);
    doc.setAddress(address);
    doc.setYearsOfExperience(yearsOfExperience);
    doc.setAvailabilityStatus(availabilityStatus);
    doc.setShiftTiming(shiftTiming);
    doc.setConsultationFee(consultationFee);
    doc.setDepartment(department);
    doc.setQualifications(qualifications);
    doc.setPassword(password);

    String msg = doctorService.registerDoctor(doc);

    ModelAndView mv = new ModelAndView("addsuccess");
    mv.addObject("message", msg);
    return mv;
}

@PostMapping("submitPatientForm")
public ModelAndView submitPatientForm(HttpServletRequest request) {
    String name = request.getParameter("pname");
    String gender = request.getParameter("gender");
    String contactNumber = request.getParameter("pcontact");
    String email = request.getParameter("pemail");
    String address = request.getParameter("paddress");
    String bloodType = request.getParameter("bloodType");
    String emergencyContact = request.getParameter("emergencyContact");
    String password = request.getParameter("ppwd");
    String dob = request.getParameter("pdob");

    // Convert String to Date for admissionDate (you can handle the formatting part here as needed)

    Patient patient = new Patient();
    patient.setName(name);
    patient.setGender(gender);
    patient.setContactNumber(contactNumber);
    patient.setEmail(email);
    patient.setAddress(address);
    patient.setBloodType(bloodType);
    patient.setEmergencyContact(emergencyContact);
    patient.setDateOfBirth(dob);
    patient.setPassword(password);

    // Assuming 'registerPatient' is a method in patientService to persist data
    String msg = patientService.registerPatient(patient);

    ModelAndView mv = new ModelAndView("addpsuccess");
    mv.addObject("message", msg);
    return mv;
}

@PostMapping("submitPharmacistForm")
public ModelAndView submitPharmacistForm(HttpServletRequest request) {
    String name = request.getParameter("phname");
    String contactNumber = request.getParameter("phcontact");
    String email = request.getParameter("phemail");
    String address = request.getParameter("phaddress");
    int yearsOfExperience = Integer.parseInt(request.getParameter("phexperience"));
    String availabilityStatus = request.getParameter("phavailability");
    String shiftTiming = request.getParameter("phshift");
    String licenseNumber = request.getParameter("phlicense");
    String pharmacyLocation = request.getParameter("phlocation");
    String managedMedicines = request.getParameter("phmedicines");
    String password = request.getParameter("phpwd");

    Pharmacist pharmacist = new Pharmacist();
    pharmacist.setName(name);
    pharmacist.setContactNumber(contactNumber);
    pharmacist.setEmail(email);
    pharmacist.setAddress(address);
    pharmacist.setYearsOfExperience(yearsOfExperience);
    pharmacist.setAvailabilityStatus(availabilityStatus);
    pharmacist.setShiftTiming(shiftTiming);
    pharmacist.setLicenseNumber(licenseNumber);
    pharmacist.setPharmacyLocation(pharmacyLocation);
    pharmacist.setManagedMedicines(managedMedicines);
    pharmacist.setPassword(password);

    String msg = pharmacistService.registerPharmacist(pharmacist); // Ensure the method exists and works

    ModelAndView mv = new ModelAndView("addphsuccess");
    mv.addObject("message", msg);
    return mv;
}


@GetMapping("adminlogout")
public ModelAndView adminlogout(HttpServletRequest request) {
  HttpSession session=request.getSession();
  session.removeAttribute("admin");
  
  ModelAndView mv= new ModelAndView();
  mv.setViewName("adminlogin");
  return mv;
}

@GetMapping("deleteddoctor")
public String deletedoctor(@RequestParam("id")  int did) {
  adminService.deleteddoc(did);
  return "redirect:/deletedoctor";  
}

@GetMapping("deletedpatient")
public String deletepatient(@RequestParam("id") int pid) {
    adminService.deletepatient(pid); // delete the patient
    return "redirect:/deletepatient";  // redirect to the view page
}

@GetMapping("deletedpharmacist")
public String deletepharmacist(@RequestParam("id") int phid) {
    adminService.deletepharmacist(phid); // delete the patient
    return "redirect:/deletepharmacist";  // redirect to the view page
}

@GetMapping("addpharmacist")
public ModelAndView addpharmacist() {
  ModelAndView mv= new ModelAndView();
  mv.setViewName("addpharmacist");
  return mv;
}
@GetMapping("adminsessionfail")
public ModelAndView adminsessionfail() {
  ModelAndView mv= new ModelAndView();
  mv.setViewName("adminsessionfail");
  return mv;
}

@GetMapping("adminlogin")
public ModelAndView adminlogin() {
  ModelAndView mv= new ModelAndView();
  mv.setViewName("adminlogin");
  return mv;
}

@GetMapping("addsuccess")
public ModelAndView addsuccess() {
  ModelAndView mv= new ModelAndView();
  mv.setViewName("addsuccess");
  return mv;
}

@GetMapping("adddoc")
public ModelAndView adddoc() {
  ModelAndView mv= new ModelAndView();
  mv.setViewName("adddoc");
  return mv;
}
@GetMapping("addpatient")
public ModelAndView addpatient() {
  ModelAndView mv= new ModelAndView();
  mv.setViewName("addpatient");
  return mv;
}
}