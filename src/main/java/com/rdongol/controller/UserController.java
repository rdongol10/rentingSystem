package com.rdongol.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rdongol.domain.User;
import com.rdongol.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;

	@RequestMapping(value = "/insertTest", method = RequestMethod.POST)
	public ModelAndView insertTest(HttpServletRequest request) {

		User user = new User();
		user.setFirstName(request.getParameter("firstName"));
		user.setMiddleName(request.getParameter("middleName"));
		user.setLastName(request.getParameter("lastName"));
		user.setPhoneNumber(request.getParameter("phoneNumber"));
		user.setEmailAddress(request.getParameter("email"));
		user.setSex(Integer.valueOf(request.getParameter("sex")));
		user.setLoginName(request.getParameter("userName"));
		user.setPassword(request.getParameter("password"));
		user.setTypeOfUser(Integer.valueOf(request.getParameter("typeOfUser")));

		userService.addUser(user);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("userList");

		return mav;
	}

	@RequestMapping(value = "/listUsers")
	public String listUsers() {
		return "userList";
	}

	@RequestMapping(value = "/addUser")
	public String addUsers() {
		return "addUser";
	}
}
