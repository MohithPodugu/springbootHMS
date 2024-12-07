package com.klef.jfsd.springboot.model;

import java.util.HashMap;
import java.util.Map;
import java.util.ArrayList;
import java.util.List;

public class RuleBasedChatbot {
    private Map<String, String> rules;
    private List<String> conversationHistory;

    public RuleBasedChatbot() {
        rules = new HashMap<>();
        conversationHistory = new ArrayList<>();
        initializeRules();
    }

    private void initializeRules() {
        // Greetings
        rules.put("hello", "Hi! How can I assist you with your pharmacist tasks today?");
        rules.put("hi", "Hello! How can I help you out today?");
        rules.put("good morning", "Good morning! How may I assist you this fine day?");
        rules.put("good evening", "Good evening! How can I help you this evening?");
        
        // Medicine Management
        rules.put("how do I add a new medicine?", "To add a new medicine, just head over to the 'Add Medicine' section.");
        rules.put("how can I view all the medicines?", "You can see the full list of medicines in the 'Medicine List' section.");
        rules.put("how do I delete a medicine?", "To delete a medicine, just select the medicine from the list and choose the delete option.");
        rules.put("how can I update a medicine's details?", "To update a medicine, go to the 'Update Medicine' section and edit the details.");
        rules.put("how do I check the details of a medicine?", "Just select a medicine from the list to view its details, such as dosage, side effects, and usage.");
        
        // Dosage and Usage
        rules.put("what should I do if I miss a dose?", "If you miss a dose, take it as soon as you remember, unless it's nearly time for your next dose.");
        rules.put("what happens if I overdose?", "In case of an overdose, please contact emergency services right away.");
        rules.put("what is the correct dosage for pediatric patients?", "For pediatric dosage, always consult the doctor or refer to the pediatric dosage guidelines.");
        rules.put("can you tell me how to take the medicine?", "Always follow the dosage instructions provided by the doctor or the label on the medicine.");
        
        // Side Effects and Interactions
        rules.put("what are the common side effects of this medicine?", "Common side effects are available in the medicine details. For any severe reactions, please contact a doctor immediately.");
        rules.put("are there any drug interactions I should be aware of?", "It's best to avoid combining medicines that could interact. Please refer to the drug interaction guide for more details.");
        rules.put("is this medicine safe during pregnancy?", "Only take medications prescribed by your doctor during pregnancy.");
        rules.put("can I take this medicine while breastfeeding?", "You should always consult your doctor before taking any medicine while breastfeeding.");
        
        // Storage and Handling
        rules.put("how should I store this medicine?", "Store medicines in a cool, dry place and away from sunlight. Some medicines may need to be refrigerated.");
        rules.put("what should I do with expired medicine?", "Expired medicines should not be used. They should be disposed of properly.");
        
        // Prescriptions and Refills
        rules.put("how can I validate a prescription?", "Make sure the prescription is properly authorized and check its validity before proceeding.");
        rules.put("how do I refill a prescription?", "To refill a prescription, simply submit the original prescription at the pharmacy.");
        
        // Insurance and Payment
        rules.put("is this medicine covered by insurance?", "To confirm if the medicine is covered, check with your insurance provider for more details.");
        rules.put("what payment options do you accept?", "We accept credit/debit cards, cash, and digital payment methods for your convenience.");
        
        // Vaccinations
        rules.put("can you tell me the vaccination schedule?", "Vaccination schedules can vary based on age and medical condition. Please refer to the immunization guide for more details.");
        rules.put("are the vaccines available right now?", "Please check the 'Vaccine Availability' section for updates on stock and availability.");
        
        // Other Queries
        rules.put("how can I identify this pill?", "To identify a pill, please provide its shape, color, and any markings on it.");
        rules.put("are there generic alternatives to this medicine?", "Yes, most medicines have generic alternatives. You can check with the supplier for available options.");
        rules.put("can I get this medicine over the counter?", "For minor ailments, some medicines may be available without a prescription. Please check with the pharmacist.");
        rules.put("what new medicines have arrived?", "Check the 'New Arrivals' section to see the latest medicines we've stocked.");
        rules.put("what should I do if this medicine is recalled?", "In case of a recall, please refer to the announcements section for important details and safety instructions.");
        
        // Default Response
        rules.put("default", "I'm sorry, I didn't quite understand that. Could you please rephrase your question?");
    }

    public String getResponse(String userInput) {
        userInput = userInput.toLowerCase().trim();
        String response = rules.getOrDefault(userInput, rules.get("default"));
        
        // Store the conversation
        conversationHistory.add("User: " + userInput);
        conversationHistory.add("Chatbot: " + response);
        
        return response;
    }
    
    public List<String> getConversationHistory() {
        return conversationHistory;
    }
}
