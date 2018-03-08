package com.imcs.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.imcs.spring.models.User;

@Controller
public class WelcomeController {

	@GetMapping("/")
	public String welcomePage() {
		return "index";
	}
	
	@GetMapping("/getLogin")
	public String loginController(Model model) {
		model.addAttribute("user",new User());
		return "login";
	}
	
	@GetMapping("/getSignUp")
	public String signUpController(Model model) {
		model.addAttribute("user",new User());
		return "signUp";
	}
}
