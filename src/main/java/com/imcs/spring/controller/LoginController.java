package com.imcs.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.imcs.spring.dao.CustomerDao;
import com.imcs.spring.dao.UserDao;
import com.imcs.spring.models.Customer;
import com.imcs.spring.models.User;

@Controller
public class LoginController {

	@Autowired
	private UserDao userDao;

	
	@RequestMapping(value="/login.do",method=RequestMethod.POST)
	public String processLogin(@ModelAttribute User user ,ModelMap model) {
		model.addAttribute("user", new User());
		User user1=userDao.findByUserName(user.getUserName());
		if(user1!=null) {
			return "home";
		}else {
			return "login";
		}
		
	}
	@RequestMapping(value="/signUpUser", method=RequestMethod.POST)
	public String addUser(@ModelAttribute User user, ModelMap model) {
		userDao.save(user);
		model.addAttribute("user", new User());
		model.addAttribute("successMsg", "User Registration Successfull");
		return "login";
	}
	
	
}
