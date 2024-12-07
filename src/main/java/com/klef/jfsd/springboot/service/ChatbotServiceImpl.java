package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.RuleBasedChatbot;
import org.springframework.stereotype.Service;

@Service
public class ChatbotServiceImpl implements ChatbotService {

    private final RuleBasedChatbot chatbot;

    public ChatbotServiceImpl() {
        this.chatbot = new RuleBasedChatbot();
    }

    @Override
    public String processUserInput(String userInput) {
        return chatbot.getResponse(userInput);
    }
}
