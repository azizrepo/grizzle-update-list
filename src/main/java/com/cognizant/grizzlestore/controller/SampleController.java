package com.cognizant.grizzlestore.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SampleController {
	
	@GetMapping("message")
	public String message(){
		return "Hello Wolrd";
		
	}

}
