package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.service.DoctorService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class DoctorController {

    @Autowired
    private DoctorService doctorService;

    @GetMapping("dochome")
    public ModelAndView dochome() {
        ModelAndView mv = new ModelAndView("dochome");
        return mv;
    }

    @GetMapping("docreg")
    public ModelAndView docReg() {
        ModelAndView mv = new ModelAndView("docreg");
        return mv;
    }
    

    @PostMapping("insertdoc")
    public ModelAndView insertDoc(HttpServletRequest request) {
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

        ModelAndView mv = new ModelAndView("regdocsuccess");
        mv.addObject("message", msg);
        return mv;
    }

    @GetMapping("doclogin")
    public ModelAndView doclogin() {
        ModelAndView mv = new ModelAndView("doclogin");
        return mv;
    }
    
    @GetMapping("regdocsuccess")
    public ModelAndView regdocsuccess() {
        ModelAndView mv = new ModelAndView("regdocsuccess");
        return mv;
    }

    @GetMapping("doclogout")
    public ModelAndView docLogout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute("doctor");

        ModelAndView mv = new ModelAndView("doclogin");
        return mv;
    }

    @PostMapping("checkdoclogin")
    public ModelAndView checkDocLogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();

        String email = request.getParameter("demail");
        String password = request.getParameter("dpwd");
        Doctor doc = doctorService.checkDocLogin(email, password);

        if (doc != null) {
            HttpSession session = request.getSession();
            session.setAttribute("doctor", doc);
            mv.setViewName("dochome");
        } else {
            mv.setViewName("docloginfail");
            mv.addObject("message", "Login Failed");
        }
        return mv;
    }

    @GetMapping("docsessionfail")
    public ModelAndView docSessionFail() {
        ModelAndView mv = new ModelAndView("docsessionfail");
        return mv;
    }

    @GetMapping("docprofile")
    public ModelAndView docProfile() {
        ModelAndView mv = new ModelAndView("docprofile");
        return mv;
    }
    
    @GetMapping("updatedoctor")
    public ModelAndView updatedoctor() {
        ModelAndView mv = new ModelAndView("updatedoctor");
        return mv;
    }

    

    @PostMapping("updateDoctor")
    public ModelAndView updateDoc(HttpServletRequest request) {
        Integer id = Integer.valueOf(request.getParameter("did"));
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

        Doctor doc = new Doctor();
        doc.setDoctorID(id);
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

        String msg = doctorService.updateDoctor(doc);

        ModelAndView mv = new ModelAndView("updatedocsuccess");
        mv.addObject("message", msg);
        return mv;
    }
}