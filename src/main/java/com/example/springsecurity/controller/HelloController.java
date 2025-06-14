package com.example.springsecurity.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    
    private static final Logger logger = LoggerFactory.getLogger(HelloController.class);

    @GetMapping("/welcome")
    public String sayHello(){
        logger.trace("TRACE: Entering sayHello method");
        logger.debug("DEBUG: Processing sayHello request");
        logger.info("INFO: sayHello method called");
        
        String response = "Welcome to Spring Security with spring security .";
        
        logger.trace("TRACE: Exiting sayHello method with response: {}", response);
        return response;
    }
}
