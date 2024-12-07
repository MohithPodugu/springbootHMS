package com.klef.jfsd.springboot.controller;

import com.klef.jfsd.springboot.model.BookAppointment;
import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.model.Patient;
import com.klef.jfsd.springboot.service.AppointmentService;
import com.klef.jfsd.springboot.service.DoctorService;
import com.klef.jfsd.springboot.service.PatientService;


import java.text.ParseException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class PatientController {

    @Autowired
    private PatientService patientService;
    @Autowired
    private DoctorService doctorService;
    @Autowired
    private AppointmentService appointmentService;

    @GetMapping("/pathome")
    public ModelAndView pathome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("pathome");
        return mv;
    }

    @GetMapping("patientreg")
    public ModelAndView patienteg() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("patientreg");
        return mv;
    }

    @PostMapping("insertpatient")
    public ModelAndView insertPatient(HttpServletRequest request) {
        String name = request.getParameter("pname");
        String gender = request.getParameter("gender");
        String contactNumber = request.getParameter("pcontact");
        String email = request.getParameter("pemail");
        String address = request.getParameter("paddress");
        String bloodType = request.getParameter("bloodType");
        String emergencyContact = request.getParameter("emergencyContact");
        String password=request.getParameter("ppwd");
        String dob=request.getParameter("pdob");

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

        String msg = patientService.registerPatient(patient);

        ModelAndView mv = new ModelAndView("regsuccess");
        mv.addObject("message", msg);
        return mv;
    }

    @GetMapping("patientlogin")
    public ModelAndView patientLogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("patientlogin");
        return mv;
    }

    @GetMapping("patienthome")
    public ModelAndView patientHome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("patienthome");
        return mv;
    }
    
    @GetMapping("viewmyappointment")
    public ModelAndView viewmyappointment() 
    {
      ModelAndView mv = new ModelAndView();
      List<BookAppointment> viewmyappointment = patientService.ViewMyAppointment();
      
      mv.setViewName("viewmyappointment");
      mv.addObject("appointment", viewmyappointment); // Match variable name exactly as used in JSP
      return mv;
    }

    
    @GetMapping("bookappointment")
    public String bookAppointment(Model model) {
        List<Doctor> doctors = patientService.ViewAllDoctors();
        model.addAttribute("doctors", doctors);
        return "bookappointment"; // JSP form page
    }

    @GetMapping("patientlogout")
    public ModelAndView patientLogout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute("patient");

        ModelAndView mv = new ModelAndView();
        mv.setViewName("patientlogin");
        return mv;
    }

    @PostMapping("checkpatientlogin")
    public ModelAndView checkPatientLogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        String email = request.getParameter("pemail");
        String password = request.getParameter("ppwd");
        Patient patient = patientService.checkPatientLogin(email, password);

        if (patient != null) {
            HttpSession session = request.getSession();
            session.setAttribute("patient", patient);
            mv.setViewName("patienthome");
        } else {
            mv.setViewName("patientloginfail");
            mv.addObject("message", "Login Failed");
        }
        return mv;
    }

    @GetMapping("patientprofile")
    public ModelAndView patientProfile() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("patientprofile");
        return mv;
    }

    @GetMapping("updatepatient")
    public ModelAndView updatePatient() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("updatepatient");
        return mv;
    }
    
    @GetMapping("patientsessionfail")
    public ModelAndView patientsessionfail() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("patientsessionfail");
        return mv;
    }
    
    @GetMapping("regsuccess")
    public ModelAndView regsuccess() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("regsuccess");
        return mv;
    }

    @PostMapping("updatePatient")
    public ModelAndView updatePatient(HttpServletRequest request) {
        Integer id = Integer.valueOf(request.getParameter("pid"));
        String name = request.getParameter("pname");
        String gender = request.getParameter("gender");
        String contactNumber = request.getParameter("pcontact");
        String email = request.getParameter("pemail");
        String address = request.getParameter("paddress");
        String bloodType = request.getParameter("bloodType");
        String emergencyContact = request.getParameter("emergencyContact");
        String password = request.getParameter("ppwd");
        String dob = request.getParameter("pdob");
        
        Patient patient = new Patient();
        patient.setPatientID(id);
        patient.setName(name);
        patient.setGender(gender);
        patient.setContactNumber(contactNumber);
        patient.setEmail(email);
        patient.setAddress(address);
        patient.setBloodType(bloodType);
        patient.setEmergencyContact(emergencyContact);
        patient.setDateOfBirth(dob);
        patient.setPassword(password);
        
        String msg = patientService.updatePatient(patient);
        
        ModelAndView mv = new ModelAndView("updatesuccess");
        mv.addObject("message", msg);
        return mv;
    }
    
    @PostMapping("bappointment")
    public ModelAndView bookAppointment(HttpServletRequest request) {
        int patientID = Integer.parseInt(request.getParameter("patient_id"));
        int doctorID = Integer.parseInt(request.getParameter("doctor_id"));
        String appointmentDate = request.getParameter("appointment_date");
        String appointmentTime = request.getParameter("appointment_time");
        String problemDescription = request.getParameter("problem");
        int patientAge = Integer.parseInt(request.getParameter("age"));

        // Create a new BookAppointment object
        BookAppointment appointment = new BookAppointment();

        // Set the values from the request
        appointment.setPatientID(patientID);
        appointment.setAppointmentDate(LocalDate.parse(appointmentDate));
        appointment.setAppointmentTime(LocalTime.parse(appointmentTime));
        appointment.setProblemDescription(problemDescription);
        appointment.setPatientAge(patientAge);

        // Fetch the Doctor object from the database using doctorID
        Doctor doctor = doctorService.getDoctorById(doctorID);
        if (doctor != null) {
            appointment.setDoctor(doctor);
        } else {
            ModelAndView mv = new ModelAndView("appointmenterror");
            mv.addObject("message", "Doctor not found. Please select a valid doctor.");
            return mv;
        }

        // Save the appointment using the service layer
        String msg = appointmentService.bookAppointment(appointment);

        // Prepare success response
        ModelAndView mv = new ModelAndView("apsuccess");
        mv.addObject("message", msg);
        return mv;
    }

 

}