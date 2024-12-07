package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.BookAppointment;
import com.klef.jfsd.springboot.service.AppointmentService;

import jakarta.servlet.http.HttpSession;

@RestController
@RequestMapping("/appointments")
public class AppointmentController {

    @Autowired
    private AppointmentService bookAppointmentService;

    /**
     * Fetch all appointments for the currently logged-in doctor using session
     */
    @GetMapping("/doctor")
    public ModelAndView getAppointmentsByDoctor(HttpSession session) {
        Integer doctorID = (Integer) session.getAttribute("doctorID");
        if (doctorID == null) {
            ModelAndView errorView = new ModelAndView("error");
            errorView.addObject("message", "Doctor is not logged in.");
            return errorView;
        }

        List<BookAppointment> appointments = bookAppointmentService.getAppointmentsByDoctor(doctorID);
        ModelAndView modelAndView = new ModelAndView("doctorappointments");
        modelAndView.addObject("appointment", appointments);
        return modelAndView;
    }

    /**
     * Fetch all appointments for the currently logged-in patient using session
     */
    @GetMapping("/patient")
    public ModelAndView getAppointmentsByPatient(HttpSession session) {
        Integer patientID = (Integer) session.getAttribute("patientID");
        if (patientID == null) {
            ModelAndView errorView = new ModelAndView("error");
            errorView.addObject("message", "Patient is not logged in.");
            return errorView;
        }

        List<BookAppointment> appointments = bookAppointmentService.getAppointmentsByPatient(patientID);
        ModelAndView modelAndView = new ModelAndView("viewappointments");
        modelAndView.addObject("appointment", appointments);
        return modelAndView;
    }
}
