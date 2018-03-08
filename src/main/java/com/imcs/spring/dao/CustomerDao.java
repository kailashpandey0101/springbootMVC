package com.imcs.spring.dao;

import org.springframework.data.repository.CrudRepository;

import com.imcs.spring.models.Customer;

public interface CustomerDao extends CrudRepository<Customer, String> {

}
