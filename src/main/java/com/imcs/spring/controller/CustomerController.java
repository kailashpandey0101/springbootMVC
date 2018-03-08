package com.imcs.spring.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.imcs.spring.dao.CustomerDao;
import com.imcs.spring.models.Customer;

@Controller
public class CustomerController {

	@Autowired
	private CustomerDao customerDao;

	@RequestMapping(value = "/addCustomer", method = RequestMethod.POST)
	public String addCustomer(@ModelAttribute(value = "customer") @Valid Customer customer, BindingResult bindingResult,
			Model model) {
		if (bindingResult.hasErrors()) {
			System.out.println(bindingResult.getNestedPath());
			return "addCustomer";
		} else {
			model.addAttribute("customer", new Customer());
			customerDao.save(customer);
			model.addAttribute("successMsg", "Customer added Successfully");
			return "home";
		}
	}

	@RequestMapping("/getAddCustomer")
	public String getCustomerPage(Model model) {
		model.addAttribute("customer", new Customer());
		return "addCustomer";
	}

}
