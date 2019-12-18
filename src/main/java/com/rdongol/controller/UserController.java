package com.rdongol.controller;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.rdongol.domain.User;
import com.rdongol.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;

	@RequestMapping(value = "/insertUser", method = RequestMethod.POST)
	public ModelAndView insertUser(HttpServletRequest request) {

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

		return listUsers();
	}
	

	@RequestMapping(value = "/editUser", method = RequestMethod.POST)
	public ModelAndView editUser(HttpServletRequest request) {

		User user = userService.getUser(Integer.valueOf(request.getParameter("id")));
		
		user.setFirstName(request.getParameter("firstName"));
		user.setMiddleName(request.getParameter("middleName"));
		user.setLastName(request.getParameter("lastName"));
		user.setPhoneNumber(request.getParameter("phoneNumber"));
		user.setEmailAddress(request.getParameter("email"));
		user.setSex(Integer.valueOf(request.getParameter("sex")));
		user.setLoginName(request.getParameter("userName"));
		user.setTypeOfUser(Integer.valueOf(request.getParameter("typeOfUser")));

		userService.updateUser(user);

		return listUsers();
	}
	
	@RequestMapping(value = "/listUsers")
	public ModelAndView listUsers() {
		ModelAndView mav = new ModelAndView();
		List<User> users = userService.getUserList();
		mav.addObject("users", users);
		mav.setViewName("userList");

		return mav;
	}

	@RequestMapping(value = "/addUser")
	public String addUsers() {
		return "addUser";
	}

	@ResponseBody
	@RequestMapping(value = "/userNameExists")
	public String doesUserNameExists(HttpServletRequest request) {
		
		Map<String, String> responseMap = new LinkedHashMap<String, String>();
		String userName = request.getParameter("username");
		responseMap.put("UserExists", String.valueOf(userService.doesUserExists(userName)));

		Gson gson = new Gson();

		return gson.toJson(responseMap);
	}
	
	@RequestMapping(value = "/updateUser/{userId}")
	public ModelAndView findUserByIdForUpdate(ModelAndView model, @PathVariable("userId") int userId) {
		
		User user = userService.getUser(userId);
		model.addObject("user", user);
		model.setViewName("addUser");
		return model;

	}
	
	@RequestMapping(value = "/deleteUser/{userId}")
	public ModelAndView deleteUser(ModelAndView model, @PathVariable("userId") int userId) {
		User user = userService.getUser(userId);
		userService.removeUser(user);
		return listUsers();
	}

}
