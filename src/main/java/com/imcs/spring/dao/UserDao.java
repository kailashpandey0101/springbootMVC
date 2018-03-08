package com.imcs.spring.dao;

import org.springframework.data.repository.CrudRepository;

import com.imcs.spring.models.User;

public interface UserDao extends CrudRepository<User, String> {

	User findByUserName(String userName);

}
