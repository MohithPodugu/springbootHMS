package com.klef.jfsd.springboot.controller;

import com.klef.jfsd.springboot.service.ChatbotService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ChatbotController {

    @Autowired
    private ChatbotService chatbotService;

    @GetMapping("/chatbot")
    public String chatbotPage() {
        return "chatbot";
    }

    @PostMapping("/chatbot")
    public String getChatbotResponse(@RequestParam("userInput") String userInput, Model model) {
        String response = chatbotService.processUserInput(userInput);
        System.out.println("User Input: " + userInput);
        System.out.println("Response: " + response); // Log the response for debugging
        model.addAttribute("userInput", userInput);
        model.addAttribute("response", response);
        return "chatbot";
    }

}
