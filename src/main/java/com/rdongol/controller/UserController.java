package com.rdongol.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rdongol.dao.UserDao;
import com.rdongol.domain.User;

@Controller
public class UserController {

	@Autowired
	private UserDao userDao;
	
	@RequestMapping(value ="/insertTest")
	public String insertTest() {
		User user = new User(1, "rdongol", "rhiyan", "Rabin", "Dongol", "", "9841123023", "rawbean08@gmail.cim", 1, 1);
		System.out.println(user);
		System.out.println(userDao);
		userDao.create(user);
		return "home";
	}
	
	@RequestMapping(value ="/listUsers")
	public String listUsers() {
		return "userList";
	}
	
	@RequestMapping(value ="/addUser")
	public String addUsers() {
		return "addUser";
	}
}
