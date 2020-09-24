package com.example.employeeApp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@EnableAutoConfiguration
@SpringBootApplication
public class EmployeeAppApplication {
	
	@RequestMapping("/APIAutomationDemo")
	String home() {
	return "Hello, all API tests were successful";

	}
	public static void main(String[] args) {
		SpringApplication.run(EmployeeAppApplication.class, args);
	}

}
