package com.rdongol.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rdongol.dao.UserDao;
import com.rdongol.domain.User;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;

	public List<User> getUserList() {
		return userDao.getAllUsers();
	}

	public boolean addUser(User user) {
		return userDao.create(user);
	}

	public boolean updateUser(User user) {
		return userDao.update(user);
	}

	public boolean removeUser(User user) {
		return userDao.delete(user);
	}

	public User getUser(int id) {
		return userDao.getUser(id);
	}
	
	public boolean doesUserExists(String userName) {
		return userDao.userExists(userName);
	}

}
