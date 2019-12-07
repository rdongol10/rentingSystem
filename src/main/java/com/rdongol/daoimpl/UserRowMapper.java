package com.rdongol.daoimpl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.rdongol.domain.User;

public class UserRowMapper implements RowMapper<User> {

	@Override
	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user = new User();
		user.setId(rs.getInt("id"));
		user.setLoginName(rs.getString("login_name"));
		user.setPassword(rs.getString("password"));
		user.setLastName(rs.getString("last_name"));
		user.setFirstName(rs.getString("first_name"));
		user.setMiddleName(rs.getString("middle_name"));
		user.setPhoneNumber(rs.getString("phone_number"));
		user.setEmailAddress(rs.getString("email_address"));
		user.setSex(rs.getInt("sex"));
		user.setTypeOfUser(rs.getInt("type_of_use"));

		return user;
	}

}
