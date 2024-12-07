  package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.klef.jfsd.springboot.model.Medicine;
import com.klef.jfsd.springboot.model.Pharmacist;
import com.klef.jfsd.springboot.service.MedicineService;
import com.klef.jfsd.springboot.service.PharmacistService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class PharmacistController {

    @Autowired
    private PharmacistService pharmacistService;
    @Autowired
    private MedicineService medicineService;

    @GetMapping("phhome")
    public ModelAndView phhome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("phhome");
        return mv;
    }

    @GetMapping("pharmreg")
    public ModelAndView pharmReg() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("pharmreg");
        return mv;
    }

    @PostMapping("insertpharm")
    public ModelAndView insertPharm(HttpServletRequest request) {
        String name = request.getParameter("pname");
        String contactNumber = request.getParameter("pcontact");
        String email = request.getParameter("phemail");
        String address = request.getParameter("paddress");
        int yearsOfExperience = Integer.parseInt(request.getParameter("pexperience"));
        String availabilityStatus = request.getParameter("pavailability");
        String shiftTiming = request.getParameter("pshift");
        String licenseNumber = request.getParameter("plicense");
        String pharmacyLocation = request.getParameter("plocation");
        String managedMedicines = request.getParameter("pmedicines");
        String password = request.getParameter("phpwd");

        Pharmacist pharm = new Pharmacist();
        pharm.setName(name);
        pharm.setContactNumber(contactNumber);
        pharm.setEmail(email);
        pharm.setAddress(address);
        pharm.setYearsOfExperience(yearsOfExperience);
        pharm.setAvailabilityStatus(availabilityStatus);
        pharm.setShiftTiming(shiftTiming);
        pharm.setLicenseNumber(licenseNumber);
        pharm.setPharmacyLocation(pharmacyLocation);
        pharm.setManagedMedicines(managedMedicines);
        pharm.setPassword(password);

        String msg = pharmacistService.registerPharmacist(pharm);

        ModelAndView mv = new ModelAndView("regpharmsuccess");
        mv.addObject("message", msg);
        return mv;
    }
    
    @GetMapping("pharmacistlogin")
    public ModelAndView pharmacistLogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("pharmacistlogin");
        return mv;
    }
    
    @GetMapping("regpharmsuccess")
    public ModelAndView regPharmSuccess() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("regpharmsuccess");
        return mv;
    }

    @GetMapping("pharmhome")
    public ModelAndView pharmhome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("pharmhome");
        return mv;
    }

    @GetMapping("pharmlogout")
    public ModelAndView pharmLogout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute("pharmacist");

        ModelAndView mv = new ModelAndView();
        mv.setViewName("pharmlogin");
        return mv;
    }

    @PostMapping("checkpharmLogin")
    public ModelAndView checkPharmLogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();


        String email = request.getParameter("phemail");
        String password = request.getParameter("phpwd");
        Pharmacist pharm = pharmacistService.checkPharmacistLogin(email, password);

        if (pharm != null) {
            HttpSession session = request.getSession();
            session.setAttribute("pharmacist", pharm);
            mv.setViewName("pharmhome");
        } else {
            mv.setViewName("pharmloginfail");
            mv.addObject("message", "Login Failed");
        }
        return mv;
    }


    @GetMapping("pharmsessionfail")
    public ModelAndView pharmSessionFail() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("pharmsessionfail");
        return mv;
    }
    @GetMapping("updatepharmacist")
    public ModelAndView updatepharmacist() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("updatepharmacist");
        return mv;
    }


    @GetMapping("pharmprofile")
    public ModelAndView pharmProfile() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("pharmprofile");
        return mv;
    }

    @GetMapping("updatepharm")
    public ModelAndView updatePharm() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("updatepharm");
        return mv;
    }

    @PostMapping("updatePharm")
    public ModelAndView updatePharm(HttpServletRequest request) {
        Integer id = Integer.valueOf(request.getParameter("phid"));
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

        Pharmacist pharm = new Pharmacist();
        pharm.setPharmacistID(id);
        pharm.setName(name);
        pharm.setContactNumber(contactNumber);
        pharm.setEmail(email);
        pharm.setAddress(address);
        pharm.setYearsOfExperience(yearsOfExperience);
        pharm.setAvailabilityStatus(availabilityStatus);
        pharm.setShiftTiming(shiftTiming);
        pharm.setLicenseNumber(licenseNumber);
        pharm.setPharmacyLocation(pharmacyLocation);
        pharm.setManagedMedicines(managedMedicines);

        String msg = pharmacistService.updatePharmacist(pharm);

        ModelAndView mv = new ModelAndView("updatephsuccess");
        mv.addObject("message", msg);
        return mv;
    }
    @GetMapping("/addmedicine")
    public ModelAndView showAddMedicineForm() {
        ModelAndView mv = new ModelAndView("addmedicine");
        mv.addObject("medicine", new Medicine());
        return mv;
    }

    @PostMapping("/addmedicine")
    public String addNewMedicine(@ModelAttribute("medicine") Medicine medicine, RedirectAttributes redirectAttributes) {
        medicineService.addMedicine(medicine);
        redirectAttributes.addFlashAttribute("message", "Medicine added successfully!");
        return "redirect:/addmedsuccess.jsp";
    }

    @GetMapping("/viewallmedicines")
    public ModelAndView viewAllMedicines() {
        List<Medicine> medicines = medicineService.getAllMedicines();
        ModelAndView mv = new ModelAndView("viewallmedicines");
        mv.addObject("medicines", medicines);
        return mv;
    }

    @GetMapping("/deletemedicine")
    public ModelAndView showDeleteMedicineForm() {
        List<Medicine> medicines = medicineService.getAllMedicines();
        return new ModelAndView("deletemedicine", "medicines", medicines);
    }


    @GetMapping("/deletemedicines")
    public String deleteMedicine(@RequestParam("id") int id) {
        medicineService.deleteMedicineById(id);
        return "redirect:/deletemedicine";
    }
 
}